"""Pass 15: label each push instruction before a known API call with what arg it is.

For each `call far MODULE.API` whose API is in our signature KB, walk backwards
to find the push sequence that prepares its arguments and annotate each push
line with which named parameter it pushes.

Before:

    push    ds                              ; 1E
    push    ax                              ; 50
    push    word ptr [bp - 6]               ; FF 76 FA
    push    word ptr [bp - 8]               ; FF 76 F8
    ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
    call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]

After (annotations inserted as separate comment lines):

    push    ds                              ; 1E
    ;   ^ arg lpszDest (high/segment)
    push    ax                              ; 50
    ;   ^ arg lpszDest (low/offset)
    push    word ptr [bp - 6]               ; FF 76 FA
    ;   ^ arg lpszSrc (high/segment)
    push    word ptr [bp - 8]               ; FF 76 F8
    ;   ^ arg lpszSrc (low/offset)
    ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
    call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]

PASCAL FAR convention recap:
  - params are pushed left-to-right (in declaration order)
  - therefore the LAST-declared param is on top of the stack (closest to call)
  - a WORD param is 1 push; a DWORD/LPSTR/FARPROC is 2 pushes (high then low)

This is byte-safe (comment-only lines).
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
from win1x_api_signatures import SIGNATURES, type_size  # noqa: E402

PASS_NAME = "pass15_arg_labels"
BACKUP_DIR = REPO / "backups" / f"pass15-{time.strftime('%Y-%m-%d-%H%M%S')}"

# Match a `call far KERNEL.API` line.
RE_CALL_FAR_API = re.compile(
    r"^(\s*call\s+far\s+)([A-Z_][A-Z0-9_]*\.[A-Z_][A-Z0-9_]*)\b",
    re.IGNORECASE,
)
# Match a push line: `    push <operand>    ; bytes`
RE_PUSH = re.compile(r"^(\s*)(push)\s+(\S.*?)(\s+;.*)?$", re.IGNORECASE)
# Match an instruction (anything that starts with whitespace + word-mnemonic + ;)
RE_INSTR_LINE = re.compile(r"^\s+([a-z][a-z0-9]*)\b", re.IGNORECASE)
# Match a label `L_XXXX:` or any `IDENT:` at column 0-2
RE_LABEL = re.compile(r"^([A-Za-z_][A-Za-z0-9_]*):\s*$")
# Skip lines (whitespace / comments / header banners)
RE_COMMENT = re.compile(r"^\s*;")
RE_BLANK = re.compile(r"^\s*$")

# Mnemonics that break the backward scan (we stop if we see one of these
# because the push sequence belongs to a different call or function).
STOP_MNEMONICS = {"call", "ret", "retf", "iret", "jmp"}


def find_push_for_api(lines: list[str], call_idx: int, api_name: str) -> list[tuple[int, str]]:
    """Walk backwards from `call_idx` to find pushes that supply the API's args.

    Returns a list of (line_index, label_text) for annotations to insert.
    Labels are inserted AFTER each push line (so insertion is at line_index+1).
    """
    sig = SIGNATURES.get(api_name.upper())
    if not sig:
        return []
    params = sig.get("params_with_offsets", [])
    if not params:
        return []

    # Build a flat list of (arg_name, sub_label) pairs IN PUSH ORDER (top of stack first).
    # The LAST declared parameter is pushed LAST → it's the first one we encounter
    # when scanning backwards.
    sub_labels: list[tuple[str, str]] = []
    for p in reversed(params):
        name = p["name"]
        size = p["size"]
        if size == 4:
            # DWORD/LPSTR: pushed high-then-low → so when scanning backwards
            # we see low first, then high.
            sub_labels.append((name, "low/offset"))
            sub_labels.append((name, "high/segment"))
        elif size == 2:
            sub_labels.append((name, ""))
        else:
            sub_labels.append((name, f"size {size}B"))

    annotations: list[tuple[int, str]] = []

    sub_idx = 0
    i = call_idx - 1
    while i >= 0 and sub_idx < len(sub_labels):
        line = lines[i]

        # Skip blank lines and comment-only lines
        if RE_BLANK.match(line) or RE_COMMENT.match(line):
            i -= 1
            continue

        # Stop on label boundaries (different function / branch target)
        if RE_LABEL.match(line):
            break

        # Stop on a different call / jmp / ret (different scope)
        m_instr = RE_INSTR_LINE.match(line)
        if m_instr:
            mnem = m_instr.group(1).lower()
            if mnem in STOP_MNEMONICS:
                break

        # If this is a push, consume one sub_label
        m_push = RE_PUSH.match(line)
        if m_push:
            name, sub = sub_labels[sub_idx]
            indent = m_push.group(1)
            if sub:
                label = f"{indent};   ^ arg {name} ({sub})"
            else:
                label = f"{indent};   ^ arg {name}"
            annotations.append((i, label))
            sub_idx += 1

        i -= 1

    # Only return annotations if we matched ALL sub_labels (otherwise the
    # mapping is unreliable — probably register-based or computed args).
    if sub_idx != len(sub_labels):
        return []
    return annotations


def process_asm(asm_path: Path, dry_run: bool) -> dict[str, Any]:
    """Process one .asm file."""
    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        lines = [l.rstrip("\n") for l in f.readlines()]

    # Collect all (call_idx, api_name) pairs first
    call_sites: list[tuple[int, str]] = []
    for idx, line in enumerate(lines):
        m = RE_CALL_FAR_API.match(line)
        if m:
            sym = m.group(2)
            api = sym.rsplit(".", 1)[-1].upper()
            if api in SIGNATURES:
                call_sites.append((idx, api))

    # For each call site, compute annotations
    all_annotations: list[tuple[int, str]] = []  # (line_index_after_which_to_insert, text)
    annotated_calls = 0
    for call_idx, api in call_sites:
        ann = find_push_for_api(lines, call_idx, api)
        if ann:
            annotated_calls += 1
            all_annotations.extend(ann)

    if not all_annotations:
        return {
            "calls_seen": len(call_sites),
            "calls_annotated": annotated_calls,
            "labels_added": 0,
            "modified": False,
        }

    # Idempotency: don't insert if the next line already starts with our marker
    new_annotations = []
    for line_idx, label in all_annotations:
        next_line = lines[line_idx + 1] if line_idx + 1 < len(lines) else ""
        if ";   ^ arg" in next_line:
            continue
        new_annotations.append((line_idx, label))

    if not new_annotations:
        return {
            "calls_seen": len(call_sites),
            "calls_annotated": annotated_calls,
            "labels_added": 0,
            "modified": False,
            "already_annotated": True,
        }

    # Insert in DESCENDING order so indices remain valid.
    new_annotations.sort(key=lambda x: x[0], reverse=True)

    new_lines = list(lines)
    for line_idx, label in new_annotations:
        new_lines.insert(line_idx + 1, label)

    if dry_run:
        return {
            "calls_seen": len(call_sites),
            "calls_annotated": annotated_calls,
            "labels_added": len(new_annotations),
            "modified": False,
        }

    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    rel = asm_path.relative_to(REPO / "src")
    bp = BACKUP_DIR / rel
    bp.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(asm_path, bp)

    with asm_path.open("w", encoding="utf-8", newline="") as f:
        f.write("\n".join(new_lines) + "\n")

    return {
        "calls_seen": len(call_sites),
        "calls_annotated": annotated_calls,
        "labels_added": len(new_annotations),
        "modified": True,
    }


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))
    if not seg_files:
        return {"module": module, "error": "no seg*.asm"}

    total_labels = 0
    total_annotated_calls = 0
    files_modified = 0
    per_file = []
    for sf in seg_files:
        stats = process_asm(sf, dry_run)
        total_labels += stats.get("labels_added", 0)
        total_annotated_calls += stats.get("calls_annotated", 0)
        if stats.get("modified"):
            files_modified += 1
        per_file.append({"file": sf.name, **stats})

    return {
        "module": module,
        "files_modified": files_modified,
        "total_labels_added": total_labels,
        "total_calls_annotated": total_annotated_calls,
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
    total_labels = 0
    total_calls = 0
    total_files = 0
    for mod in modules:
        result = process_module(mod, args.dry_run)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: SKIP ({result['error']})")
            continue
        all_results.append(result)
        total_labels += result["total_labels_added"]
        total_calls += result["total_calls_annotated"]
        total_files += result["files_modified"]
        log(
            PASS_NAME,
            f"  {mod}: labels={result['total_labels_added']:4d} "
            f"calls_annotated={result['total_calls_annotated']:3d} "
            f"files={result['files_modified']}"
        )

    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "modules_processed": len(all_results),
        "total_labels_added": total_labels,
        "total_calls_annotated": total_calls,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out_file = STATE_DIR / f"pass15{'_dryrun' if args.dry_run else ''}.json"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: +{total_labels} labels, {total_calls} calls annotated, {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
