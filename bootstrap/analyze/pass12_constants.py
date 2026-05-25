"""Pass 12: annotate `mov reg, IMM` instructions with Win 1.x constant names.

For every instruction line of the form:

    mov     ax, 0x0001                      ; B8 01 00

If `0x0001` is a known Win 1.x constant (and the value is in our TOP_SAFE
set to avoid noise), append a comment with the symbolic name:

    mov     ax, 0x0001                      ; B8 01 00 ; WM_CREATE

**Byte-exact guarantee**: We do NOT modify the bytes column. We append after
the byte comment as a SECOND `;`-comment. The builder reads bytes from the
first comment hex sequence; additional `;` is ignored.

Verified test: build_from_source.py uses `_RE_COMMENT_HEX` to match the comment
content, which has end-anchor `$`. If we add `; NAME` after the bytes, the
regex won't match — bytes are extracted via the comment hex pattern that
matches strictly hex+spaces. Adding text after invalidates the match, which
WOULD break byte extraction.

To stay safe, we use a slightly different approach: we put the constant
name comment on a NEW LINE ABOVE the mov, just like pass10/pass11:

    ; WM_CREATE
        mov     ax, 0x0001                      ; B8 01 00

Output:
  Modified `src/<MODULE>/seg*.asm` (with backup).
  `state/analyze/pass12.json` summary.
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import sys
import time
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402
from win1x_constants import get_constant_name, TOP_SAFE  # noqa: E402

PASS_NAME = "pass12_constants"
BACKUP_DIR = REPO / "backups" / f"pass12-{time.strftime('%Y-%m-%d-%H%M%S')}"

# Match a `mov  reg, IMM ; bytes` instruction line.
# IMM can be:
#   - 0xHHHH (hex with 0x prefix)
#   - HHHh   (hex with h suffix)
#   - decimal
RE_MOV_IMM = re.compile(
    r"^(\s*mov\s+(?:ax|bx|cx|dx|si|di|al|ah|bl|bh|cl|ch|dl|dh)\s*,\s*)"
    r"(0x[0-9A-Fa-f]+|[0-9]+|[0-9A-Fa-f]+h)"
    r"(\s+;.*)$",
    re.IGNORECASE,
)


def parse_imm(s: str) -> int | None:
    """Parse an immediate string in Win 1.x asm style."""
    s = s.strip()
    try:
        if s.lower().startswith("0x"):
            return int(s, 16)
        if s.lower().endswith("h"):
            return int(s[:-1], 16)
        if s.isdigit():
            return int(s)
        # Try hex without prefix
        return int(s, 16)
    except ValueError:
        return None


def process_asm(asm_path: Path, dry_run: bool) -> dict[str, int]:
    """Process one .asm file."""
    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        original_lines = f.readlines()

    new_lines: list[str] = []
    annotations_added = 0
    already_annotated = 0

    i = 0
    while i < len(original_lines):
        line = original_lines[i]
        m = RE_MOV_IMM.match(line.rstrip("\n"))
        if m:
            imm_str = m.group(2)
            value = parse_imm(imm_str)
            if value is not None and value in TOP_SAFE:
                name = get_constant_name(value)
                if name:
                    # Check if already annotated
                    already = False
                    if new_lines and new_lines[-1].lstrip().startswith(";") and name in new_lines[-1]:
                        already = True
                        already_annotated += 1
                    if not already:
                        # Match indentation
                        indent_match = re.match(r"^(\s*)", m.group(1))
                        indent = indent_match.group(1) if indent_match else "        "
                        comment_line = f"{indent}; constant {name}\n"
                        new_lines.append(comment_line)
                        annotations_added += 1
        new_lines.append(line)
        i += 1

    if dry_run:
        return {
            "annotations_added": annotations_added,
            "already_annotated": already_annotated,
            "modified": False,
        }

    if annotations_added > 0:
        BACKUP_DIR.mkdir(parents=True, exist_ok=True)
        rel = asm_path.relative_to(REPO / "src")
        backup_path = BACKUP_DIR / rel
        backup_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(asm_path, backup_path)

        with asm_path.open("w", encoding="utf-8", newline="") as f:
            f.writelines(new_lines)

    return {
        "annotations_added": annotations_added,
        "already_annotated": already_annotated,
        "modified": annotations_added > 0,
    }


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))
    if not seg_files:
        return {"module": module, "error": "no seg*.asm"}

    total_added = 0
    files_modified = 0
    per_file = []
    for sf in seg_files:
        stats = process_asm(sf, dry_run)
        total_added += stats["annotations_added"]
        if stats["modified"]:
            files_modified += 1
        per_file.append({"file": sf.name, **stats})

    return {
        "module": module,
        "files_modified": files_modified,
        "total_annotations_added": total_added,
        "per_file": per_file,
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("modules", nargs="*")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    modules = args.modules if args.modules else list_modules()
    log(PASS_NAME, f"processing {len(modules)} module(s); dry_run={args.dry_run}")

    all_results = []
    total_added = 0
    total_files = 0
    for mod in modules:
        result = process_module(mod, args.dry_run)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: SKIP ({result['error']})")
            continue
        all_results.append(result)
        total_added += result["total_annotations_added"]
        total_files += result["files_modified"]
        log(
            PASS_NAME,
            f"  {mod}: annotations={result['total_annotations_added']:4d} "
            f"files={result['files_modified']}"
        )

    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "modules_processed": len(all_results),
        "total_annotations_added": total_added,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out_file = STATE_DIR / f"pass12{'_dryrun' if args.dry_run else ''}.json"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: +{total_added} annotations in {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
