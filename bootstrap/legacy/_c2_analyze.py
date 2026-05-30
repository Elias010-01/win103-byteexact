#!/usr/bin/env python3
"""C2 Analysis: classify orphan refs into intra-segment vs cross-segment.

For each orphan ref, determine if its target offset is within the same
segment file (intra-segment, solvable by adding a label) or in a different
segment file (cross-segment, requires EXTRN/PUBLIC or db fallback).
"""
from __future__ import annotations

import json
import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")
_RE_INSTR = re.compile(r"^\s*([a-z]+)\s+(.*?)(\s*;.*)?$", re.IGNORECASE)

def get_offset_map(path: Path) -> dict[int, int]:
    """Return map: offset -> line_number for a segment .asm file."""
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    offset_map = {}
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            byts = m.group(1).split()
            offset_map[offset] = i
            offset += len(byts)
    return offset_map

def get_file_length(path: Path) -> int:
    """Return total byte length of a segment file."""
    text = path.read_text(encoding="ascii", errors="replace")
    total = 0
    for line in text.splitlines():
        m = _RE_HEX.search(line)
        if m:
            total += len(m.group(1).split())
    return total

def classify_orphans():
    with open(ROOT / "state" / "analyze" / "pass_c2_orphan_refs.json") as f:
        data = json.load(f)

    # Pre-compute offset maps for all segments
    seg_offsets: dict[str, dict[int, int]] = {}
    seg_length: dict[str, int] = {}
    for path in SRC.rglob("seg*.asm"):
        rel = str(path.relative_to(SRC))
        seg_offsets[rel] = get_offset_map(path)
        seg_length[rel] = get_file_length(path)

    # Also pre-compute module -> list of segments
    mod_segments: dict[str, list[str]] = defaultdict(list)
    for rel in seg_offsets:
        mod = rel.split("\\")[0]
        mod_segments[mod].append(rel)

    intra_same_seg = 0
    intra_diff_seg = 0
    cross_module = 0
    unknown = 0

    # For analyzing a ref, we need to know its target offset.
    # The ref is like "L_0336" which means offset 0x0336.
    # But we need to know the offset of the instruction itself to compute
    # the relative jump target.

    # First, build a map of all labels defined in all segments
    all_labels: dict[str, list[tuple[str, int]]] = defaultdict(list)  # label -> [(segment, offset)]
    for rel, offsets in seg_offsets.items():
        path = SRC / rel
        text = path.read_text(encoding="ascii", errors="replace")
        for i, line in enumerate(text.splitlines(), 1):
            if ":" in line:
                label_part = line.split(":", 1)[0].strip()
                # Check if this looks like a label definition
                if re.match(r"^[A-Za-z_][A-Za-z0-9_]*$", label_part):
                    # Find offset for this line
                    for off, ln in offsets.items():
                        if ln == i:
                            all_labels[label_part].append((rel, off))
                            break

    # Now classify each orphan
    for o in data["orphans"]:
        seg = o["segment"]
        target = o["target"]
        mod = seg.split("\\")[0]

        # Skip numeric targets
        if re.match(r"^[0-9A-Fa-f]+[Hh]$", target):
            unknown += 1
            continue

        # Check if target is defined in any segment of the same module
        if target in all_labels:
            defs = all_labels[target]
            same_seg = any(d[0] == seg for d in defs)
            same_mod = any(d[0].split("\\")[0] == mod for d in defs)
            if same_seg:
                intra_same_seg += 1
            elif same_mod:
                intra_diff_seg += 1
            else:
                cross_module += 1
        else:
            # Target not defined anywhere. Check if it's a numeric-like label
            # e.g. L_0336 -> offset 0x0336
            m = re.match(r"^L_([0-9A-Fa-f]+)$", target)
            if m:
                target_offset = int(m.group(1), 16)
                # Check if this offset is within the same segment
                if seg in seg_offsets and target_offset in seg_offsets[seg]:
                    intra_same_seg += 1
                elif seg in seg_length and target_offset < seg_length[seg]:
                    # Within same segment but at a non-instruction boundary
                    intra_same_seg += 1
                else:
                    # Check other segments of same module
                    found = False
                    for other_seg in mod_segments[mod]:
                        if other_seg in seg_length and target_offset < seg_length[other_seg]:
                            intra_diff_seg += 1
                            found = True
                            break
                    if not found:
                        cross_module += 1
            else:
                unknown += 1

    print("=== C2 Orphan Ref Classification ===")
    print(f"Total orphan refs: {len(data['orphans'])}")
    print()
    print(f"Intra-segment (same file):     {intra_same_seg:6d}  -> Auto-solvable by adding label")
    print(f"Intra-module (diff segment):   {intra_diff_seg:6d}  -> Needs EXTRN/PUBLIC")
    print(f"Cross-module:                  {cross_module:6d}  -> Needs EXTRN or db fallback")
    print(f"Unknown/numeric:               {unknown:6d}  -> Needs manual review")
    print()
    print(f"Auto-solvable (intra-segment): {100*intra_same_seg/len(data['orphans']):.1f}%")

    return {
        "intra_same_seg": intra_same_seg,
        "intra_diff_seg": intra_diff_seg,
        "cross_module": cross_module,
        "unknown": unknown,
    }


if __name__ == "__main__":
    classify_orphans()
