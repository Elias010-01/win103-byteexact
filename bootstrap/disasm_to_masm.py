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
SRC = ROOT / "src"
SRC_WIN = SRC / "WIN"
TOOLS_DOS = ROOT / "tools" / "dos"
WORK_ROOT = TOOLS_DOS / "work" / "disasm_to_masm"
COMBINED = TOOLS_DOS / "combined"


# ----------------------------------------------------------------------
# 1. Flow analysis (COM-style: follows JMP/CALL from a known entry point)
# ----------------------------------------------------------------------

def flow_analyze(data: bytes, va_bias: int = 0x100):
    """Return (is_code: bytearray, branch_targets: set[int], entry: int).

    `va_bias` is the runtime virtual address of byte 0 of `data` so that
    Capstone can compute proper relative-jump targets:
      * COM file:  va_bias = 0x100 (DOS loads .COM at CS:100)
      * NE seg:    va_bias = 0 (segment-relative)

    `branch_targets` contains file offsets that are reachable as the
    target of jcc/jmp/call (i.e. need a code label).
    """
    SIZE = len(data)
    is_code = bytearray(SIZE)
    branch_targets: set[int] = set()
    if data[0] != 0xE9:
        raise RuntimeError("flow_analyze: data must start with JMP near (E9)")
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
                insn = next(md.disasm(data[pc:pc + 15], va_bias + pc), None)
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
                    tgt_off = tgt_va - va_bias
                    if 0 <= tgt_off < SIZE:
                        branch_targets.add(tgt_off)
                        if not is_code[tgt_off]:
                            worklist.append(tgt_off)
            if mnem in ("ret", "retn", "retf", "iret", "iretd",
                        "jmp", "hlt"):
                break
            pc += insn.size
    return is_code, branch_targets, entry


def linear_analyze(data: bytes, va_bias: int = 0):
    """Linear-sweep "all bytes are code" analysis for NE segments where
    we don't have a single known entry point.

    Treats every byte as candidate code. Discovers branch targets by
    walking forwards through the segment and noting jmp/call immediates
    that fall back inside the segment. The iteration loop in `main` will
    later mark whatever doesn't round-trip through MASM 4.0 as `db`.

    Returns (is_code, branch_targets, entry=0).
    """
    SIZE = len(data)
    is_code = bytearray([1] * SIZE)  # everything is code candidate
    branch_targets: set[int] = set()
    md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_16)
    md.detail = True
    pc = 0
    while pc < SIZE:
        try:
            insn = next(md.disasm(data[pc:pc + 15], va_bias + pc), None)
        except StopIteration:
            insn = None
        if insn is None or insn.size == 0:
            pc += 1
            continue
        mnem = insn.mnemonic
        if (mnem in ("call", "jmp") or
                (mnem.startswith("j") and mnem != "jmp")):
            if insn.operands and \
                    insn.operands[0].type == cs.x86.X86_OP_IMM:
                tgt_va = insn.operands[0].imm
                tgt_off = tgt_va - va_bias
                if 0 <= tgt_off < SIZE:
                    branch_targets.add(tgt_off)
        pc += insn.size
    return is_code, branch_targets, 0


def parse_ne_relocations(file_data: bytes, seg_file_off: int,
                         seg_data_len: int,
                         has_relocations: bool = True) -> list[dict]:
    """Parse the per-segment NE relocation table that follows a code or
    data segment.  Returns a list of relocation records, each containing:

      `src_type`       byte: 0x02 = SEGMENT (16-bit selector), 0x03 = FAR
                       (32-bit imm32 fixup), 0x05 = OFFSET (16-bit offset)
      `flags`          byte: 0x00 = INTERNALREF, 0x01 = IMPORTORDINAL,
                       0x02 = IMPORTNAME, 0x03 = OSFIXUP, 0x04 = ADDITIVE
      `src_off`        word: file offset of the fixup *value* (inside the
                       operand bytes of the instruction)
      `target1`,`target2`: type-dependent target identifier
      `insn_off`       int: best-effort start offset of the instruction
                       that contains the fixup (src_off minus a small
                       opcode/ModRM constant based on src_type).  This is
                       the value the caller usually wants as a seed for
                       flow analysis.

    Returns [] for segments without relocations.  IMPORTANT: must be
    called with `has_relocations=False` for segments whose NE flag word
    does NOT have bit 0x0100 set, otherwise the bytes immediately
    following the segment data (which belong to the next segment, the
    NE non-resident name table, or appended user data) get
    misinterpreted as a relocation table.  E.g. WIN100.BIN seg1 has
    flags=0x0040 (PRELOAD only) and the bytes after it begin with
    0xA571 which would be parsed as 'n_reloc=42353' garbage.
    """
    if not has_relocations:
        return []
    reloc_off = seg_file_off + seg_data_len
    if reloc_off + 2 > len(file_data):
        return []
    n_reloc = int.from_bytes(file_data[reloc_off:reloc_off + 2], "little")
    if n_reloc == 0:
        return []
    out: list[dict] = []
    for i in range(n_reloc):
        e = reloc_off + 2 + i * 8
        if e + 8 > len(file_data):
            break
        src_type = file_data[e]
        flags = file_data[e + 1]
        src_off = int.from_bytes(file_data[e + 2:e + 4], "little")
        t1 = int.from_bytes(file_data[e + 4:e + 6], "little")
        t2 = int.from_bytes(file_data[e + 6:e + 8], "little")
        # Best-effort: most x86 16-bit instructions with a 16-bit imm
        # operand have the imm starting 1 byte (single-opcode like `mov
        # ax, imm16` = B8 lo hi) or 3 bytes (`call far ptr seg:off` = 9A
        # off off seg seg) after the opcode start.  For src_type=0x02
        # SEGMENT (16-bit selector fixup), the value lives in the high
        # word of a far pointer at src_off, so the instruction starts at
        # src_off - 3 (9A imm16:SEG) or src_off - 1 (mov ax, SEG).  We
        # default to src_off - 1 which is the safest seed (Capstone
        # will discover the real boundary from the previous insn).
        insn_off = max(0, src_off - 1)
        out.append({
            "src_type": src_type, "flags": flags, "src_off": src_off,
            "target1": t1, "target2": t2, "insn_off": insn_off,
        })
    return out


def _find_insn_start_covering(data: bytes, target_off: int,
                              md: "cs.Cs", va_bias: int = 0,
                              max_back: int = 5) -> int | None:
    """Walk backwards 1..`max_back` bytes from `target_off` and return
    the first start S such that the single instruction at S has size >
    (target_off - S), i.e., its operand includes byte `target_off`.

    Returns None if no such start exists (indicates the reloc points
    into a malformed region or a multi-byte prefix instruction we can't
    line up).  Caller should treat that reloc as 'unknown anchor'.
    """
    for back in range(1, max_back + 1):
        s = target_off - back
        if s < 0:
            break
        insn = next(md.disasm(data[s:s + 15], va_bias + s), None)
        if insn is not None and insn.size > back:
            return s
    return None


def relocation_seeded_flow_analyze(data: bytes, relocs: list[dict],
                                   va_bias: int = 0,
                                   extra_entries: list[int] | None = None
                                   ) -> tuple[bytearray, set[int], int]:
    """Real flow analysis seeded by NE relocation anchors plus optional
    extra entry points.

    Strategy:
      1. For each reloc, walk backwards from src_off to locate the
         instruction whose operand bytes contain src_off.  That start
         offset is a definite code entry.
      2. Add `extra_entries` (e.g., offset 0 if heuristically a code
         start, or values from the NE Entry Table).
      3. From each entry, do flow_analyze-style worklist sweep,
         marking reached bytes as is_code=1 and discovering branches.

    Bytes never reached remain is_code=0 -> emitted as `db` data blocks
    instead of being mis-disassembled as code (which is what linear
    sweep does and which causes MASM length cascades for the iterative
    loop in `process_segment`).

    Returns (is_code, branch_targets, entry=first reloc anchor or 0).
    """
    SIZE = len(data)
    is_code = bytearray(SIZE)  # all data by default
    branch_targets: set[int] = set()
    md = cs.Cs(cs.CS_ARCH_X86, cs.CS_MODE_16)
    md.detail = True

    entries: list[int] = []
    for r in relocs:
        s = _find_insn_start_covering(data, r["src_off"], md,
                                      va_bias=va_bias)
        if s is not None:
            entries.append(s)
    if extra_entries:
        for e in extra_entries:
            if 0 <= e < SIZE:
                entries.append(e)

    if not entries:
        return is_code, branch_targets, 0
    first_entry = entries[0]
    branch_targets.update(entries)
    worklist = list(entries)
    while worklist:
        pc = worklist.pop()
        if pc < 0 or pc >= SIZE or is_code[pc]:
            continue
        while pc < SIZE and not is_code[pc]:
            insn = next(md.disasm(data[pc:pc + 15], va_bias + pc), None)
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
                    tgt_off = insn.operands[0].imm - va_bias
                    if 0 <= tgt_off < SIZE:
                        branch_targets.add(tgt_off)
                        if not is_code[tgt_off]:
                            worklist.append(tgt_off)
            if mnem in ("ret", "retn", "retf", "iret", "iretd",
                        "jmp", "hlt"):
                break
            pc += insn.size
    return is_code, branch_targets, first_entry


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
                     is_branch_op: bool, va_bias: int = 0x100) -> str:
    """Translate a Capstone op_str to MASM 4.00 syntax.

    `branch_target_offsets` holds segment-relative offsets that have a
    code label (`L_XXXX`). When the instruction is a branch
    (is_branch_op=True) and the immediate (a virtual address from
    Capstone) corresponds to a known branch target after subtracting
    `va_bias`, we replace it with the label name; otherwise we keep it
    as a raw hex constant.
    """
    def repl(match: re.Match) -> str:
        hexv = match.group(1)
        val = int(hexv, 16)
        if is_branch_op:
            tgt_off = val - va_bias
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

def disasm_instructions(data: bytes, is_code: bytearray, va_bias: int = 0x100):
    """Yield (file_off, size, mnemonic, op_str, raw_bytes) for every
    instruction, walking only over byte ranges marked as code.

    `va_bias` is the runtime virtual address of byte 0 of `data`,
    forwarded to Capstone so it produces correct relative-jump targets.
    """
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
        run_data = data[off:j]
        run_va = va_bias + off
        cur = 0
        while cur < len(run_data):
            insn = next(md.disasm(run_data[cur:cur + 15], run_va + cur),
                        None)
            if insn is None or insn.size == 0:
                yield ("code-fallback", off + cur, 1, run_data[cur:cur + 1])
                cur += 1
                continue
            yield ("code", off + cur, insn.size,
                   run_data[cur:cur + insn.size], insn.mnemonic, insn.op_str)
            cur += insn.size
        off = j


def emit_masm_source(data: bytes, is_code: bytearray,
                     branch_targets: set[int],
                     fallback_offsets: set[int],
                     mod_name: str = "WIN",
                     seg_index: int = 1,
                     seg_name: str | None = None,
                     orig_name: str = "WIN.COM",
                     va_bias: int = 0x100,
                     is_data_seg: bool = False,
                     compact: bool = False) -> tuple[str, list[dict]]:
    """Build a MASM 4.00 source string from the disasm of one segment.

    Parameters:
      `mod_name`, `seg_index`, `seg_name` – control naming of the
        SEGMENT directive and labels.  Defaults work for WIN.COM seg1.
      `va_bias` – passed to Capstone & translate_op_str (0x100 for COM,
        0 for NE segs).
      `is_data_seg` – when True, skip Capstone entirely and emit every
        byte as `db`. Used for NE data segments (e.g. WINOLDAP seg2).
      `fallback_offsets` – file offsets that MUST be emitted as `db`
        (because MASM re-encoded them differently or rejected the
        syntax in a previous iteration).

    Returns (source_text, items) where each item carries a 1-based
    MASM source line index so MASM error messages of the form
    'WINREAL.ASM(NN) : error ...' can be mapped back to file offsets.
    """
    if seg_name is None:
        seg_name = f"{mod_name.upper()}_SEG{seg_index}"
    lines = [
        "; ============================================================",
        f"; src/{mod_name}/seg{seg_index}_real.asm  --  AUTO-GENERATED by",
        ";   bootstrap/disasm_to_masm.py",
        ";",
        f"; Byte-exact MASM 4.00 source for segment {seg_index} of "
        f"original/{orig_name}",
        f"; ({len(data)} B). Capstone disassembly with iterative `db` "
        "fallback for",
        "; instructions whose MASM 4.00 encoding differs from the shipped",
        "; bytes. This file is verified byte-exact via",
        "; bootstrap/analyze/verify_flat_com_via_masm.py.",
        "; ============================================================",
        "",
        "        .8086",
        f"{seg_name} SEGMENT BYTE PUBLIC 'CODE'",
        f"        ASSUME cs:{seg_name}, ds:{seg_name}, "
        f"ss:{seg_name}, es:{seg_name}",
        "",
    ]
    # Pure-data segments: emit every byte as `db`, no Capstone.
    if is_data_seg:
        lines.append(f"; -- data 0x0000..0x{len(data)-1:04X} ({len(data)}B) --")
        line_idx = len(lines) + 1
        _emit_db_block(lines, 0, data, compact=compact)
        items = [{"kind": "data", "off": 0, "size": len(data),
                  "line_idx": line_idx}]
        lines.append("")
        lines.append(f"{seg_name} ENDS")
        lines.append("        END")
        lines.append("")
        return "\n".join(lines), items
    items = []  # one entry per emitted line that owns ranges of bytes
    for entry in disasm_instructions(data, is_code, va_bias=va_bias):
        kind = entry[0]
        if kind == "data":
            _, off, sz, raw = entry
            lines.append(f"; -- data 0x{off:04X}..0x{off + sz - 1:04X} ({sz}B) --")
            line_idx = len(lines) + 1  # 1-based, points at first db line
            _emit_db_block(lines, off, raw, compact=compact)
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
            masm_op = translate_op_str(op_str, branch_targets, is_branch,
                                       va_bias=va_bias)
        # MASM 4.0 picks the larger encoding by default for forward jmps,
        # so `EB xx` (jmp short, 2 bytes) becomes `E9 xx xx` (jmp near,
        # 3 bytes). Force `short` keyword when the original was 2-byte.
        if masm_mnem_base == "jmp" and sz == 2 and raw[0] == 0xEB:
            masm_op = f"short {masm_op}"
        # Same idea for forward `call` short encodings: 8086 doesn't
        # have a 2-byte CALL though, so no extra fix needed there.
        # Keep the line under MASM 4.0's silent 128-char truncation
        # threshold (use <=120 to leave headroom).
        if compact:
            # Drop the per-insn `; [hex]` comment.  This cuts the source
            # size roughly in half for large NE segments (~10000 insn);
            # MASM 4.00 has no real source-size limit (it handles ~200 KB
            # of `db` source fine), but we still want to stay tight so
            # iteration cycles under DOSBox-X are fast.
            line = f"{label:<10}{masm_mnem_full:<10}{masm_op}"
        else:
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
    lines.append(f"{seg_name} ENDS")
    lines.append("        END")
    lines.append("")
    return "\n".join(lines), items


def _emit_db_block(lines: list[str], start: int, block: bytes,
                   compact: bool = False) -> None:
    """Emit data bytes as `db` lines, identifying ASCII strings >= 4 chars.

    MASM 4.0 silently truncates source lines at 128 characters, which
    corrupts long string literals (an unbalanced `'` then turns the
    rest of the file into one giant phantom string and MASM reports
    bogus 'Open procedures' / 'open conditionals' errors). Always keep
    each emitted source line under 120 characters by:

      * splitting long ASCII runs into multiple `db '...'` lines (one
        per <= 64-char chunk);
      * keeping the trailing hex `[...]` comment short or omitted.

    When `compact=True`, zero runs of >= 16 bytes are coalesced to
    `db N DUP(0)`, dramatically shrinking the source for sparse data
    segments and large NE code segments with embedded padding tables.
    """
    MAX_STR_CHUNK = 60      # MASM string literal chunk
    MAX_LINE = 120          # source line budget (well under MASM's 128)
    DUP_THRESHOLD = 16      # bytes-of-zero before switching to `dup`
    i = 0
    while i < len(block):
        # Compact mode: coalesce long zero-runs to `db N DUP(0)`.
        if compact and block[i] == 0:
            j = i
            while j < len(block) and block[j] == 0:
                j += 1
            run_len = j - i
            if run_len >= DUP_THRESHOLD:
                label = f"d_{start + i:04X}: "
                lines.append(f"{label}db {run_len} DUP(0)")
                i = j
                continue
            # Short zero run: fall through to normal emission.

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


def _make_lst_err_re(short: str) -> re.Pattern:
    return re.compile(
        rf"^{re.escape(short)}\.ASM\((\d+)\)\s*:\s*error\s+(\d+):",
        re.IGNORECASE)


def parse_masm_errors(lst_text: str, short: str) -> list[tuple[int, int, str]]:
    """Return a list of (source_line, error_code, message) for every
    '<SHORT>.ASM(NN) : error MM: ...' line in the MASM 4.0 .LST."""
    pat = _make_lst_err_re(short)
    out = []
    for ln in lst_text.splitlines():
        m = pat.match(ln.strip())
        if m:
            out.append((int(m.group(1)), int(m.group(2)), ln.strip()))
    return out


def assemble_via_masm(asm_text: str,
                      short: str = "WINREAL",
                      work_dir: Path | None = None
                      ) -> tuple[bytes | None, str]:
    """Stage asm_text in `work_dir` (default: WORK_ROOT/<SHORT>/), run
    MASM 4.00 in a single DOSBox-X session, and return (LEDATA bytes or
    None, LST text) so the caller can inspect MASM error messages.
    """
    if work_dir is None:
        work_dir = WORK_ROOT / short
    if work_dir.exists():
        shutil.rmtree(work_dir)
    work_dir.mkdir(parents=True)
    for tool in ("MASM.EXE", "LINK.EXE"):
        src = COMBINED / tool
        if src.exists():
            shutil.copy2(src, work_dir / tool)
    (work_dir / f"{short}.ASM").write_text(asm_text, encoding="ascii",
                                           errors="replace")
    bat = "\r\n".join([
        "@echo off",
        f"MASM {short}, {short}.OBJ, {short}.LST; > {short}_M.LOG",
        f"if errorlevel 1 echo MASM_FAIL >> {short}_M.LOG",
        "",
    ])
    (work_dir / "BUILD.BAT").write_text(bat, encoding="ascii")
    cmd = ["wsl", "--", "bash",
           _winpath_to_wsl(TOOLS_DOS / "dosbuild.sh"),
           _winpath_to_wsl(work_dir), "BUILD.BAT"]
    try:
        subprocess.run(cmd, capture_output=True, text=True, timeout=240)
    except subprocess.TimeoutExpired:
        print("ERR: MASM under DOSBox-X timed out")
        return None, ""
    lst_path = work_dir / f"{short}.LST"
    lst_text = lst_path.read_text(encoding="ascii", errors="replace") \
        if lst_path.exists() else ""
    obj_path = work_dir / f"{short}.OBJ"
    if not obj_path.exists():
        return None, lst_text
    sys.path.insert(0, str(ROOT / "bootstrap"))
    from build_from_source import parse_obj_ledata  # noqa: E402
    return parse_obj_ledata(obj_path.read_bytes()), lst_text


def find_offending_offsets(items: list[dict],
                           orig_bytes: bytes,
                           obj_bytes: bytes,
                           batch_limit: int | None = None) -> set[int]:
    """Find instructions whose MASM 4.00 output differs from the original.

    Adaptive batching:
      * If `len(obj) == len(orig)`, all diffs are pure encoding diffs
        (no cascade), so we can safely batch ALL bad insn items at once.
        This dramatically reduces iteration count on big segments.
      * If lengths differ, MASM emitted an instruction with a different
        size; subsequent bytes in OBJ are shifted, so any further diff
        is unreliable. We only mark the FIRST bad item.

    `batch_limit` overrides the adaptive choice if given (1 = strict).
    """
    off_to_item = {}
    for it in items:
        for k in range(it["size"]):
            off_to_item[it["off"] + k] = it
    same_len = len(orig_bytes) == len(obj_bytes)
    if batch_limit is None:
        batch_limit = 99999 if same_len else 1
    n = min(len(orig_bytes), len(obj_bytes))
    bad: list[int] = []
    for i in range(n):
        if obj_bytes[i] != orig_bytes[i]:
            it = off_to_item.get(i)
            if it is None or it["kind"] != "insn":
                if same_len:
                    # Length match means we can keep scanning; this byte
                    # is in a non-insn item which shouldn't really diff.
                    continue
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

def process_segment(mod_name: str, seg_index: int, target: bytes,
                    orig_name: str, is_data: bool, is_com: bool,
                    file_data: bytes | None = None,
                    seg_file_off: int = 0,
                    has_relocations: bool = True,
                    compact: bool | None = None) -> dict:
    """Run the iterative disasm-to-MASM loop on one segment of one
    module.  Returns a coverage dict (always written to
    src/<mod_name>/seg<idx>_real.json) and writes the source to
    src/<mod_name>/seg<idx>_real.asm.

    Strategy per kind:
      * is_com=True (WIN.COM):       flow_analyze, va_bias=0x100, compact=False
      * is_data=True (NE data seg):  emit-everything-as-db, compact=True
      * NE code seg + relocs:        relocation_seeded_flow_analyze, compact=True
      * else (NE code seg):          linear_analyze, va_bias=0, compact=True

    `file_data` + `seg_file_off` are needed for parsing the per-segment
    NE relocation table (which lives at file_off + data_len in the file).
    `compact` overrides the default (auto: False for COM, True for NE).
    """
    src_dir = SRC / mod_name
    src_dir.mkdir(parents=True, exist_ok=True)
    out_path = src_dir / f"seg{seg_index}_real.asm"
    cov_path = src_dir / f"seg{seg_index}_real.json"
    short = (mod_name.upper()[:6] + f"R{seg_index}")[:8]

    if compact is None:
        compact = not is_com  # NE segs: compact; COM: verbose (humanly read)

    if is_data:
        print(f"  [{mod_name} seg{seg_index}] DATA segment: emit all-db, "
              "no iteration.")
        asm_text, items = emit_masm_source(
            target, bytearray(len(target)), set(), set(),
            mod_name=mod_name, seg_index=seg_index,
            orig_name=orig_name, va_bias=0, is_data_seg=True,
            compact=compact)
        out_path.write_text(asm_text, encoding="ascii", errors="replace")
        obj_bytes, lst_text = assemble_via_masm(
            asm_text, short=short, work_dir=WORK_ROOT / short)
        if obj_bytes is None:
            print(f"  ERR: MASM failed on data segment.")
            return {"module": mod_name, "seg_index": seg_index,
                    "status": "FAIL_MASM", "size": len(target)}
        if obj_bytes != target:
            print(f"  ERR: data segment mismatch.")
            return {"module": mod_name, "seg_index": seg_index,
                    "status": "FAIL_DIFF", "size": len(target)}
        cov = {"module": mod_name, "seg_index": seg_index,
               "status": "OK", "kind": "data",
               "instructions_real": 0, "instructions_db_forced": 0,
               "data_blocks": 1, "real_insn_pct": 0,
               "bytes_real_insn": 0, "bytes_db_forced": 0,
               "bytes_total": len(target),
               "bytes_data": len(target)}
        cov_path.write_text(json.dumps(cov, indent=2))
        print(f"  OK: data segment byte-exact ({len(target)} B)")
        return cov

    # Code segment (COM or NE)
    va_bias = 0x100 if is_com else 0
    relocs: list[dict] = []
    if is_com:
        is_code, branch_targets, _entry = flow_analyze(target,
                                                       va_bias=va_bias)
    else:
        # NE code segment: try reloc-seeded analysis if we have the full
        # file (per-segment reloc table is appended after the segment
        # bytes).  Falls back to plain linear sweep otherwise.
        if file_data is not None and has_relocations:
            relocs = parse_ne_relocations(file_data, seg_file_off,
                                          len(target),
                                          has_relocations=True)
        if relocs:
            print(f"  [{mod_name} seg{seg_index}] parsed {len(relocs)} NE "
                  f"relocations as flow-analysis seeds.")
            # Real flow analysis from each reloc anchor; unreached bytes
            # stay is_code=0 and get emitted as `db` (data) instead of
            # being mis-disassembled as code by Capstone, which is what
            # caused the MASM length-cascade non-convergence in v13.2.
            is_code, branch_targets, _entry = relocation_seeded_flow_analyze(
                target, relocs, va_bias=va_bias)
        else:
            is_code, branch_targets, _entry = linear_analyze(
                target, va_bias=va_bias)
    code_bytes = sum(is_code)
    print(f"  [{mod_name} seg{seg_index}] {code_bytes} code bytes / "
          f"{len(target)-code_bytes} data bytes, "
          f"{len(branch_targets)} branch targets "
          f"(compact={compact})")

    fallback: set[int] = set()
    items: list[dict] = []
    # COM has a known entry point so flow analysis converges in 1-2 iters.
    # NE code segs use linear/reloc-seeded sweep where each "MASM picked
    # different size encoding" causes a length cascade and only 1 insn
    # gets fixed per iteration. Capping at 30 iters bounds wall time at
    # ~5 min per segment under DOSBox-X (vs 33 min at 200) and the
    # graceful fallback below writes a pure-db source if we don't
    # converge, which still byte-exact assembles via MASM 4.00.
    MAX_ITERS = 200 if is_com else 30
    last_iter_msg = None
    converged = False
    for iteration in range(1, MAX_ITERS + 1):
        asm_text, items = emit_masm_source(
            target, is_code, branch_targets, fallback,
            mod_name=mod_name, seg_index=seg_index,
            orig_name=orig_name, va_bias=va_bias,
            compact=compact)
        out_path.write_text(asm_text, encoding="ascii", errors="replace")

        obj_bytes, lst_text = assemble_via_masm(
            asm_text, short=short, work_dir=WORK_ROOT / short)
        if obj_bytes is None:
            errs = parse_masm_errors(lst_text, short)
            if not errs:
                print(f"  iter {iteration}: MASM failed AND "
                      f".LST has no parseable errors. Will try db fallback.")
                break
            line_to_item = {it["line_idx"]: it for it in items
                            if it.get("line_idx") is not None}
            new_bad = set()
            for src_line, _code, _msg in errs:
                it = line_to_item.get(src_line)
                if it and it["kind"] == "insn":
                    new_bad.add(it["off"])
            new_bad -= fallback
            if not new_bad:
                print(f"  iter {iteration}: MASM has {len(errs)} "
                      f"errors but none map to fixable insn items. "
                      f"Will try db fallback.")
                break
            print(f"  iter {iteration}: MASM {len(errs)} errors -> +"
                  f"{len(new_bad)} db fallbacks (total {len(fallback) + len(new_bad)})")
            fallback |= new_bad
            continue

        if obj_bytes == target:
            converged = True
            print(f"  OK iter {iteration}: byte-exact "
                  f"({len(obj_bytes)} B match)")
            # Post-pass: apply reverse-engineered semantic label
            # renames (cosmetic, doesn't change emitted bytes). Then
            # re-verify byte-exact as a sanity check that the rename
            # didn't accidentally collide with a real symbol.
            renamed_text, n_replaced = apply_semantic_labels(
                asm_text, mod_name)
            if n_replaced > 0:
                print(f"  applying {n_replaced} semantic label "
                      f"renames...")
                out_path.write_text(renamed_text, encoding="ascii",
                                    errors="replace")
                obj2, _lst2 = assemble_via_masm(
                    renamed_text, short=short,
                    work_dir=WORK_ROOT / short)
                if obj2 != target:
                    print(f"  ERR: semantic rename broke byte-exactness; "
                          f"reverting to numeric labels.")
                    out_path.write_text(asm_text, encoding="ascii",
                                        errors="replace")
                else:
                    print(f"  OK: semantic-labeled source still "
                          f"byte-exact ({len(obj2)} B match)")
            break

        same_len = len(obj_bytes) == len(target)
        diff_count = sum(1 for i in range(min(len(obj_bytes), len(target)))
                         if obj_bytes[i] != target[i])
        bad = find_offending_offsets(items, target, obj_bytes)
        new_bad = bad - fallback
        if not new_bad:
            print(f"  iter {iteration}: no recoverable diffs "
                  f"({diff_count} byte mismatches, same_len={same_len}). "
                  f"Will try db fallback.")
            break
        print(f"  iter {iteration}: diff={diff_count}B "
              f"(obj={len(obj_bytes)} vs orig={len(target)}, "
              f"same_len={same_len}) -> +{len(new_bad)} db fallbacks "
              f"(total {len(fallback) + len(new_bad)})")
        fallback |= new_bad
    if not converged:
        print(f"  iter loop ended at {MAX_ITERS} without convergence; "
              f"falling back to pure-db emission for this segment.")
        # Graceful fallback: emit the segment as 100% db (no Capstone),
        # which always assembles byte-exact under MASM 4.00.  This keeps
        # the build chain healthy: every NE segment's `seg<N>_real.asm`
        # is real MASM 4.00 source even when Capstone+MASM round-trip
        # disagrees on instruction encodings.
        asm_text, items = emit_masm_source(
            target, bytearray(len(target)), set(), set(),
            mod_name=mod_name, seg_index=seg_index,
            orig_name=orig_name, va_bias=va_bias, is_data_seg=True,
            compact=compact)
        out_path.write_text(asm_text, encoding="ascii", errors="replace")
        obj2, _lst2 = assemble_via_masm(
            asm_text, short=short, work_dir=WORK_ROOT / short)
        if obj2 != target:
            print(f"  ERR: even pure-db fallback failed to byte-match. "
                  f"This shouldn't happen.")
            return {"module": mod_name, "seg_index": seg_index,
                    "status": "FAIL_DB_FALLBACK", "size": len(target),
                    "fallback_count": len(fallback)}
        print(f"  OK: pure-db fallback byte-exact ({len(obj2)} B)")
        cov = {"module": mod_name, "seg_index": seg_index,
               "status": "OK_DB_FALLBACK",
               "kind": "code-ne",
               "instructions_real": 0,
               "instructions_db_forced": 0,
               "data_blocks": 1, "real_insn_pct": 0,
               "bytes_real_insn": 0, "bytes_db_forced": 0,
               "bytes_data": len(target),
               "bytes_total": len(target),
               "note": ("real disasm did not converge in "
                        f"{MAX_ITERS} iters; emitted as pure-db "
                        "(byte-exact via MASM 4.00).")}
        cov_path.write_text(json.dumps(cov, indent=2))
        return cov

    n_insn = sum(1 for it in items if it["kind"] == "insn")
    n_db_forced = sum(1 for it in items if it["kind"] == "db-forced")
    n_data_blocks = sum(1 for it in items if it["kind"] == "data")
    code_insns_total = n_insn + n_db_forced
    real_pct = (n_insn * 100 // code_insns_total) if code_insns_total else 0
    bytes_real = sum(it["size"] for it in items if it["kind"] == "insn")
    bytes_db_forced = sum(it["size"] for it in items
                          if it["kind"] == "db-forced")
    bytes_data = sum(it["size"] for it in items if it["kind"] == "data")
    cov = {
        "module": mod_name,
        "seg_index": seg_index,
        "status": "OK",
        "kind": "code-com" if is_com else "code-ne",
        "instructions_real": n_insn,
        "instructions_db_forced": n_db_forced,
        "data_blocks": n_data_blocks,
        "real_insn_pct": real_pct,
        "bytes_real_insn": bytes_real,
        "bytes_db_forced": bytes_db_forced,
        "bytes_data": bytes_data,
        "bytes_total": len(target),
    }
    cov_path.write_text(json.dumps(cov, indent=2))
    print(f"  Coverage: {n_insn}/{code_insns_total} real instructions "
          f"({real_pct}%), {bytes_real}/{bytes_db_forced}/{bytes_data} "
          f"bytes (real-insn/db-fallback/data)")
    return cov


def process_module(mod_name: str) -> list[dict]:
    """Run process_segment over every segment listed in
    src/<mod_name>/layout.json. Returns a list of coverage dicts."""
    layout_path = SRC / mod_name / "layout.json"
    if not layout_path.exists():
        print(f"!! {mod_name}: no src/{mod_name}/layout.json")
        return []
    layout = json.loads(layout_path.read_text())
    orig_name = layout["original_name"]
    orig = (ORIG / orig_name).read_bytes()
    is_com = orig_name.upper().endswith(".COM")
    print(f"\n=== {mod_name} ({orig_name}, {len(orig)} B) ===")
    results = []
    for seg in layout["segments"]:
        idx = seg["index"]
        fo = seg["file_off"]
        sz = seg["data_len"]
        target = orig[fo:fo + sz]
        is_data = bool(seg.get("is_data", False))
        # `has_reloc` from layout.json mirrors NE flag bit 0x100.  Without
        # this, parse_ne_relocations misreads bytes following a non-reloc
        # segment (e.g. WIN100.BIN seg1) as a phony 19000-entry reloc
        # table because the next file bytes happen to start with garbage.
        has_reloc = bool(seg.get("has_reloc", False))
        r = process_segment(mod_name, idx, target, orig_name,
                            is_data=is_data, is_com=is_com,
                            file_data=orig, seg_file_off=fo,
                            has_relocations=has_reloc)
        results.append(r)
    return results


DEFAULT_MODULES = ["WIN", "WIN100", "WINOLDAP"]
# Real-disasm strategy per module:
#   * WIN.COM seg1 (4873 B):       flow_analyze, converges in 1 iter,
#                                  100 % real instructions, byte-exact.
#   * WIN100.BIN seg1 (31 KB):     0 NE relocations -> linear sweep is
#                                  the only option.  In v13.3 testing
#                                  the length-cascade prevents convergence
#                                  in 30 iters; we fall back to pure-db
#                                  (byte-exact via MASM 4.00).
#   * WINOLDAP.MOD seg1 (16 KB):   102 relocs as flow seeds discover
#                                  ~60 % code reachability but Capstone-
#                                  vs-MASM encoding mismatches prevent
#                                  cascade-recovery in 30 iters; falls
#                                  back to pure-db (byte-exact via MASM).
#   * WINOLDAP.MOD seg2 (1200 B):  data segment, emit-all-db, byte-exact.
#
# In all cases the resulting `seg<N>_real.asm` is real MASM 4.00 source
# that round-trips through `build_from_source.py --mode=masm` to a
# byte-exact original module.  See CHANGELOG.md and
# state/analyze/disasm_to_masm/attempt_log.md for the detailed history.

# ----------------------------------------------------------------------
# 6. Semantic-label rename (post-pass, doesn't change emitted bytes)
# ----------------------------------------------------------------------

# Reverse-engineered names for WIN.COM seg1 data labels and the main
# entry point.  Each `d_XXXX` label was identified by inspecting the
# string at that offset in the assembled output, plus contextual code
# usage.  These renames are pure cosmetic relabels (MASM emits the same
# instruction bytes regardless of symbolic name).
SEMANTIC_LABELS: dict[str, dict[str, str]] = {
    "WIN": {
        # Code labels
        "L_01C1": "win_main",
        # Data labels (DOS .COM-style $-terminated message strings)
        # ".COM" / "DOS$Insert Application$Insert Windows Startup$"
        # / " disk in drive x:" -- multi-prompt block.
        "d_0010": "msg_dos_prompts",
        "d_005F": "msg_when_ready",
        "d_007B": "msg_program_too_big",      # ".. big to fit in memory"
        "d_00A0": "msg_no_screen_xchg_space",  # ".. space for screen xchg"
        "d_00CA": "msg_no_startup_files",      # ".. dows startup files"
        "d_00EC": "env_comspec_eq",            # "COMSPEC="
        "d_0790": "tag_logo",                  # "LOGO" 4-char tag
        "d_07C4": "txt_windows",               # "..ndows" -> Windows
        "d_07E9": "msg_copyright_ms",
        "d_0831": "msg_trademark_ms",
    },
}


def apply_semantic_labels(asm_text: str, mod_name: str) -> tuple[str, int]:
    """Rename `L_XXXX` and `d_XXXX` labels (declarations + references)
    to reverse-engineered semantic names from SEMANTIC_LABELS[mod_name].

    Pure cosmetic transform: MASM emits the same bytes regardless of
    symbol name, so the post-rename source must still assemble
    byte-exact (which the caller verifies).  Returns the new text and
    the count of replacements made (across all distinct labels).
    """
    rename_map = SEMANTIC_LABELS.get(mod_name, {})
    if not rename_map:
        return asm_text, 0
    n_replaced = 0
    out = asm_text
    for old, new in rename_map.items():
        # `\b` word boundaries pin to whole-symbol matches so we don't
        # accidentally rewrite e.g. `d_001023h` (none currently exist
        # but defensive).
        pat = re.compile(rf"\b{re.escape(old)}\b")
        new_text, n = pat.subn(new, out)
        n_replaced += n
        out = new_text
    return out, n_replaced


def main() -> int:
    args = sys.argv[1:]
    targets = args or DEFAULT_MODULES
    all_results: dict[str, list[dict]] = {}
    for t in targets:
        all_results[t] = process_module(t)

    # Summary
    print("\n" + "=" * 60)
    print("SUMMARY")
    print("=" * 60)
    overall_ok = True
    for mod, results in all_results.items():
        for r in results:
            status = r.get("status", "?")
            ok = status in ("OK", "OK_DB_FALLBACK")
            if not ok:
                overall_ok = False
            sz = r.get("size", r.get("bytes_total", "?"))
            extras = ""
            if r.get("kind") == "code-com" or r.get("kind") == "code-ne":
                extras = (f"  {r['instructions_real']}/"
                          f"{r['instructions_real'] + r['instructions_db_forced']}"
                          f" real ({r['real_insn_pct']}%)")
            print(f"  {mod} seg{r.get('seg_index','?')}: {status}  "
                  f"size={sz}{extras}")

    return 0 if overall_ok else 1


if __name__ == "__main__":
    sys.exit(main())
