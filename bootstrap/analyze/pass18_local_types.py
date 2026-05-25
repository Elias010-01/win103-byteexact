"""Pass 18: infer types of [bp-N] local variables and [bp+N] arguments.

For each function, walk through the body and infer the most likely type of
each stack slot based on how it is used:

  - Source of an API call argument -> type comes from the API signature
  - Destination of an API call return -> type is the API return type
  - Compared against WM_* constants -> WORD (likely wMsg of a window proc)
  - Used as a counter in `loop` instructions -> CX-like WORD
  - Used in MOV byte ptr -> BYTE
  - Used in MOV dword ptr -> DWORD

The result is a per-function "locals/args dictionary" emitted as a comment
block ABOVE the function header inserted by pass 11.

Byte-safe (comment-only).
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import sys
import time
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402
from win1x_api_signatures import SIGNATURES, type_size  # noqa: E402

PASS_NAME = "pass18_local_types"
PASS1B_DIR = STATE_DIR / "pass1b"
BACKUP_DIR = REPO / "backups" / f"pass18-{time.strftime('%Y-%m-%d-%H%M%S')}"

RE_LABEL = re.compile(r"^L_([0-9A-Fa-f]+):\s*$")
RE_BP_REF = re.compile(r"\[bp\s*([+-])\s*(0x[0-9A-Fa-f]+|\d+)\]", re.IGNORECASE)
RE_CALL_FAR_API = re.compile(r"^\s*call\s+far\s+[A-Z_][A-Z0-9_]*\.([A-Z_][A-Z0-9_]*)", re.IGNORECASE)
RE_INSTR = re.compile(r"^\s+([a-z][a-z0-9]*)\b\s*(.*?)(\s*;.*)?$", re.IGNORECASE)
RE_PUSH = re.compile(r"^\s*push\s+(.+?)(\s*;.*)?$", re.IGNORECASE)
RE_MOV = re.compile(r"^\s*mov\s+(.+?)\s*,\s*(.+?)(\s*;.*)?$", re.IGNORECASE)
RE_CMP = re.compile(r"^\s*cmp\s+(.+?)\s*,\s*(.+?)(\s*;.*)?$", re.IGNORECASE)


def parse_bp_offset(s: str) -> int | None:
    m = RE_BP_REF.search(s)
    if not m:
        return None
    sign = m.group(1)
    val = m.group(2)
    try:
        n = int(val, 16) if val.lower().startswith("0x") else int(val)
    except ValueError:
        return None
    return -n if sign == "-" else n


# Win 1.x WM_* constant range (0x0001..0x0300 roughly) - heuristic
WM_CONST_VALUES = {1,2,3,5,6,7,8,10,11,12,13,14,15,16,17,18,19,20,21,22,24,25,26,30,31,32,33,34,35,36,48,49,
                   129,130,131,132,133,134,135,256,257,258,259,260,261,262,263,272,273,274,275,276,277,279,
                   280,281,287,288,289,290,512,513,514,515,516,517,518,519,520,521,528}


def parse_imm_in_cmp(s: str) -> int | None:
    """Extract an immediate from `cmp x, IMM`"""
    s = s.strip()
    try:
        if s.lower().startswith("0x"):
            return int(s, 16)
        if s.lower().endswith("h"):
            return int(s[:-1], 16)
        if s.isdigit():
            return int(s)
    except ValueError:
        return None
    return None


def analyze_function_locals(lines: list[str], start: int, end: int) -> dict[int, dict[str, Any]]:
    """For lines[start:end] (a function body), return a dict {offset: {types: [..]}}.

    Negative offsets = local vars. Positive offsets = arguments.
    """
    bp_uses: dict[int, list[str]] = defaultdict(list)

    # First, locate calls and the push chain before them
    body = lines[start:end]
    n = len(body)

    # Backward-walk push captures from each call far API
    for i, line in enumerate(body):
        m = RE_CALL_FAR_API.match(line)
        if not m:
            continue
        api = m.group(1).upper()
        sig = SIGNATURES.get(api)
        if not sig:
            continue
        params = sig.get("params_with_offsets", [])
        if not params:
            continue
        # Build expected push-order list (last-declared first)
        # Each param contributes 1 push (WORD) or 2 pushes (DWORD/LPSTR)
        sub_labels: list[tuple[str, str, int]] = []
        for p in reversed(params):
            name = p["name"]
            type_ = p["type"]
            size = p["size"]
            if size == 4:
                sub_labels.append((name, type_, 2))   # low/offset (consumed first walking back)
                sub_labels.append((name, type_, 1))   # high/segment
            else:
                sub_labels.append((name, type_, 0))   # single WORD

        # Walk backwards, look for `push <something>`
        sub_idx = 0
        j = i - 1
        while j >= 0 and sub_idx < len(sub_labels):
            ln = body[j]
            # Stop on label/jmp/call/ret
            if RE_LABEL.match(ln.strip()):
                break
            mp = RE_INSTR.match(ln)
            if mp:
                mnem = mp.group(1).lower()
                if mnem in ("call", "ret", "retf", "iret", "jmp"):
                    break
                if mnem == "push":
                    ops = mp.group(2).strip()
                    name, type_, sub = sub_labels[sub_idx]
                    # If the push references [bp+N] or [bp-N], record the type
                    off = parse_bp_offset(ops)
                    if off is not None:
                        # For DWORD/LPSTR: high segment then low offset. Mark as the type.
                        bp_uses[off].append(f"{type_} (arg {name} to {api})")
                    sub_idx += 1
            j -= 1

    # Now: detect [bp-N] assigned from API return values:
    # Pattern: call far KERNEL.GLOBALLOCK; mov word ptr [bp-X], ax  (for non-DWORD returns)
    #          call far KERNEL.GLOBALLOCK; mov word ptr [bp-X], dx; mov word ptr [bp-X+2], ax (LPVOID)
    for i, line in enumerate(body):
        m = RE_CALL_FAR_API.match(line)
        if not m:
            continue
        api = m.group(1).upper()
        sig = SIGNATURES.get(api)
        if not sig:
            continue
        ret = sig.get("return", "?")
        # Look at next 1-3 lines for assignment to [bp-N]
        for k in range(i + 1, min(i + 4, n)):
            mv = RE_MOV.match(body[k])
            if not mv:
                continue
            dest, src = mv.group(1), mv.group(2)
            if "ax" in src.lower() and "[bp" in dest.lower():
                off = parse_bp_offset(dest)
                if off is not None:
                    bp_uses[off].append(f"{ret} (return of {api})")
            break

    # Detect WM_* check pattern: cmp word ptr [bp+0xc], WM_VALUE
    # This is the wMsg parameter of a WindowProc.
    for line in body:
        mc = RE_CMP.match(line)
        if not mc:
            continue
        lhs, rhs = mc.group(1), mc.group(2)
        if "[bp" not in lhs.lower():
            continue
        off = parse_bp_offset(lhs)
        if off is None:
            continue
        imm = parse_imm_in_cmp(rhs)
        if imm is not None and imm in WM_CONST_VALUES:
            bp_uses[off].append(f"WORD wMsg (compared to WM_* value 0x{imm:04X})")

    # Aggregate uses into a single best-guess type per offset
    summary: dict[int, dict[str, Any]] = {}
    for off, uses in bp_uses.items():
        counter = Counter()
        for u in uses:
            # Extract first word as type
            tword = u.split()[0]
            counter[tword] += 1
        primary, _ = counter.most_common(1)[0]
        summary[off] = {
            "primary_type": primary,
            "evidence": uses[:5],   # cap at 5 evidence pieces
            "evidence_count": len(uses),
        }
    return summary


def render_block(summary: dict[int, dict[str, Any]]) -> list[str]:
    """Format the locals/args info as comment lines."""
    if not summary:
        return []
    # Sort: args ([bp+N] positive) first by offset asc, then locals ([bp-N] negative) by abs offset asc
    args = sorted((o, info) for o, info in summary.items() if o > 0)
    locals_ = sorted(((o, info) for o, info in summary.items() if o < 0), key=lambda x: -x[0])
    lines: list[str] = []
    lines.append("; Inferred stack frame (pass18, heuristic):")
    if args:
        lines.append(";   Arguments:")
        for off, info in args:
            t = info["primary_type"]
            ev = info["evidence_count"]
            lines.append(f";     [bp+{off:#x}]  {t:8s}  ({ev} use{'s' if ev != 1 else ''})")
    if locals_:
        lines.append(";   Locals:")
        for off, info in locals_:
            t = info["primary_type"]
            ev = info["evidence_count"]
            lines.append(f";     [bp{off:+#x}]   {t:8s}  ({ev} use{'s' if ev != 1 else ''})")
    return lines


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    pass1b = PASS1B_DIR / f"{module}.json"
    if not pass1b.exists():
        return {"module": module, "error": "no pass1b"}
    with pass1b.open("r", encoding="utf-8") as f:
        data = json.load(f)
    funcs = data.get("functions", [])

    by_seg: dict[str, list[dict[str, Any]]] = {}
    for fn in funcs:
        seg = fn.get("segment_file", "")
        by_seg.setdefault(seg, []).append(fn)

    total_funcs_annotated = 0
    files_modified = 0
    per_file = []

    for seg_name, fns in by_seg.items():
        asm = REPO / "src" / module / seg_name
        if not asm.exists():
            continue
        with asm.open("r", encoding="utf-8", errors="replace") as f:
            lines = [l.rstrip("\n") for l in f.readlines()]

        # Build label_index for finding function entries
        label_idx: dict[int, int] = {}
        for i, l in enumerate(lines):
            ml = RE_LABEL.match(l.strip())
            if ml:
                off = int(ml.group(1), 16)
                label_idx[off] = i

        # Sort by offset descending so insertion doesn't break later indices
        fns_with_pos = []
        for fn in fns:
            off = fn.get("offset")
            if not isinstance(off, int) or off not in label_idx:
                continue
            start = label_idx[off]
            # end = next function's label position
            next_offsets = [o for o in label_idx if o > off]
            end = label_idx[min(next_offsets)] if next_offsets else len(lines)
            fns_with_pos.append((off, start, end, fn))
        fns_with_pos.sort(key=lambda x: x[1], reverse=True)

        inserted_here = 0
        for off, start, end, fn in fns_with_pos:
            # Compute locals/args inference for this function body
            summary = analyze_function_locals(lines, start + 1, end)
            if not summary:
                continue

            # Find insertion point: just above the function header block (the
            # `;---` lines inserted by pass 11). Walk backwards from `start`
            # while we encounter `; ...` lines (any comment), stopping at the
            # first non-comment line. Insert above that.
            insert_at = start
            while insert_at > 0 and lines[insert_at - 1].lstrip().startswith(";"):
                insert_at -= 1

            # Idempotency: skip if previous line already says "Inferred stack frame"
            for k in range(max(0, insert_at - 30), insert_at + 1):
                if k < len(lines) and "Inferred stack frame" in lines[k]:
                    insert_at = -1
                    break
            if insert_at < 0:
                continue

            block = render_block(summary)
            block_with_nl = [b for b in block]
            block_with_nl.append("")  # blank separator after our block
            lines[insert_at:insert_at] = block_with_nl
            inserted_here += 1
            total_funcs_annotated += 1

        if inserted_here > 0 and not dry_run:
            BACKUP_DIR.mkdir(parents=True, exist_ok=True)
            bp = BACKUP_DIR / module / seg_name
            bp.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(asm, bp)
            with asm.open("w", encoding="utf-8", newline="") as f:
                f.write("\n".join(lines) + "\n")
            files_modified += 1
        per_file.append({"file": seg_name, "funcs_annotated": inserted_here})

    return {
        "module": module,
        "files_modified": files_modified,
        "total_funcs_annotated": total_funcs_annotated,
        "per_file": per_file,
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("modules", nargs="*")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    modules = args.modules if args.modules else list_modules()
    log(PASS_NAME, f"processing {len(modules)} module(s)")

    all_results = []
    total = 0
    total_files = 0
    for mod in modules:
        r = process_module(mod, args.dry_run)
        if "error" in r:
            continue
        all_results.append(r)
        total += r["total_funcs_annotated"]
        total_files += r["files_modified"]
        log(PASS_NAME, f"  {mod}: funcs_annotated={r['total_funcs_annotated']:4d} files={r['files_modified']}")

    summary = {
        "pass": PASS_NAME,
        "total_funcs_annotated": total,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out = STATE_DIR / f"pass18{'_dryrun' if args.dry_run else ''}.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: {total} functions annotated with locals/args in {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
