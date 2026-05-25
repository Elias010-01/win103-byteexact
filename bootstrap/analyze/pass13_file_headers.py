"""Pass 13: enrich the top-of-file banner of each seg*.asm with summary info.

The current top of each seg*.asm file is a short auto-generated banner:

    ; AUTO-GENERATED from original CLOCK segment 1
    ; segment_size=4480 bytes, flags=0x0110
    ; mode: humano legible - instrucciones x86 + bytes raw en comentario ...

We replace it (keeping the format-explanation lines) with a richer banner
that includes per-segment statistics derived from pass1b, pass8, and pass10:

    ; ======================================================================
    ; CLOCK / seg1.asm   (segment 1 of CLOCK.EXE)
    ; ----------------------------------------------------------------------
    ; Functions discovered:        24
    ; Classification (pass8):
    ;   C-origin (high+medium):    17
    ;   ASM-origin (high+medium):   2
    ;   Unclear:                    5
    ; Far API calls:              ...
    ; ======================================================================
    ; (original format header follows)
    ; AUTO-GENERATED from original CLOCK segment 1
    ; ...

This is 100% byte-safe (comments only).

Output:
  Modified `src/<MODULE>/seg*.asm` (with backup).
  `state/analyze/pass13.json` summary.
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import sys
import time
from collections import Counter
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402

PASS_NAME = "pass13_file_headers"
PASS1B_DIR = STATE_DIR / "pass1b"
PASS8_DIR = STATE_DIR / "pass8"
BACKUP_DIR = REPO / "backups" / f"pass13-{time.strftime('%Y-%m-%d-%H%M%S')}"

RE_AUTOGEN = re.compile(r"^; AUTO-GENERATED from original .* segment \d+", re.IGNORECASE)
RE_OUR_BANNER = re.compile(r"^;\s*===")


def collect_segment_stats(module: str, seg_name: str) -> dict[str, Any]:
    """Gather per-segment statistics from pass1b + pass8."""
    p1b = PASS1B_DIR / f"{module}.json"
    p8 = PASS8_DIR / f"{module}.json"

    fns_in_seg: list[dict[str, Any]] = []
    if p1b.exists():
        with p1b.open("r", encoding="utf-8") as f:
            data = json.load(f)
        for fn in data.get("functions", []):
            if fn.get("segment_file") == seg_name:
                fns_in_seg.append(fn)

    cls_by_name: dict[str, str] = {}
    if p8.exists():
        with p8.open("r", encoding="utf-8") as f:
            d8 = json.load(f)
        for fn in d8.get("functions", []):
            if fn.get("segment_file") == seg_name:
                cls_by_name[fn.get("name", "")] = fn.get("classification", {}).get("verdict", "")

    verdict_counts: Counter = Counter()
    all_far_calls: Counter = Counter()
    total_instr = 0
    for fn in fns_in_seg:
        v = cls_by_name.get(fn.get("name", ""), "unclear")
        verdict_counts[v] += 1
        total_instr += fn.get("num_instructions", 0)
        for c in fn.get("calls_far", []):
            if "." in c:
                api = c.rsplit(".", 1)[-1].strip().upper()
                all_far_calls[api] += 1

    return {
        "num_functions": len(fns_in_seg),
        "total_instr": total_instr,
        "verdict_counts": dict(verdict_counts),
        "c_count": verdict_counts["c_high"] + verdict_counts["c_medium"],
        "asm_count": verdict_counts["asm_high"] + verdict_counts["asm_medium"],
        "unclear_count": verdict_counts["unclear"],
        "tiny_count": verdict_counts["tiny"],
        "top_far_calls": all_far_calls.most_common(15),
        "unique_far_calls": len(all_far_calls),
        "total_far_calls": sum(all_far_calls.values()),
    }


def build_banner(module: str, seg_name: str, stats: dict[str, Any]) -> list[str]:
    """Build the enriched banner. Returns list of lines (no trailing newlines)."""
    seg_num = "".join(c for c in seg_name if c.isdigit())
    lines: list[str] = [
        "; ======================================================================",
        f"; {module} / {seg_name}   (segment {seg_num} of {module})",
        "; ----------------------------------------------------------------------",
        f"; Functions discovered (pass1b):     {stats['num_functions']:5d}",
        f"; Total instructions:                {stats['total_instr']:5d}",
        "; ",
        "; Classification (pass8):",
        f";   C-origin (high+medium):          {stats['c_count']:5d}",
        f";   ASM-origin (high+medium):        {stats['asm_count']:5d}",
        f";   Unclear:                         {stats['unclear_count']:5d}",
        f";   Tiny / unclassified:             {stats['tiny_count']:5d}",
        "; ",
        f"; Far API calls in this segment:     {stats['total_far_calls']} ({stats['unique_far_calls']} unique)",
    ]
    if stats["top_far_calls"]:
        lines.append(";   Top:")
        for api, count in stats["top_far_calls"][:8]:
            lines.append(f";     {count:4d}  {api}")
    lines.append("; ======================================================================")
    return lines


def process_asm(module: str, asm_path: Path, dry_run: bool) -> dict[str, Any]:
    """Process one seg*.asm file."""
    seg_name = asm_path.name

    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        original_lines = f.readlines()

    # Idempotency: if our banner is already at the very top, skip
    if original_lines and RE_OUR_BANNER.match(original_lines[0]):
        return {"file": seg_name, "modified": False, "reason": "already enriched"}

    # Find the AUTO-GENERATED line; banner should go right before it
    auto_idx = None
    for idx, line in enumerate(original_lines[:30]):  # only check first 30 lines
        if RE_AUTOGEN.match(line):
            auto_idx = idx
            break
    if auto_idx is None:
        return {"file": seg_name, "modified": False, "reason": "no AUTO-GENERATED header found"}

    stats = collect_segment_stats(module, seg_name)
    banner_lines = build_banner(module, seg_name, stats)
    banner_block = [line + "\n" for line in banner_lines]

    new_lines = banner_block + original_lines

    if dry_run:
        return {"file": seg_name, "modified": False, "would_add": len(banner_lines)}

    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    rel = asm_path.relative_to(REPO / "src")
    backup_path = BACKUP_DIR / rel
    backup_path.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(asm_path, backup_path)

    with asm_path.open("w", encoding="utf-8", newline="") as f:
        f.writelines(new_lines)
    return {"file": seg_name, "modified": True, "lines_added": len(banner_lines)}


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))
    if not seg_files:
        return {"module": module, "error": "no seg*.asm"}

    files_modified = 0
    per_file = []
    for sf in seg_files:
        res = process_asm(module, sf, dry_run)
        if res.get("modified"):
            files_modified += 1
        per_file.append(res)

    return {
        "module": module,
        "files_modified": files_modified,
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
    total_files = 0
    for mod in modules:
        result = process_module(mod, args.dry_run)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: SKIP ({result['error']})")
            continue
        all_results.append(result)
        total_files += result["files_modified"]
        log(
            PASS_NAME,
            f"  {mod}: files_enriched={result['files_modified']}"
        )

    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "modules_processed": len(all_results),
        "total_files_enriched": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out_file = STATE_DIR / f"pass13{'_dryrun' if args.dry_run else ''}.json"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: enriched {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
