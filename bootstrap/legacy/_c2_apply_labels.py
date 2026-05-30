#!/usr/bin/env python3
"""C2 Implementation: Auto-insert missing L_XXXX labels into .asm files.

Only processes refs where the target offset is ON an instruction boundary.
These are the ~182 refs (14.9%) that are auto-solvable.

For each such ref:
  1. Find the source .asm file
  2. Calculate offset of each instruction line
  3. Find the line at the target offset
  4. Insert 'L_XXXX:' before that line's instruction
  5. Verify no duplicate label names exist
"""
from __future__ import annotations

import json
import re
import shutil
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent.parent.parent
SRC = ROOT / "src"
STATE = ROOT / "state" / "analyze"

_RE_HEX = re.compile(r";\s*([0-9A-Fa-f]{2}(?:\s+[0-9A-Fa-f]{2})*)\s*$")


def compute_offset_map(path: Path) -> dict[int, int]:
    """Return map: offset -> line_number for instruction lines."""
    text = path.read_text(encoding="ascii", errors="replace")
    offset = 0
    offset_map = {}
    for i, line in enumerate(text.splitlines(), 1):
        m = _RE_HEX.search(line)
        if m:
            offset_map[offset] = i
            offset += len(m.group(1).split())
    return offset_map


def get_all_defined_labels(path: Path) -> set[str]:
    """Return all label names already defined in the file."""
    text = path.read_text(encoding="ascii", errors="replace")
    labels = set()
    for line in text.splitlines():
        # Match label definition like "LABEL:" at start of line
        m = re.match(r"^\s*([A-Za-z_][A-Za-z0-9_]*):\s*", line)
        if m:
            labels.add(m.group(1))
    return labels


def apply_labels():
    with open(STATE / "pass_c2_orphan_refs.json") as f:
        data = json.load(f)

    # Collect L_XXXX refs that are on-boundary
    viable_refs = []
    for o in data["orphans"]:
        target = o["target"]
        if not re.match(r"^L_[0-9A-Fa-f]+$", target):
            continue
        seg = o["segment"]
        path = SRC / seg
        if not path.exists():
            continue

        # Compute offset map
        offset_map = compute_offset_map(path)
        target_offset = int(target[2:], 16)

        if target_offset in offset_map:
            viable_refs.append({
                **o,
                "target_line": offset_map[target_offset],
            })

    print(f"Viable L_XXXX refs to fix: {len(viable_refs)}")

    # Group by file
    by_file: dict[Path, list[dict]] = defaultdict(list)
    for ref in viable_refs:
        by_file[SRC / ref["segment"]].append(ref)

    fixed = 0
    skipped = 0

    for path, refs in by_file.items():
        text = path.read_text(encoding="ascii", errors="replace")
        lines = text.splitlines()
        existing_labels = get_all_defined_labels(path)

        # Sort refs by target_line descending so we can insert from bottom to top
        # without affecting line numbers
        refs.sort(key=lambda r: r["target_line"], reverse=True)

        modified = False
        for ref in refs:
            target = ref["target"]
            line_no = ref["target_line"]  # 1-based

            if target in existing_labels:
                print(f"  SKIP {path.name}: {target} already defined")
                skipped += 1
                continue

            # Insert label before the instruction line
            idx = line_no - 1  # 0-based
            original = lines[idx]
            # Check if line already starts with a label
            if re.match(r"^\s*[A-Za-z_][A-Za-z0-9_]*:\s*", original):
                # Line already has a label, prepend ours
                indent = len(original) - len(original.lstrip())
                lines[idx] = original[:indent] + target + ":\n" + original
            else:
                # Find indentation of the instruction
                stripped = original.lstrip()
                indent = len(original) - len(stripped)
                lines[idx] = original[:indent] + target + ":\n" + original

            existing_labels.add(target)
            modified = True
            fixed += 1

        if modified:
            # Backup original
            backup = path.with_suffix(path.suffix + ".c2.bak")
            if not backup.exists():
                shutil.copy2(path, backup)

            # Write modified
            path.write_text("\n".join(lines) + ("\n" if text.endswith("\n") else ""), encoding="ascii", errors="replace")
            print(f"  FIXED {path.name}: {len([r for r in refs if r['target'] in existing_labels])} labels inserted")

    print(f"\n=== C2 Results ===")
    print(f"Labels inserted: {fixed}")
    print(f"Labels skipped (already existed): {skipped}")
    print(f"Files modified: {len([f for f, refs in by_file.items() if any(r['target'] not in get_all_defined_labels(f) for r in refs)])}")

    # Save summary
    summary = {
        "total_viable": len(viable_refs),
        "fixed": fixed,
        "skipped": skipped,
        "files_modified": len(by_file),
        "refs": [{"segment": r["segment"], "line": r["line"], "target": r["target"], "target_line": r["target_line"]} for r in viable_refs],
    }
    (STATE / "pass_c2_applied.json").write_text(json.dumps(summary, indent=2), encoding="utf-8")
    print(f"Summary saved: {STATE / 'pass_c2_applied.json'}")


if __name__ == "__main__":
    apply_labels()
