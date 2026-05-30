#!/usr/bin/env python3
"""Audit orphan label references across all src/<MOD>/seg*.asm files.

An "orphan ref" is a jump/call/lea/etc. that references a label that is
NOT defined anywhere in the same segment file. These cause MASM 4.00 to
fail with A2009: Symbol not defined.

Strategy:
  1. For each .asm, find all LABEL: definitions.
  2. Find all symbolic references (instructions with label operands).
  3. Report any ref whose target label is not defined in the same file.
"""
from __future__ import annotations

import json
import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"

# Instructions that commonly take label operands in 16-bit x86
REF_OPCODES = {
    "jmp", "call", "je", "jne", "jz", "jnz", "ja", "jna", "jb", "jnb",
    "jbe", "jnbe", "jl", "jnl", "jle", "jnle", "jg", "jng", "jge", "jnge",
    "jc", "jnc", "jo", "jno", "js", "jns", "jp", "jnp", "jpe", "jpo",
    "loop", "loope", "loopne", "loopz", "loopnz", "jcxz",
}

_RE_LABEL_DEF = re.compile(r"^\s*([A-Za-z_$@?][A-Za-z0-9_$@?.]*):\s*")
_RE_INSTR = re.compile(r"^\s*([a-z]+)\s+(.*?)(\s*;.*)?$", re.IGNORECASE)
_RE_HEX_COMMENT = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)$")


def is_reference_line(line: str) -> tuple[str, str] | None:
    """If line contains an instruction with a probable label ref, return
    (opcode, operand). Otherwise None."""
    # Strip inline comment for opcode parsing
    code = line.split(";", 1)[0].strip()
    if not code:
        return None
    # Match:  opcode  operand
    m = _RE_INSTR.match(code)
    if not m:
        return None
    opcode = m.group(1).lower()
    if opcode not in REF_OPCODES:
        return None
    operand = m.group(2).strip()
    # Skip numeric operands (e.g. jmp 0x1234, call 0x5678)
    if re.match(r"^[0-9A-Fa-f]+[Hh]$", operand):
        return None
    if re.match(r"^[0-9]+$", operand):
        return None
    # Skip register refs (e.g. jmp ax)
    if operand.lower() in {"ax", "bx", "cx", "dx", "si", "di", "bp", "sp",
                           "al", "ah", "bl", "bh", "cl", "ch", "dl", "dh",
                           "cs", "ds", "es", "ss", "fs", "gs"}:
        return None
    # Skip ptr / segment overrides that look like label refs
    if operand.startswith("[") and operand.endswith("]"):
        return None
    return opcode, operand


def audit_file(path: Path) -> list[dict]:
    """Return list of orphan refs found in a single .asm file."""
    text = path.read_text(encoding="ascii", errors="replace")
    defined: set[str] = set()
    refs: list[tuple[int, str, str]] = []  # (line_no, opcode, operand)

    for i, raw in enumerate(text.splitlines(), 1):
        # Label definition
        m = _RE_LABEL_DEF.match(raw)
        if m:
            defined.add(m.group(1))
            continue
        # Reference
        ref = is_reference_line(raw)
        if ref:
            refs.append((i, ref[0], ref[1]))

    orphans = []
    for line_no, opcode, operand in refs:
        # Operand might be segment-prefixed: FAR_LABEL or NEAR_LABEL
        # Or plain label. We check the base name.
        target = operand
        if "PTR" in operand.upper():
            # e.g. jmp FAR PTR KERNEL.GLOBALALLOC -> ignore (inter-module)
            continue
        if ":" in operand and not operand.startswith("["):
            # Segment override like jmp CS:X40 or far call ES:LAB
            # Keep the label part after the colon
            target = operand.split(":")[-1]
        if target not in defined:
            # Heuristic: if target looks like a module prefix (KERNEL., USER., etc.), skip
            if "." in target and target.split(".")[0].upper() in {
                "KERNEL", "USER", "GDI", "MSDOS", "SHELL", "KEYBOARD",
                "SYSTEM", "DISPLAY", "TIMER", "COMM", "MOUSE", "NOMOUSE",
                "OEM", "CGA", "EGA", "VGA", "HERCULES", "IBM",
            }:
                continue
            orphans.append({
                "line": line_no,
                "opcode": opcode,
                "target": target,
                "context": text.splitlines()[line_no - 1].strip()[:80],
            })

    return orphans


def main():
    asm_files = sorted(SRC.rglob("seg*.asm"))
    total_orphans = 0
    mod_stats: dict[str, int] = defaultdict(int)
    seg_stats: dict[str, int] = defaultdict(int)
    opcode_stats: dict[str, int] = defaultdict(int)
    detail: list[dict] = []

    for path in asm_files:
        rel = path.relative_to(SRC)
        module = rel.parts[0] if rel.parts else "?"
        seg_name = path.stem

        orphans = audit_file(path)
        if orphans:
            total_orphans += len(orphans)
            mod_stats[module] += len(orphans)
            seg_stats[str(rel)] = len(orphans)
            for o in orphans:
                opcode_stats[o["opcode"]] += 1
                detail.append({
                    "module": module,
                    "segment": str(rel),
                    "line": o["line"],
                    "opcode": o["opcode"],
                    "target": o["target"],
                    "context": o["context"],
                })

    print(f"Total orphan references: {total_orphans}")
    print(f"Files with orphans: {len(seg_stats)} / {len(asm_files)}")
    print(f"Modules affected: {len(mod_stats)}")
    print()

    print("By opcode:")
    for op, n in sorted(opcode_stats.items(), key=lambda x: -x[1])[:15]:
        print(f"  {op:12s} {n:5d}")
    print()

    print("By module (top 20):")
    for mod, n in sorted(mod_stats.items(), key=lambda x: -x[1])[:20]:
        print(f"  {mod:12s} {n:5d}")
    print()

    print("By segment (top 20):")
    for seg, n in sorted(seg_stats.items(), key=lambda x: -x[1])[:20]:
        print(f"  {seg:40s} {n:5d}")

    # Save full detail
    out = ROOT / "state" / "analyze" / "pass_c2_orphan_refs.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps({
        "total": total_orphans,
        "files_affected": len(seg_stats),
        "modules_affected": len(mod_stats),
        "by_opcode": dict(sorted(opcode_stats.items(), key=lambda x: -x[1])),
        "by_module": dict(sorted(mod_stats.items(), key=lambda x: -x[1])),
        "by_segment": dict(sorted(seg_stats.items(), key=lambda x: -x[1])),
        "orphans": detail,
    }, indent=2), encoding="utf-8")
    print(f"\nFull detail saved: {out}")


if __name__ == "__main__":
    main()
