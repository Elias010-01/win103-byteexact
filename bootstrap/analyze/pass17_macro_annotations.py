"""Pass 17: tag prologue/epilogue blocks with their equivalent MASM macro.

Win 1.x Microsoft sources used standard prologue/epilogue macros from
`cmacros.inc` (which we emitted in pass 14). This pass detects the canonical
prologue/epilogue byte patterns inside each `.asm` and inserts a one-line
comment indicating which macro would have been used in the original sources.

Patterns recognized:

  Prologue (FAR PASCAL):
    inc bp / push bp / mov bp,sp [/ sub sp,N]  ->  cProc <N> ; FAR
    push bp / mov bp,sp [/ sub sp,N]           ->  cProc <N> ; NEAR

  Saved registers:
    push si / push di       ->  cBegin

  Epilogue:
    pop di / pop si / mov sp,bp / pop bp / dec bp / retf <N>   ->  cEnd <N>
    mov sp,bp / pop bp / retf <N>                              ->  cEnd <N>
    pop bp / retf <N>                                          ->  cEnd <N>

Byte-safe (comment-only insertions). Bytes preserved.
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

PASS_NAME = "pass17_macro_annotations"
BACKUP_DIR = REPO / "backups" / f"pass17-{time.strftime('%Y-%m-%d-%H%M%S')}"

RE_INSTR = re.compile(r"^(\s+)([a-z][a-z0-9]*)\s*(.*?)(\s+;.*)?$", re.IGNORECASE)
RE_OUR_TAG = re.compile(r"^\s*;\s*(?:cProc|cBegin|cEnd)\b")


def get_mnemonic(line: str) -> tuple[str, str] | None:
    m = RE_INSTR.match(line)
    if not m:
        return None
    return (m.group(2).lower(), m.group(3).strip().rstrip(",").lower())


def detect_far_prologue(lines: list[str], i: int) -> tuple[int, str] | None:
    """If line i starts a FAR prologue, return (length_in_lines, macro_text)."""
    if i + 2 >= len(lines):
        return None
    a = get_mnemonic(lines[i])
    b = get_mnemonic(lines[i + 1])
    c = get_mnemonic(lines[i + 2])
    if not (a and b and c):
        return None
    if a[0] == "inc" and "bp" in a[1] and b[0] == "push" and "bp" in b[1] and c[0] == "mov" and "bp" in c[1] and "sp" in c[1]:
        # Check for `sub sp, N` on next line
        locals_n = 0
        length = 3
        if i + 3 < len(lines):
            d = get_mnemonic(lines[i + 3])
            if d and d[0] == "sub" and "sp" in d[1]:
                # Extract N from operand
                m = re.search(r"(0x[0-9A-Fa-f]+|[0-9]+)", d[1])
                if m:
                    try:
                        locals_n = int(m.group(1), 0)
                    except ValueError:
                        locals_n = 0
                length = 4
        return (length, f"cProc <{locals_n}> ; FAR PASCAL prologue")
    return None


def detect_near_prologue(lines: list[str], i: int) -> tuple[int, str] | None:
    if i + 1 >= len(lines):
        return None
    a = get_mnemonic(lines[i])
    b = get_mnemonic(lines[i + 1])
    if not (a and b):
        return None
    if a[0] == "push" and "bp" in a[1] and b[0] == "mov" and "bp" in b[1] and "sp" in b[1]:
        locals_n = 0
        length = 2
        if i + 2 < len(lines):
            c = get_mnemonic(lines[i + 2])
            if c and c[0] == "sub" and "sp" in c[1]:
                m = re.search(r"(0x[0-9A-Fa-f]+|[0-9]+)", c[1])
                if m:
                    try:
                        locals_n = int(m.group(1), 0)
                    except ValueError:
                        locals_n = 0
                length = 3
        return (length, f"cProc <{locals_n}> ; NEAR PASCAL prologue")
    return None


def detect_far_epilogue(lines: list[str], i: int) -> tuple[int, str] | None:
    """Detect epilogue ending at lines[i] being a retf. Walk backwards."""
    cur = get_mnemonic(lines[i])
    if not cur:
        return None
    if cur[0] != "retf":
        return None
    n_args = 0
    if cur[1]:
        m = re.search(r"(0x[0-9A-Fa-f]+|[0-9]+)", cur[1])
        if m:
            try:
                n_args = int(m.group(1), 0)
            except ValueError:
                n_args = 0

    # Walk backward; collect last 6 instructions
    prev = []
    j = i - 1
    while j >= 0 and len(prev) < 6:
        line = lines[j]
        mi = get_mnemonic(line)
        if mi:
            prev.insert(0, (j, mi))
        j -= 1

    # Look for pattern ending in pop bp / dec bp / retf
    if len(prev) >= 1 and prev[-1][1][0] == "pop" and "bp" in prev[-1][1][1]:
        # Find earliest line of the epilogue chain
        start_line = prev[-1][0]
        # Walk back further checking for mov sp,bp / pop ds / pop si / pop di
        idx = len(prev) - 2
        while idx >= 0:
            mnem, operands = prev[idx][1]
            if mnem == "mov" and "sp" in operands and "bp" in operands:
                start_line = prev[idx][0]
                idx -= 1
                continue
            if mnem == "pop" and operands in {"ds", "si", "di"}:
                start_line = prev[idx][0]
                idx -= 1
                continue
            if mnem == "dec" and "bp" in operands:
                # FAR epilogue marker
                start_line = prev[idx][0]
                idx -= 1
                continue
            break
        return (i - start_line + 1, f"cEnd <{n_args}> ; PASCAL epilogue (callee cleans {n_args}B of args)")
    return None


def is_label_or_blank(line: str) -> bool:
    s = line.strip()
    if not s:
        return True
    if s.startswith(";"):
        return True
    return s.endswith(":") and "PROC" not in s.upper() and "ENDP" not in s.upper()


def process_asm(asm_path: Path, dry_run: bool) -> dict[str, Any]:
    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        lines = [l.rstrip("\n") for l in f.readlines()]

    insertions: list[tuple[int, str]] = []
    prologues = 0
    epilogues = 0

    for i, line in enumerate(lines):
        mi = get_mnemonic(line)
        if not mi:
            continue

        # Idempotency: skip if previous line already has our tag
        prev_line = lines[i - 1] if i > 0 else ""
        already = RE_OUR_TAG.match(prev_line)

        # Try FAR prologue first (more specific)
        prologue = detect_far_prologue(lines, i)
        if prologue is None:
            prologue = detect_near_prologue(lines, i)
        if prologue and not already:
            # Only count it as a real prologue if the line BEFORE is a label or
            # comment (i.e., function entry) — avoids matching mid-function pushes.
            if i == 0 or is_label_or_blank(lines[i - 1]):
                length, text = prologue
                m_ws = re.match(r"^(\s*)", line)
                indent = m_ws.group(1) if m_ws else "        "
                insertions.append((i, f"{indent};   = {text}"))
                prologues += 1

        # Epilogue: only when we see `retf`
        if mi[0] == "retf":
            epi = detect_far_epilogue(lines, i)
            if epi and not already:
                length, text = epi
                start_line = i - length + 1
                if start_line < 0:
                    start_line = 0
                m_ws = re.match(r"^(\s*)", lines[start_line])
                indent = m_ws.group(1) if m_ws else "        "
                insertions.append((start_line, f"{indent};   = {text}"))
                epilogues += 1

    if not insertions:
        return {"prologues": 0, "epilogues": 0, "modified": False}

    # Deduplicate insertions at same index (keep first)
    seen_indices = set()
    deduped = []
    for idx, text in insertions:
        if idx in seen_indices:
            continue
        seen_indices.add(idx)
        deduped.append((idx, text))
    deduped.sort(key=lambda x: x[0], reverse=True)

    new_lines = list(lines)
    for idx, text in deduped:
        new_lines.insert(idx, text)

    if dry_run:
        return {"prologues": prologues, "epilogues": epilogues, "modified": False}

    BACKUP_DIR.mkdir(parents=True, exist_ok=True)
    rel = asm_path.relative_to(REPO / "src")
    bp = BACKUP_DIR / rel
    bp.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(asm_path, bp)
    with asm_path.open("w", encoding="utf-8", newline="") as f:
        f.write("\n".join(new_lines) + "\n")
    return {"prologues": prologues, "epilogues": epilogues, "modified": True}


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("modules", nargs="*")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    modules = args.modules if args.modules else list_modules()
    log(PASS_NAME, f"processing {len(modules)} module(s)")

    total_p = 0
    total_e = 0
    total_files = 0
    all_results = []
    for mod in modules:
        mod_dir = REPO / "src" / mod
        seg_files = sorted(mod_dir.glob("seg*.asm"))
        if not seg_files:
            continue
        mp = 0
        me = 0
        mf = 0
        for sf in seg_files:
            s = process_asm(sf, args.dry_run)
            mp += s.get("prologues", 0)
            me += s.get("epilogues", 0)
            if s.get("modified"):
                mf += 1
        log(PASS_NAME, f"  {mod}: prologues={mp:4d} epilogues={me:4d} files={mf}")
        total_p += mp
        total_e += me
        total_files += mf
        all_results.append({"module": mod, "prologues": mp, "epilogues": me, "files": mf})

    summary = {
        "pass": PASS_NAME,
        "total_prologues": total_p,
        "total_epilogues": total_e,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out = STATE_DIR / f"pass17{'_dryrun' if args.dry_run else ''}.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: {total_p} prologues + {total_e} epilogues in {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
