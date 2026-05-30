#!/usr/bin/env python3
"""C2 Viability Analysis: what % of L_XXXX orphan refs can be auto-resolved.

For each L_XXXX orphan ref, check if the target offset falls on an
instruction boundary (start of a line with hex bytes). If yes, adding
a label is viable. If no, the target is in the middle of an instruction
or data, and cannot be labeled without re-disassembly.
"""
from __future__ import annotations

import json
import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")


def analyze_viability():
    with open(ROOT / "state" / "analyze" / "pass_c2_orphan_refs.json") as f:
        data = json.load(f)

    # Collect all L_XXXX refs
    l_refs = [o for o in data["orphans"] if re.match(r"^L_[0-9A-Fa-f]+$", o["target"])]

    # Pre-compute offset maps for all segments
    seg_offsets: dict[str, set[int]] = {}
    for path in SRC.rglob("seg*.asm"):
        rel = str(path.relative_to(SRC))
        text = path.read_text(encoding="ascii", errors="replace")
        offset = 0
        boundaries = set()
        for line in text.splitlines():
            m = _RE_HEX.search(line)
            if m:
                boundaries.add(offset)
                offset += len(m.group(1).split())
        seg_offsets[rel] = boundaries

    on_boundary = 0
    off_boundary = 0
    missing_file = 0

    examples_boundary = []
    examples_off = []

    for o in l_refs[:1000]:  # Sample first 1000
        target_offset = int(o["target"][2:], 16)
        seg = o["segment"]

        if seg not in seg_offsets:
            missing_file += 1
            continue

        if target_offset in seg_offsets[seg]:
            on_boundary += 1
            if len(examples_boundary) < 5:
                examples_boundary.append((seg, o["line"], o["target"], target_offset))
        else:
            off_boundary += 1
            if len(examples_off) < 5:
                examples_off.append((seg, o["line"], o["target"], target_offset))

    print("=== C2 Viability Analysis (L_XXXX refs) ===")
    print(f"Total L_XXXX refs analyzed: {on_boundary + off_boundary + missing_file}")
    print(f"  On instruction boundary (solvable):  {on_boundary:5d}  ({100*on_boundary/(on_boundary+off_boundary+missing_file):.1f}%)")
    print(f"  Off instruction boundary (hard):     {off_boundary:5d}  ({100*off_boundary/(on_boundary+off_boundary+missing_file):.1f}%)")
    print(f"  Missing file:                        {missing_file:5d}")
    print()
    print("Examples ON boundary (solvable):")
    for seg, line, target, off in examples_boundary:
        print(f"  {seg:30s} L{line:4d} {target} @ 0x{off:04X}")
    print()
    print("Examples OFF boundary (needs re-disassembly):")
    for seg, line, target, off in examples_off:
        print(f"  {seg:30s} L{line:4d} {target} @ 0x{off:04X}")

    return {
        "total": on_boundary + off_boundary + missing_file,
        "on_boundary": on_boundary,
        "off_boundary": off_boundary,
        "missing_file": missing_file,
    }


if __name__ == "__main__":
    analyze_viability()
