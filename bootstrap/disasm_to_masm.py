#!/usr/bin/env python3
"""disasm_to_masm.py

Convert the Capstone disassembly of WIN.COM into a MASM 4.00-reassemblable
source where as many instructions as possible appear as real mnemonics
(`mov ax, 5758h`) instead of raw `db` directives, while still producing a
byte-exact OBJ.

Algorithm:

  1. Read original/WIN.COM (4873 B) and run reachability flow analysis
     starting from the entry-point JMP at offset 0 (re-using the same
     logic as bootstrap/disasm_win_com.py).
  2. Identify branch-target labels (`L_XXXX:`) and data labels
     (`d_XXXX:`) for cleaner output.
  3. For every code byte, emit a MASM-formatted instruction line; for
     every data byte, emit `db`.
  4. Translate Capstone syntax (`0x123`, `[0x100]`, `0xff`) to MASM 4.00
     syntax (`123h`, `[100h]`, `0FFh`).
  5. Run MASM 4.00 on the candidate source via DOSBox-X (single batch
     job, ~10 s).
  6. Parse the OBJ LEDATA and compare bytes to the original.
  7. For every differing byte, locate which Capstone instruction owns
     that offset and mark it for `db` fallback.
  8. Re-emit the source with marked instructions converted to `db` (the
     original bytes preserved, the disasm kept as a comment).
  9. Repeat 5-8 until the OBJ matches the original byte-for-byte (or
     until no progress is made).

Output:  src/WIN/seg1_real.asm   <- MASM source with real instructions
         src/WIN/seg1_real.json  <- coverage report (real-insn ratio)

The original src/WIN/seg1.asm (pure `db` reference) is kept untouched.
"""
from __future__ import annotations

import json
import os
import re
import shutil
import struct
import subprocess
import sys
from pathlib import Path

import capstone as cs

ROOT = Path(__file__).resolve().parent.parent
ORIG = ROOT / "original"
SRC_WIN = ROOT / "src" / "WIN"
TOOLS_DOS = ROOT / "tools" / "dos"
WORK = TOOLS_DOS / "work" / "disasm_to_masm"
COMBINED = TOOLS_DOS / "combined"


# ----------------------------------------------------------------------
# 1. Flow analysis (same approach as bootstrap/disasm_win_com.py)
# ----------------------------------------------------------------------

def flow_analyze(data: bytes):
    """Return (is_code: bytearray, branch_targets: set[int], entry: int).

    `branch_targets` contains file offsets that are reachable as the
    target of jcc/jmp/call (i.e. need a code label).
    """
    SIZE = len(data)
    is_code = bytearray(SIZE)
    branch_targets: set[int] = set()
    if data[0] != 0xE9:
        raise RuntimeError("WIN.COM does not start with JMP near (E9)")
    entry = 3 + struct.unpack("<h", data[1:3])[0]
    branch_targets.add(entry)
    md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_16)
    md.detail = True
    worklist = [entry]
    while worklist:
        pc = worklist.pop()
        if pc < 0 or pc >= SIZE or is_code[pc]:
            continue
        while pc < SIZE and not is_code[pc]:
            try:
                insn = next(md.disasm(data[pc:pc + 15], 0x100 + pc), None)
            except StopIteration:
                insn = None
            if insn is None or insn.size == 0:
                break
            for k in range(insn.size):
                if pc + k < SIZE:
                    is_code[pc + k] = 1
            mnem = insn.mnemonic
            if mnem in ("call", "jmp") or (
                    mnem.startswith("j") and mnem != "jmp"):
                if insn.operands and \
                        insn.operands[0].type == cs.x86.X86_OP_IMM:
                    tgt_va = insn.operands[0].imm
                    tgt_off = tgt_va - 0x100
                    if 0 <= tgt_off < SIZE:
                        branch_targets.add(tgt_off)
                        if not is_code[tgt_off]:
                            worklist.append(tgt_off)
            if mnem in ("ret", "retn", "retf", "iret", "iretd",
                        "jmp", "hlt"):
                break
            pc += insn.size
    return is_code, branch_targets, entry


# ----------------------------------------------------------------------
# 2. Capstone syntax -> MASM 4.00 syntax
# ----------------------------------------------------------------------

_HEX_RE = re.compile(r"\b0x([0-9a-fA-F]+)\b")

# Capstone often emits string-op mnemonics with explicit operands
# ('lodsb al, byte ptr [si]'), but MASM 4.0 wants the bare mnemonic
# because the source/dest registers are implicit. We strip operands for
# these mnemonics. Note 'movs', 'cmps', 'scas' come in -b/-w forms only
# in MASM 4.0; the bare 'movs' etc. are 8086 too.
_IMPLICIT_OPERAND_MNEMS = {
    "lodsb", "lodsw",
    "stosb", "stosw",
    "movsb", "movsw",
    "cmpsb", "cmpsw",
    "scasb", "scasw",
    "ins", "insb", "insw",  # 80186+
    "outs", "outsb", "outsw",
    "xlatb", "xlat",
}


def _hex_to_masm(value_hex: str) -> str:
    """'5758' -> '5758h', 'ff' -> '0FFh', 'a' -> '0Ah'."""
    v = value_hex.lstrip("0") or "0"
    # Uppercase for readability
    v = v.upper()
    # MASM requires leading 0 if first char is a hex letter
    if v[0] in "ABCDEF":
        v = "0" + v
    return v + "h"


def _byte_to_masm(b: int) -> str:
    """Format a byte for MASM `db` directives.
    Always produces something MASM 4.0 accepts:
      0..0x9F  -> '00h'..'9Fh'
      0xA0..0xFF -> '0A0h'..'0FFh' (leading 0 because first char is a letter)
    """
    h = f"{b:02X}"
    if h[0] in "ABCDEF":
        return f"0{h}h"
    return f"{h}h"


def translate_op_str(op_str: str, branch_target_offsets: set[int],
                     is_branch_op: bool) -> str:
    """Translate a Capstone op_str to MASM 4.00 syntax.

    `branch_target_offsets` holds file offsets that have a code label
    (`L_XXXX`). When the instruction is a branch (is_branch_op=True) and
    the immediate corresponds to a known branch target, we replace it
    with the label name; otherwise we keep it as a raw hex constant.
    """
    def repl(match: re.Match) -> str:
        hexv = match.group(1)
        val = int(hexv, 16)
        if is_branch_op:
            tgt_off = val - 0x100
            if tgt_off in branch_target_offsets:
                return f"L_{tgt_off:04X}"
        return _hex_to_masm(hexv)

    out = _HEX_RE.sub(repl, op_str)
    # Insert explicit `ds:` segment override before bracketed hex
    # constants to disambiguate memory references in MASM 4.0. Without
    # the override, MASM raises "error 56: No immediate mode" because
    # it can't figure out whether `[100h]` is a memory operand or a
    # forward reference to a (non-existent) symbol named '100h'.
    # Only patch brackets that don't already have a segment override.
    out = re.sub(
        r"(?<![:\w])\[([0-9A-F]+h)\]",
        r"ds:[\1]",
        out)
    return out


# Mnemonic synonyms: Capstone -> MASM 4.00.
_MNEM_FIX = {
    "retn": "ret",       # MASM accepts both but ret is canonical
}


def fix_mnem(m: str) -> str:
    return _MNEM_FIX.get(m, m)


_BRANCH_MNEMS = {"call", "jmp", "ja", "jae", "jb", "jbe", "jc", "jcxz",
                 "je", "jg", "jge", "jl", "jle", "jna", "jnae", "jnb",
                 "jnbe", "jnc", "jne", "jng", "jnge", "jnl", "jnle",
                 "jno", "jnp", "jns", "jnz", "jo", "jp", "jpe", "jpo",
                 "js", "jz", "loop", "loope", "loopne", "loopnz",
                 "loopz"}


# Mnemonics whose Capstone form is hard to round-trip in MASM 4.0 -- we
# emit them as db up-front instead of trying. Conservative list: better
# to emit a few extra db lines than to fight 30 different MASM error
# messages. The disasm comment is kept for readability.
_FORCE_DB_MNEMS = {
    # Far call/jmp via memory:  Capstone emits 'lcall ss:[278h]' or
    # 'ljmp far cs:[xxx]', which MASM 4.0 spells 'call dword ptr ss:[278h]'
    # but the syntax is ambiguous. Easier to fall back to db.
    "lcall", "ljmp",
    # 80186/80286 instructions that don't exist in MASM 4.0 / 8086 mode
    # (push imm16, etc.). These shouldn't appear in WIN 1.03 anyway but
    # mark just in case.
    "enter", "leave", "pusha", "popa",
}


def _is_capstone_str_op_with_operands(mnem: str, op_str: str) -> bool:
    """Capstone emits string operations with operands ('lodsb al, byte
    ptr [si]') and combined REP-prefix forms ('rep movsb byte ptr es:[di],
    byte ptr [si]'). MASM 4.0 wants the bare mnemonic with no operands.
    """
    base = mnem.split()[-1] if " " in mnem else mnem
    return base in _IMPLICIT_OPERAND_MNEMS


# ----------------------------------------------------------------------
# 3. Build the MASM source from the disassembly
# ----------------------------------------------------------------------

def disasm_instructions(data: bytes, is_code: bytearray):
    """Yield (file_off, size, mnemonic, op_str, raw_bytes) for every
    instruction, walking only over byte ranges marked as code."""
    md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_16)
    md.detail = True
    SIZE = len(data)
    off = 0
    while off < SIZE:
        if not is_code[off]:
            # Skip data run
            j = off
            while j < SIZE and not is_code[j]:
                j += 1
            yield ("data", off, j - off, data[off:j])
            off = j
            continue
        # Code run
        j = off
        while j < SIZE and is_code[j]:
            j += 1
        # Disassemble within [off..j)
        run_data = data[off:j]
        run_va = 0x100 + off
        cur = 0
        while cur < len(run_data):
            insn = next(md.disasm(run_data[cur:cur + 15], run_va + cur),
                        None)
            if insn is None or insn.size == 0:
                # Should not happen if flow_analyze marked correctly,
                # but emit raw bytes just in case.
                yield ("code-fallback", off + cur, 1, run_data[cur:cur + 1])
                cur += 1
                continue
            yield ("code", off + cur, insn.size,
                   run_data[cur:cur + insn.size], insn.mnemonic, insn.op_str)
            cur += insn.size
        off = j


def emit_masm_source(data: bytes, is_code: bytearray,
                     branch_targets: set[int],
                     fallback_offsets: set[int]) -> tuple[str, list[dict]]:
    """Build a MASM 4.00 source string from the disasm.

    `fallback_offsets` is a set of file offsets at which the corresponding
    Capstone instruction MUST be emitted as `db <bytes>` (because MASM
    re-encoded it differently in a previous iteration, or rejected the
    syntax with a parse error).

    Returns (source_text, items) where `items` is a per-instruction list
    suitable for byte-offset -> instruction mapping. Each item carries a
    `line_idx` (1-based MASM source line number) so MASM error messages
    of the form 'WINREAL.ASM(NN) : error ...' can be mapped back to the
    file offset that owns the offending bytes.
    """
    lines = [
        "; ============================================================",
        "; src/WIN/seg1_real.asm  --  AUTO-GENERATED by",
        ";   bootstrap/disasm_to_masm.py",
        ";",
        "; Byte-exact MASM 4.00 source for original/WIN.COM (4873 B). The",
        "; bulk of executable code appears as real instructions; only",
        "; instructions whose MASM 4.00 encoding differs from the shipped",
        "; bytes (or which cross-reference data in opaque ways) fall back",
        "; to `db <bytes>` directives. This file is verified byte-exact",
        "; via bootstrap/analyze/verify_flat_com_via_masm.py.",
        "; ============================================================",
        "",
        "        .8086",
        "WIN_SEG1 SEGMENT BYTE PUBLIC 'CODE'",
        "        ASSUME cs:WIN_SEG1, ds:WIN_SEG1, ss:WIN_SEG1, es:WIN_SEG1",
        "",
    ]
    items = []  # one entry per emitted line that owns ranges of bytes
    for entry in disasm_instructions(data, is_code):
        kind = entry[0]
        if kind == "data":
            _, off, sz, raw = entry
            lines.append(f"; -- data 0x{off:04X}..0x{off + sz - 1:04X} ({sz}B) --")
            line_idx = len(lines) + 1  # 1-based, points at first db line
            _emit_db_block(lines, off, raw)
            items.append({"kind": "data", "off": off, "size": sz,
                          "line_idx": line_idx})
            continue
        if kind == "code-fallback":
            _, off, sz, raw = entry
            label = ""
            if off in branch_targets:
                label = f"L_{off:04X}: "
            hex_str = ", ".join(_byte_to_masm(b) for b in raw)
            lines.append(f"{label}        db {hex_str}")
            items.append({"kind": "db", "off": off, "size": sz,
                          "line_idx": len(lines)})
            continue
        # kind == "code"
        _, off, sz, raw, mnem, op_str = entry
        label = ""
        if off in branch_targets:
            label = f"L_{off:04X}:"
        hex_str = ", ".join(_byte_to_masm(b) for b in raw)
        if off in fallback_offsets:
            # Emit as db with disasm comment (<=120 chars)
            line = f"{label:<10}db {hex_str:<48} ; {mnem} {op_str}"
            if len(line) > 120:
                line = line[:117] + "..."
            lines.append(line)
            items.append({"kind": "db-forced", "off": off, "size": sz,
                          "disasm": f"{mnem} {op_str}",
                          "line_idx": len(lines)})
            continue
        masm_mnem_full = fix_mnem(mnem)   # may be 'rep movsb', 'repne scasb'
        masm_mnem_base = masm_mnem_full.split()[-1]
        is_branch = masm_mnem_base in _BRANCH_MNEMS
        # Pre-classify "MASM 4.0 can't parse this Capstone form" cases:
        # emit as db up-front so we don't waste DOSBox-X iterations.
        force_db = (
            masm_mnem_base in _FORCE_DB_MNEMS or
            # Capstone emits orphan 'ptr' (no byte/word/dword qualifier)
            # for lds/les/lfs etc. -- MASM 4.0 won't parse it.
            re.search(r"(?<![a-z])ptr ", op_str) and
            not re.search(r"\b(byte|word|dword|qword|fword|tbyte) ptr",
                          op_str)
        )
        if force_db:
            line = (f"{label:<10}db {hex_str:<48} "
                    f"; (force-db) {mnem} {op_str}")
            if len(line) > 120:
                line = line[:117] + "..."
            lines.append(line)
            items.append({"kind": "db-forced", "off": off, "size": sz,
                          "disasm": f"{mnem} {op_str}",
                          "line_idx": len(lines)})
            continue
        if _is_capstone_str_op_with_operands(masm_mnem_full, op_str):
            # MASM 4.0 wants the bare mnemonic ('lodsb', 'rep movsb'),
            # not the explicit operands form Capstone produces.
            masm_op = ""
        else:
            masm_op = translate_op_str(op_str, branch_targets, is_branch)
        # MASM 4.0 picks the larger encoding by default for forward jmps,
        # so `EB xx` (jmp short, 2 bytes) becomes `E9 xx xx` (jmp near,
        # 3 bytes). Force `short` keyword when the original was 2-byte.
        if masm_mnem_base == "jmp" and sz == 2 and raw[0] == 0xEB:
            masm_op = f"short {masm_op}"
        # Same idea for forward `call` short encodings: 8086 doesn't
        # have a 2-byte CALL though, so no extra fix needed there.
        # Keep the line under MASM 4.0's silent 128-char truncation
        # threshold (use <=120 to leave headroom).
        bytes_comment = " ".join(f"{b:02X}" for b in raw)
        line = (f"{label:<10}{masm_mnem_full:<10}"
                f"{masm_op:<32} ; [{bytes_comment}]")
        if len(line) > 120:
            line = line[:117] + "..."
        lines.append(line)
        items.append({"kind": "insn", "off": off, "size": sz,
                      "mnem": masm_mnem_full, "op_str": masm_op,
                      "line_idx": len(lines)})
    lines.append("")
    lines.append("WIN_SEG1 ENDS")
    lines.append("        END")
    lines.append("")
    return "\n".join(lines), items


def _emit_db_block(lines: list[str], start: int, block: bytes) -> None:
    """Emit data bytes as `db` lines, identifying ASCII strings >= 4 chars.

    MASM 4.0 silently truncates source lines at 128 characters, which
    corrupts long string literals (an unbalanced `'` then turns the
    rest of the file into one giant phantom string and MASM reports
    bogus 'Open procedures' / 'open conditionals' errors). Always keep
    each emitted source line under 120 characters by:

      * splitting long ASCII runs into multiple `db '...'` lines (one
        per <= 64-char chunk);
      * keeping the trailing hex `[...]` comment short or omitted.
    """
    MAX_STR_CHUNK = 60      # MASM string literal chunk
    MAX_LINE = 120          # source line budget (well under MASM's 128)
    i = 0
    while i < len(block):
        run_end = i
        while run_end < len(block) and 0x20 <= block[run_end] < 0x7F:
            run_end += 1
        run_len = run_end - i
        if run_len >= 4:
            # Emit ASCII run as a sequence of `db '...'` chunks
            j = i
            first = True
            while j < run_end:
                k = min(j + MAX_STR_CHUNK, run_end)
                s = block[j:k].decode("ascii").replace("'", "''")
                label = f"d_{start + j:04X}: " if first else "        "
                line = f"{label}db '{s}'"
                if len(line) > MAX_LINE:
                    # Should not happen with MAX_STR_CHUNK=60, but be safe.
                    line = line[:MAX_LINE]
                lines.append(line)
                first = False
                j = k
            i = run_end
        else:
            chunk_end = min(i + 16, len(block))
            chunk = block[i:chunk_end]
            hex_str = ", ".join(_byte_to_masm(b) for b in chunk)
            lines.append(f"        db {hex_str}")
            i = chunk_end


# ----------------------------------------------------------------------
# 4. Assemble via MASM 4.00 inside DOSBox-X and compare to original
# ----------------------------------------------------------------------

def _winpath_to_wsl(p: Path) -> str:
    s = str(p.resolve()).replace("\\", "/")
    if len(s) >= 2 and s[1] == ":":
        return f"/mnt/{s[0].lower()}{s[2:]}"
    return s


_LST_ERR_RE = re.compile(
    r"^WINREAL\.ASM\((\d+)\)\s*:\s*error\s+(\d+):", re.IGNORECASE)


def parse_masm_errors(lst_text: str) -> list[tuple[int, int, str]]:
    """Return a list of (source_line, error_code, message) for every
    'WINREAL.ASM(NN) : error MM: ...' line in the MASM 4.0 .LST."""
    out = []
    for ln in lst_text.splitlines():
        m = _LST_ERR_RE.match(ln.strip())
        if m:
            out.append((int(m.group(1)), int(m.group(2)), ln.strip()))
    return out


def assemble_via_masm(asm_text: str) -> tuple[bytes | None, str]:
    """Stage asm_text in tools/dos/work/disasm_to_masm/, run MASM 4.00 in
    a single DOSBox-X session, and return (LEDATA bytes or None, LST
    text) so the caller can inspect MASM error messages."""
    if WORK.exists():
        shutil.rmtree(WORK)
    WORK.mkdir(parents=True)
    for tool in ("MASM.EXE", "LINK.EXE"):
        src = COMBINED / tool
        if src.exists():
            shutil.copy2(src, WORK / tool)
    short = "WINREAL"
    (WORK / f"{short}.ASM").write_text(asm_text, encoding="ascii",
                                       errors="replace")
    bat = "\r\n".join([
        "@echo off",
        f"MASM {short}, {short}.OBJ, {short}.LST; > {short}_M.LOG",
        f"if errorlevel 1 echo MASM_FAIL >> {short}_M.LOG",
        "",
    ])
    (WORK / "BUILD.BAT").write_text(bat, encoding="ascii")
    cmd = ["wsl", "--", "bash",
           _winpath_to_wsl(TOOLS_DOS / "dosbuild.sh"),
           _winpath_to_wsl(WORK), "BUILD.BAT"]
    try:
        subprocess.run(cmd, capture_output=True, text=True, timeout=120)
    except subprocess.TimeoutExpired:
        print("ERR: MASM under DOSBox-X timed out")
        return None, ""
    lst_path = WORK / f"{short}.LST"
    lst_text = lst_path.read_text(encoding="ascii", errors="replace") \
        if lst_path.exists() else ""
    obj_path = WORK / f"{short}.OBJ"
    if not obj_path.exists():
        return None, lst_text
    # Re-use parse_obj_ledata from build_from_source
    sys.path.insert(0, str(ROOT / "bootstrap"))
    from build_from_source import parse_obj_ledata  # noqa: E402
    return parse_obj_ledata(obj_path.read_bytes()), lst_text


def find_offending_offsets(items: list[dict],
                           orig_bytes: bytes,
                           obj_bytes: bytes,
                           batch_limit: int = 1) -> set[int]:
    """Find instructions whose MASM 4.00 output differs from the original.

    We only mark up to `batch_limit` instructions per call, starting from
    the FIRST divergence. The reason: when MASM emits an instruction with
    a different length than the original, every subsequent byte is shifted
    in the OBJ stream, so a naive bytewise diff would attribute many
    spurious mismatches to instructions that are actually correct. Marking
    just the first diff instruction per iteration converges reliably.
    """
    # Map every original file offset to the item that owns it
    off_to_item = {}
    for it in items:
        for k in range(it["size"]):
            off_to_item[it["off"] + k] = it
    n = min(len(orig_bytes), len(obj_bytes))
    bad: list[int] = []
    for i in range(n):
        if obj_bytes[i] != orig_bytes[i]:
            it = off_to_item.get(i)
            if it is None or it["kind"] != "insn":
                # Either past end of items, or item is already a db /
                # data block. The latter would indicate a real bug
                # elsewhere; just stop and let caller see the diff.
                break
            if it["off"] not in bad:
                bad.append(it["off"])
                if len(bad) >= batch_limit:
                    break
    if not bad and len(orig_bytes) != len(obj_bytes):
        # Streams are equal up to min(len) but lengths differ -- the
        # offending instruction is right at that boundary (MASM emitted
        # extra bytes for some earlier insn that happened to coincide
        # with the right bytes; or trailing junk).
        pivot = min(len(orig_bytes), len(obj_bytes))
        # Find the latest insn whose range includes pivot-1
        for it in reversed(items):
            if it["kind"] == "insn" and \
               it["off"] <= pivot - 1 < it["off"] + it["size"]:
                bad.append(it["off"])
                break
    return set(bad)


# ----------------------------------------------------------------------
# 5. Driver
# ----------------------------------------------------------------------

def main() -> int:
    orig_bytes = (ORIG / "WIN.COM").read_bytes()
    print(f"Loaded WIN.COM: {len(orig_bytes)} bytes")

    is_code, branch_targets, entry = flow_analyze(orig_bytes)
    code_bytes = sum(is_code)
    print(f"Flow analysis: {code_bytes} code bytes, {len(orig_bytes) - code_bytes} data bytes")
    print(f"Branch targets: {len(branch_targets)}")

    fallback: set[int] = set()
    items: list[dict] = []
    last_diff_count = None
    MAX_ITERS = 80   # one bad instruction is fixed per iteration; should
                    # be enough headroom for WIN.COM's ~1186 code bytes.
    for iteration in range(1, MAX_ITERS + 1):
        print(f"\n--- iteration {iteration} ---")
        asm_text, items = emit_masm_source(orig_bytes, is_code,
                                           branch_targets, fallback)
        # Stage the source so the user can inspect even if MASM fails
        SRC_WIN.mkdir(parents=True, exist_ok=True)
        out_path = SRC_WIN / "seg1_real.asm"
        out_path.write_text(asm_text, encoding="ascii", errors="replace")
        print(f"Wrote {out_path.relative_to(ROOT)} "
              f"({asm_text.count(chr(10))} lines, "
              f"{len(fallback)} forced db fallbacks)")
        obj_bytes, lst_text = assemble_via_masm(asm_text)
        if obj_bytes is None:
            # MASM did not produce an OBJ -- parse the LST for error
            # lines, find which items they belong to, mark for db.
            errs = parse_masm_errors(lst_text)
            if not errs:
                print("ERR: MASM failed AND the .LST has no parseable "
                      "errors; aborting.")
                return 1
            line_to_item = {it["line_idx"]: it for it in items
                            if it.get("line_idx") is not None}
            new_bad = set()
            for src_line, code, _msg in errs:
                it = line_to_item.get(src_line)
                if it is None:
                    continue
                if it["kind"] != "insn":
                    continue
                new_bad.add(it["off"])
            if not new_bad:
                print(f"ERR: MASM has {len(errs)} errors but none "
                      f"map to any insn item.  First few: "
                      f"{[e[2] for e in errs[:3]]}")
                return 1
            sample = sorted(new_bad)[:5]
            print(f"  MASM had {len(errs)} errors -> "
                  f"{len(new_bad)} instructions marked for db "
                  f"(file_off {[hex(x) for x in sample]})")
            fallback |= new_bad
            continue
        if obj_bytes == orig_bytes:
            print(f"OK: byte-exact ({len(obj_bytes)} B match) at "
                  f"iteration {iteration}.")
            break
        # Find divergences
        n = min(len(obj_bytes), len(orig_bytes))
        diff_count = sum(1 for i in range(n)
                         if obj_bytes[i] != orig_bytes[i])
        print(f"  diff count: {diff_count} bytes  "
              f"(obj={len(obj_bytes)} vs orig={len(orig_bytes)})")
        bad = find_offending_offsets(items, orig_bytes, obj_bytes)
        if not bad:
            print(f"  no recoverable instructions to fall back; giving up.")
            return 2
        new_bad = bad - fallback
        if not new_bad:
            print(f"  selected instructions already in fallback set; "
                  f"some non-insn item is wrong. Giving up.")
            return 3
        sample = sorted(new_bad)[:5]
        print(f"  marking {len(new_bad)} instructions for db fallback "
              f"(file_off {[hex(x) for x in sample]})")
        fallback |= new_bad
    else:
        print(f"Exhausted {MAX_ITERS} iterations without converging.")
        return 4

    # Coverage report
    n_insn = sum(1 for it in items if it["kind"] == "insn")
    n_db_forced = sum(1 for it in items if it["kind"] == "db-forced")
    n_data = sum(1 for it in items if it["kind"] == "data")
    code_insns_total = n_insn + n_db_forced
    real_pct = (n_insn * 100 // code_insns_total
                if code_insns_total else 0)
    bytes_real = sum(it["size"] for it in items if it["kind"] == "insn")
    bytes_db_forced = sum(it["size"] for it in items
                          if it["kind"] == "db-forced")
    coverage = {
        "instructions_real": n_insn,
        "instructions_db_forced": n_db_forced,
        "data_blocks": n_data,
        "real_insn_pct": real_pct,
        "bytes_real_insn": bytes_real,
        "bytes_db_forced": bytes_db_forced,
        "bytes_total": len(orig_bytes),
    }
    (SRC_WIN / "seg1_real.json").write_text(
        json.dumps(coverage, indent=2))
    print(f"\nCoverage: {n_insn} real instructions / "
          f"{code_insns_total} total code-instructions ({real_pct}%)")
    print(f"Bytes: {bytes_real} real-insn / {bytes_db_forced} db-fallback / "
          f"{len(orig_bytes) - bytes_real - bytes_db_forced} data")
    return 0


if __name__ == "__main__":
    sys.exit(main())
