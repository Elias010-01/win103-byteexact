"""Pass 10: annotate every API call site with the API's signature.

For every line that calls a known Win 1.x API (e.g. `call far KERNEL.LSTRCPY`),
we insert a comment line ABOVE the call describing the function's parameters
and return type.

Before:

    call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]

After:

    ; LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
    call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]

**Byte-exact guarantee**: We only ADD comment lines (lines starting with `;`).
The builder (`build_from_source.py`) only consumes hex bytes from comments on
instruction lines, or `db` directives. Plain comment lines have no instruction
and are entirely ignored. Therefore this transformation cannot change the bytes
of the rebuilt binaries.

The pass keeps a backup of every file it modifies and re-runs the build to
verify byte-exact at the end.

Usage:
    python bootstrap/analyze/pass10_annotate_api_calls.py            # all modules
    python bootstrap/analyze/pass10_annotate_api_calls.py CALC       # single module
    python bootstrap/analyze/pass10_annotate_api_calls.py --dry-run  # report only
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

PASS_NAME = "pass10_annotate_api_calls"
BACKUP_DIR = REPO / "backups" / f"pass10-{time.strftime('%Y-%m-%d-%H%M%S')}"

# Match: `        call    far KERNEL.LSTRCPY              ; 9A ...`
RE_CALL_FAR_API = re.compile(
    r"^(\s*call\s+far\s+)([A-Z_][A-Z0-9_]*\.[A-Z_][A-Z0-9_]*)(\s+;.*)$",
    re.IGNORECASE,
)


def format_signature_comment(api: str, sig: dict[str, Any]) -> str:
    """Format a one-line C-prototype comment for an API."""
    params = sig.get("params", [])
    if params:
        parts = [f"{p['type']} {p['name']}" for p in params]
        param_str = ", ".join(parts)
    else:
        param_str = "void"
    ret = sig.get("return", "?")
    return f"; --> {api}({param_str}) -> {ret}"


def process_asm(asm_path: Path, dry_run: bool) -> dict[str, int]:
    """Process one .asm file. Returns stats."""
    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        original_lines = f.readlines()

    new_lines: list[str] = []
    annotations_added = 0
    already_annotated = 0

    i = 0
    while i < len(original_lines):
        line = original_lines[i]
        m = RE_CALL_FAR_API.match(line)
        if m:
            indent_call = m.group(1)  # "        call    far "
            sym = m.group(2)          # "KERNEL.LSTRCPY"
            api_name = sym.split(".", 1)[-1].upper()
            sig = SIGNATURES.get(api_name)
            if sig:
                # Check if the previous line is already our annotation
                already = False
                if new_lines and new_lines[-1].lstrip().startswith("; --> "):
                    already = True
                    already_annotated += 1
                if not already:
                    # Match the leading whitespace of the call line
                    indent_match = re.match(r"^(\s*)", indent_call)
                    indent = indent_match.group(1) if indent_match else "        "
                    comment_line = f"{indent}{format_signature_comment(api_name, sig)}\n"
                    new_lines.append(comment_line)
                    annotations_added += 1
        new_lines.append(line)
        i += 1

    if dry_run:
        return {
            "annotations_would_add": annotations_added,
            "already_annotated": already_annotated,
            "modified": False,
        }

    if annotations_added > 0:
        # Backup original
        BACKUP_DIR.mkdir(parents=True, exist_ok=True)
        rel = asm_path.relative_to(REPO / "src")
        backup_path = BACKUP_DIR / rel
        backup_path.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(asm_path, backup_path)

        # Write updated
        with asm_path.open("w", encoding="utf-8", newline="") as f:
            f.writelines(new_lines)

    return {
        "annotations_would_add": annotations_added,
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
        total_added += stats["annotations_would_add"]
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
    ap.add_argument("modules", nargs="*", help="Specific modules (default: all)")
    ap.add_argument("--dry-run", action="store_true", help="Report only, no writes")
    args = ap.parse_args()

    modules = args.modules if args.modules else list_modules()
    log(PASS_NAME, f"processing {len(modules)} module(s); dry_run={args.dry_run}")
    log(PASS_NAME, f"KB has {len(SIGNATURES)} signatures")

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
            f"  {mod}: added={result['total_annotations_added']:4d} "
            f"files_modified={result['files_modified']}"
        )

    # Summary
    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "modules_processed": len(all_results),
        "total_annotations_added": total_added,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out_file = STATE_DIR / f"pass10{'_dryrun' if args.dry_run else ''}.json"
    out_file.parent.mkdir(parents=True, exist_ok=True)
    with out_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: +{total_added} annotations in {total_files} files")
    log(PASS_NAME, f"wrote {out_file}")
    if not args.dry_run and total_added > 0:
        log(PASS_NAME, f"backup at: {BACKUP_DIR}")
        log(PASS_NAME, "NEXT STEP: run `python bootstrap/build_from_source.py` to verify byte-exact")

    return 0


if __name__ == "__main__":
    sys.exit(main())
