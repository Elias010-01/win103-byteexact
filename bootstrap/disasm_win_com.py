#!/usr/bin/env python3
"""Disassemble WIN.COM with Capstone (16-bit x86) and produce a readable
listing that splits CODE vs DATA regions.

Strategy:
  1. Entry point at offset 0 is JMP target -> follow flow with a worklist
  2. Track INT calls, near/far jumps, calls
  3. Anything not reached by flow is DATA -> emit as `db` blocks
  4. Identify ASCII strings inside data sections automatically
"""
from pathlib import Path
import capstone as cs
import struct
import sys

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
SRC_WIN = ROOT / "src" / "WIN"
SRC_WIN.mkdir(parents=True, exist_ok=True)

data = (TMP / "WIN.COM").read_bytes()
SIZE = len(data)
print(f"WIN.COM: {SIZE} bytes")

md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_16)
md.detail = True

# ----- Flow analysis: mark code bytes -----
is_code = bytearray(SIZE)  # 1 if reached as code

# Entry: 16-bit JMP at offset 0
e9 = data[0]
if e9 != 0xE9:
    print(f"WARN: file doesn't start with JMP near (0x{e9:02X})")
entry = 3 + struct.unpack("<h", data[1:3])[0]
print(f"Entry: 0x{entry:04X}")

# Also mark common data sections: bytes 3 .. entry usually are strings/tables
# (the JMP at offset 0 skips them)
print(f"Pre-entry data: bytes 0x0003 .. 0x{entry-1:04X}  ({entry-3}B)")

worklist = [entry]
seen_branches = set()

# Heuristic: also treat any near-CALL target as code entry
# We'll discover those as we disassemble.

def disasm_one(off):
    """Try to disassemble a single instruction at off. Returns (insn, length) or (None, 0)."""
    if off >= SIZE:
        return None, 0
    try:
        # COM file is loaded at CS:0100, so virtual addr = 0x100 + off
        for i in md.disasm(data[off:off+15], 0x100 + off):
            return i, i.size
    except Exception:
        pass
    return None, 0


def is_terminator(mnem):
    return mnem in ("ret", "retn", "retf", "iret", "iretd", "jmp", "hlt")


while worklist:
    pc = worklist.pop()
    if pc < 0 or pc >= SIZE or is_code[pc]:
        continue
    while pc < SIZE and not is_code[pc]:
        insn, sz = disasm_one(pc)
        if insn is None or sz == 0:
            break
        # Mark bytes as code
        for k in range(sz):
            if pc + k < SIZE:
                is_code[pc + k] = 1
        mnem = insn.mnemonic
        # Handle branches
        if mnem in ("call", "jmp") or mnem.startswith("j"):
            # Try to resolve target if it's an immediate
            if insn.operands and insn.operands[0].type == cs.x86.X86_OP_IMM:
                tgt_va = insn.operands[0].imm
                tgt_off = tgt_va - 0x100
                if 0 <= tgt_off < SIZE and not is_code[tgt_off]:
                    worklist.append(tgt_off)
        if is_terminator(mnem):
            break
        pc += sz

code_bytes = sum(is_code)
print(f"\nFlow analysis: {code_bytes}/{SIZE} bytes reached as code ({code_bytes*100//SIZE}%)")
print(f"Remaining DATA: {SIZE - code_bytes} bytes")

# ----- Identify data runs -----
runs_code = []  # (start, end) inclusive of code-only
runs_data = []
i = 0
while i < SIZE:
    j = i
    flag = is_code[i]
    while j < SIZE and is_code[j] == flag:
        j += 1
    if flag:
        runs_code.append((i, j-1))
    else:
        runs_data.append((i, j-1))
    i = j

print(f"\nRuns: {len(runs_code)} code, {len(runs_data)} data")
print("\nData runs (potential bitmap/strings):")
for (s, e) in sorted(runs_data, key=lambda r: -(r[1]-r[0]))[:15]:
    sz = e - s + 1
    sample = data[s:s+12].hex(' ')
    # Try to detect ASCII string
    block = data[s:e+1]
    ascii_runs = []
    cur = []
    for b in block:
        if 0x20 <= b < 0x7F or b in (0x09, 0x0A, 0x0D):
            cur.append(b)
        else:
            if len(cur) >= 4:
                ascii_runs.append(bytes(cur).decode('ascii', errors='replace'))
            cur = []
    if len(cur) >= 4:
        ascii_runs.append(bytes(cur).decode('ascii', errors='replace'))
    note = ""
    if ascii_runs:
        note = f"  | strings: {ascii_runs[:3]}"
    elif sz > 100:
        # Could be a bitmap
        bits = sum(bin(b).count('1') for b in block)
        density = bits / (sz * 8)
        note = f"  | density={density:.2f}  ({sz}B)  -- POTENTIAL BITMAP?"
    print(f"  0x{s:04X}..0x{e:04X}  ({sz:>4}B)  {sample}  ...{note}")

# ----- Emit readable .asm -----
out_lines = [
    "; ============================================================",
    "; WIN.COM - Windows 1.03 boot loader / splash screen displayer",
    "; ============================================================",
    "; Disassembled from original/WIN.COM by bootstrap/disasm_win_com.py",
    "; Origin: CS:0100 (DOS .COM)",
    f"; File size: {SIZE} bytes  ({code_bytes} code, {SIZE-code_bytes} data)",
    f"; Entry: 0x{entry:04X} (JMP from offset 0)",
    ";",
    "; THE BYTES ARE THE AUTHORITY. The instruction text below is what",
    "; Capstone disassembled; it may be wrong in some cases. The `;[bytes]`",
    "; comments preserve every byte exactly for byte-exact reassembly.",
    "; ============================================================",
    "",
    "        .8086",
    "_TEXT   SEGMENT BYTE PUBLIC 'CODE'",
    "        ASSUME  cs:_TEXT, ds:_TEXT, ss:_TEXT, es:_TEXT",
    "        ORG     100h",
    "",
    "win_com_start:",
]


def emit_data_block(start, end):
    """Emit a data block as db lines, identifying strings."""
    out_lines.append(f"; -- data 0x{start:04X}..0x{end:04X} ({end-start+1}B) --")
    block = data[start:end+1]
    # Walk and emit either strings or hex bytes
    i = 0
    while i < len(block):
        # Detect run of printable ASCII >= 4 chars
        run_end = i
        while run_end < len(block) and 0x20 <= block[run_end] < 0x7F:
            run_end += 1
        if run_end - i >= 4:
            s = block[i:run_end].decode('ascii').replace("'", "''")
            out_lines.append(f"d_{start+i:04X}:  db '{s}'                    ;[{block[i:run_end].hex(' ')}]")
            i = run_end
        else:
            # Hex byte run up to next printable >= 4 chars OR end
            chunk_end = min(i + 16, len(block))
            chunk = block[i:chunk_end]
            hex_str = ', '.join(f"{b:02X}h" for b in chunk)
            out_lines.append(f"        db {hex_str}")
            i = chunk_end


def emit_code_block(start, end):
    """Disassemble and emit code block."""
    out_lines.append(f"; -- code 0x{start:04X}..0x{end:04X} ({end-start+1}B) --")
    off = start
    while off <= end:
        insn, sz = disasm_one(off)
        if insn is None or sz == 0 or off + sz - 1 > end:
            # Fall back to db
            chunk = data[off:end+1]
            out_lines.append(f"        db {', '.join(f'{b:02X}h' for b in chunk)}")
            break
        byts = data[off:off+sz].hex(' ')
        addr = 0x100 + off
        out_lines.append(f"L_{off:04X}: {insn.mnemonic:<6} {insn.op_str:<28}    ;[{byts}]  @ {addr:04X}h")
        off += sz


# Walk all runs in order
all_runs = sorted([(s, e, 'C') for (s, e) in runs_code] +
                  [(s, e, 'D') for (s, e) in runs_data])
for s, e, kind in all_runs:
    if kind == 'C':
        emit_code_block(s, e)
    else:
        emit_data_block(s, e)

out_lines.append("")
out_lines.append("_TEXT   ENDS")
out_lines.append("        END  win_com_start")
out_lines.append("")

asm_path = SRC_WIN / "WIN.asm"
asm_path.write_text("\n".join(out_lines), encoding='ascii', errors='replace')
print(f"\n-> Wrote {asm_path.relative_to(ROOT)} ({len(out_lines)} lines)")

# Also write a quick summary
summary = SRC_WIN / "README.md"
summary.write_text(
    "# WIN.COM source\n\n"
    f"Disassembled from `original/WIN.COM` ({SIZE} bytes).\n\n"
    f"- {code_bytes} bytes ({code_bytes*100//SIZE}%) reached by flow analysis -> code\n"
    f"- {SIZE - code_bytes} bytes -> data (strings, tables, possibly the splash bitmap)\n\n"
    "Run `python bootstrap/disasm_win_com.py` to regenerate.\n"
)
print(f"-> Wrote {summary.relative_to(ROOT)}")
