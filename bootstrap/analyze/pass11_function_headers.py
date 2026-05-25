"""Pass 11: insert Microsoft-style function header blocks above each function.

For each function discovered in pass 1b, insert a comment block immediately
before the function's first line (the L_xxxx: label) that summarizes the
function in source-style:

    ;-------------------------------------------------------------------------
    ; sub_0000   offset=0x0000  size=171 instr  segment=seg1.asm
    ;
    ; Classification (pass8): c_high  (score C=11, ASM=2)
    ; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, cleans args)
    ;
    ; Far API calls:
    ;   KERNEL.LSTRLEN(LPSTR lpsz) -> INT
    ;   USER.GETDC(HWND hWnd) -> HDC
    ;   USER.RELEASEDC(HWND hWnd, HDC hDC) -> INT
    ;   GDI.PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
    ;
    ; Near calls (internal): L_13C9
    ;-------------------------------------------------------------------------
    L_0000:
        push    bp                              ; 55
        ...

This is 100% byte-safe (comment lines only). The builder ignores any line
that has no instruction and no `db` directive.

Output:
  Modified `src/<MODULE>/seg*.asm` files (with backup).
  `state/analyze/pass11.json` summary.

Usage:
    python bootstrap/analyze/pass11_function_headers.py            # all modules
    python bootstrap/analyze/pass11_function_headers.py CLOCK CALC # specific
    python bootstrap/analyze/pass11_function_headers.py --dry-run  # report only
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
from win1x_api_signatures import SIGNATURES  # noqa: E402

RE_LABEL = re.compile(r"^L_([0-9A-Fa-f]+):\s*$")

PASS_NAME = "pass11_function_headers"
PASS1B_DIR = STATE_DIR / "pass1b"
PASS8_DIR = STATE_DIR / "pass8"
BACKUP_DIR = REPO / "backups" / f"pass11-{time.strftime('%Y-%m-%d-%H%M%S')}"


def format_api_signature(api_name: str) -> str:
    """Return a C-prototype-style line for an API, or just the name if unknown."""
    sig = SIGNATURES.get(api_name.upper())
    if not sig:
        return api_name
    params = sig.get("params", [])
    if params:
        param_str = ", ".join(f"{p['type']} {p['name']}" for p in params)
    else:
        param_str = "void"
    ret = sig.get("return", "?")
    return f"{api_name}({param_str}) -> {ret}"


def extract_api_name(call_far_str: str) -> str | None:
    """Extract 'LSTRCPY' from 'far KERNEL.LSTRCPY' or similar."""
    s = call_far_str.strip()
    if "." in s:
        return s.rsplit(".", 1)[-1].strip().upper()
    return None


def build_header(fn: dict[str, Any], cls_data: dict[str, Any] | None) -> list[str]:
    """Build the header comment block (list of lines, NOT including trailing newline)."""
    name = fn.get("name", "?")
    offset = fn.get("offset")
    offset_str = f"0x{offset:04X}" if isinstance(offset, int) else "?"
    size = fn.get("size_bytes")
    num_instr = fn.get("num_instructions", 0)
    seg = fn.get("segment_file", "?")
    prologue = fn.get("prologue", "?")
    epilogue = fn.get("epilogue", "?")
    calls_far = fn.get("calls_far", [])
    calls_near = fn.get("calls_near", [])

    # Classification info
    if cls_data:
        verdict = cls_data.get("verdict", "?")
        sc = cls_data.get("score_c", 0)
        sa = cls_data.get("score_asm", 0)
        cls_line = f"; Classification (pass8): {verdict}  (score C={sc}, ASM={sa})"
    else:
        cls_line = "; Classification (pass8): n/a"

    epi_note = ""
    if epilogue == "retf_n":
        epi_note = "   (PASCAL FAR, callee cleans args)"
    elif epilogue == "ret_n":
        epi_note = "   (PASCAL NEAR, callee cleans args)"
    elif epilogue == "iret":
        epi_note = "   (INTERRUPT HANDLER)"

    size_str = f"size={size}B" if size is not None else f"size={num_instr} instr"

    lines = [
        ";-------------------------------------------------------------------------",
        f"; {name}   offset={offset_str}  {size_str}  segment={seg}",
        ";",
        cls_line,
        f"; Prologue: {prologue}     Epilogue: {epilogue}{epi_note}",
    ]

    if calls_far:
        # dedupe while preserving order
        seen: set[str] = set()
        ordered: list[str] = []
        for c in calls_far:
            api = extract_api_name(c)
            if api and api not in seen:
                seen.add(api)
                ordered.append(api)
        if ordered:
            lines.append(";")
            lines.append("; Far API calls:")
            for api in ordered:
                lines.append(f";   {format_api_signature(api)}")

    if calls_near:
        # only show first 8 to keep header compact
        shown = calls_near[:8]
        more = len(calls_near) - len(shown)
        lines.append(";")
        if more > 0:
            lines.append(f"; Near calls (first {len(shown)} of {len(calls_near)}): {', '.join(shown)} ...")
        else:
            lines.append(f"; Near calls (internal): {', '.join(shown)}")

    lines.append(";-------------------------------------------------------------------------")
    return lines


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    """Insert headers in all seg*.asm of a module."""
    pass1b_file = PASS1B_DIR / f"{module}.json"
    if not pass1b_file.exists():
        return {"module": module, "error": "no pass1b data"}

    with pass1b_file.open("r", encoding="utf-8") as f:
        pass1b_data = json.load(f)
    funcs = pass1b_data.get("functions", [])

    # Build a map of (segment_file, name) -> classification from pass8
    pass8_file = PASS8_DIR / f"{module}.json"
    cls_map: dict[tuple[str, str], dict[str, Any]] = {}
    if pass8_file.exists():
        with pass8_file.open("r", encoding="utf-8") as f:
            pass8_data = json.load(f)
        for f8 in pass8_data.get("functions", []):
            key = (f8.get("segment_file", ""), f8.get("name", ""))
            cls_map[key] = f8.get("classification", {})

    # Group functions by segment file, then by start_line (descending so we
    # can insert without invalidating later indices).
    by_seg: dict[str, list[dict[str, Any]]] = {}
    for fn in funcs:
        seg = fn.get("segment_file", "")
        by_seg.setdefault(seg, []).append(fn)

    total_headers = 0
    files_modified = 0
    per_file_stats: list[dict[str, Any]] = []

    for seg_name, fns in by_seg.items():
        asm_path = REPO / "src" / module / seg_name
        if not asm_path.exists():
            continue

        with asm_path.open("r", encoding="utf-8", errors="replace") as f:
            lines = f.readlines()

        # Build a CURRENT map of label_hex_offset -> line index (0-based).
        # This is robust to prior insertions (pass10 API annotations etc.).
        label_index: dict[int, int] = {}
        for idx, line in enumerate(lines):
            m = RE_LABEL.match(line.strip())
            if m:
                off = int(m.group(1), 16)
                label_index[off] = idx

        # Process functions by descending current line index so we don't
        # invalidate earlier indices when inserting.
        positioned: list[tuple[int, dict[str, Any]]] = []
        for fn in fns:
            off = fn.get("offset")
            if not isinstance(off, int):
                continue
            if off not in label_index:
                # First function in segment often has no L_0000 label; skip.
                continue
            positioned.append((label_index[off], fn))

        positioned.sort(key=lambda x: x[0], reverse=True)

        added_here = 0
        already_present = 0

        for insert_idx, fn in positioned:
            # Walk backwards from the label line to skip any directly-preceding
            # API annotation lines (`; --> NAME(...)`) so we don't split an
            # annotation/call pair when the function we're entering happens to
            # follow such a pair from the previous function.
            real_insert = insert_idx
            while real_insert > 0 and lines[real_insert - 1].lstrip().startswith("; --> "):
                real_insert -= 1

            # Idempotency: if a header is already right above, skip.
            if real_insert > 0 and lines[real_insert - 1].startswith(";----"):
                already_present += 1
                continue

            cls_data = cls_map.get((seg_name, fn.get("name", "")), {})
            header_lines = build_header(fn, cls_data)
            block = [h + "\n" for h in header_lines]
            lines[real_insert:real_insert] = block
            added_here += 1

        if added_here > 0 and not dry_run:
            BACKUP_DIR.mkdir(parents=True, exist_ok=True)
            backup_path = BACKUP_DIR / module / seg_name
            backup_path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(asm_path, backup_path)
            with asm_path.open("w", encoding="utf-8", newline="") as f:
                f.writelines(lines)
            files_modified += 1

        total_headers += added_here
        per_file_stats.append({
            "file": seg_name,
            "headers_added": added_here,
            "already_present": already_present,
        })

    return {
        "module": module,
        "files_modified": files_modified,
        "total_headers_added": total_headers,
        "per_file": per_file_stats,
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("modules", nargs="*", help="Specific modules (default: all)")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    modules = args.modules if args.modules else list_modules()
    log(PASS_NAME, f"processing {len(modules)} module(s); dry_run={args.dry_run}")

    all_results = []
    total_headers = 0
    total_files = 0
    for mod in modules:
        result = process_module(mod, args.dry_run)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: SKIP ({result['error']})")
            continue
        all_results.append(result)
        total_headers += result["total_headers_added"]
        total_files += result["files_modified"]
        log(
            PASS_NAME,
            f"  {mod}: headers={result['total_headers_added']:5d} "
            f"files={result['files_modified']}"
        )

    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "modules_processed": len(all_results),
        "total_headers_added": total_headers,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out_file = STATE_DIR / f"pass11{'_dryrun' if args.dry_run else ''}.json"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: +{total_headers} headers in {total_files} files")
    if not args.dry_run and total_headers > 0:
        log(PASS_NAME, f"backup at: {BACKUP_DIR}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
