"""Pass 19: rich heuristic descriptions for each function.

NOTE: This is NOT a real LLM batch. A real LLM batch (sending each function
to Claude/GPT to describe it) would require external API access we don't have
in this environment. This pass implements a sophisticated heuristic instead,
based on patterns visible in the function body:

  - Window procedure pattern (switch on WM_* messages)
  - Initialization pattern (multiple GLOBALALLOC/LOCALALLOC at top)
  - Cleanup / destructor pattern (multiple FreeXxx / Destroy calls)
  - Drawing / paint pattern (multiple GDI calls + GETDC/RELEASEDC)
  - File I/O pattern (LREAD / LWRITE / LOPEN / LCLOSE)
  - Dialog procedure pattern (DIALOGBOX + EnDialog + GetDlgItem)
  - String manipulation (LSTRCPY / LSTRCAT / LSTRLEN / LSTRCMP)
  - Simple wrapper (1-3 API calls, no branches)
  - Math / computation (lots of arithmetic, few API calls)
  - Dispatcher (many cmp + branch + jmp, low API density)

The output is a 1-3 line `; Description (heuristic):` block inserted into
each function's pass-11 header.

Byte-safe (comment-only).
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
from win1x_api_signatures import SIGNATURES  # noqa: E402

PASS_NAME = "pass19_function_descriptions"
PASS1B_DIR = STATE_DIR / "pass1b"
BACKUP_DIR = REPO / "backups" / f"pass19-{time.strftime('%Y-%m-%d-%H%M%S')}"

RE_LABEL = re.compile(r"^L_([0-9A-Fa-f]+):\s*$")


# Categories of APIs we recognize
PAINT_APIS = {"BEGINPAINT", "ENDPAINT", "GETDC", "RELEASEDC", "MOVETO", "LINETO",
              "TEXTOUT", "RECTANGLE", "ELLIPSE", "BITBLT", "PATBLT", "STRETCHBLT",
              "SETPIXEL", "FILLRECT", "FRAMERECT", "INVERTRECT", "POLYLINE",
              "POLYGON", "INVALIDATERECT", "VALIDATERECT", "UPDATEWINDOW"}
DIALOG_APIS = {"DIALOGBOX", "ENDDIALOG", "GETDLGITEM", "SETDLGITEMTEXT",
               "GETDLGITEMTEXT", "SENDDLGITEMMESSAGE", "CHECKRADIOBUTTON",
               "ISDLGBUTTONCHECKED", "MESSAGEBOX"}
FILE_APIS = {"_LOPEN", "_LCLOSE", "_LREAD", "_LWRITE", "_LCREAT", "_LLSEEK",
             "OPENFILE", "GETTEMPFILENAME", "DELETEFILE"}
STRING_APIS = {"LSTRCPY", "LSTRCAT", "LSTRLEN", "LSTRCMP", "LSTRCMPI",
               "ANSITOOEM", "OEMTOANSI", "ANSIUPPER", "ANSILOWER"}
ALLOC_APIS = {"GLOBALALLOC", "GLOBALFREE", "GLOBALLOCK", "GLOBALUNLOCK",
              "LOCALALLOC", "LOCALFREE", "LOCALLOCK", "LOCALUNLOCK"}
WINDOW_APIS = {"CREATEWINDOW", "DESTROYWINDOW", "SHOWWINDOW", "MOVEWINDOW",
               "SETWINDOWTEXT", "GETWINDOWTEXT", "SETWINDOWPOS",
               "GETWINDOWRECT", "GETCLIENTRECT"}
MENU_APIS = {"LOADMENU", "CREATEMENU", "APPENDMENU", "INSERTMENU",
             "DELETEMENU", "ENABLEMENUITEM", "CHECKMENUITEM",
             "GETMENUSTATE", "TRACKPOPUPMENU"}
MESSAGE_APIS = {"SENDMESSAGE", "POSTMESSAGE", "DEFWINDOWPROC", "GETMESSAGE",
                "TRANSLATEMESSAGE", "DISPATCHMESSAGE", "PEEKMESSAGE"}


WM_MESSAGES = {
    0x0001: "WM_CREATE", 0x0002: "WM_DESTROY", 0x0003: "WM_MOVE",
    0x0005: "WM_SIZE", 0x000F: "WM_PAINT", 0x0010: "WM_CLOSE",
    0x0014: "WM_ERASEBKGND", 0x0018: "WM_SHOWWINDOW",
    0x0081: "WM_NCCREATE", 0x0082: "WM_NCDESTROY",
    0x0100: "WM_KEYDOWN", 0x0101: "WM_KEYUP", 0x0102: "WM_CHAR",
    0x0110: "WM_INITDIALOG", 0x0111: "WM_COMMAND", 0x0112: "WM_SYSCOMMAND",
    0x0113: "WM_TIMER", 0x0114: "WM_HSCROLL", 0x0115: "WM_VSCROLL",
    0x0116: "WM_INITMENU", 0x0117: "WM_INITMENUPOPUP",
    0x0200: "WM_MOUSEMOVE", 0x0201: "WM_LBUTTONDOWN", 0x0202: "WM_LBUTTONUP",
    0x0203: "WM_LBUTTONDBLCLK", 0x0204: "WM_RBUTTONDOWN", 0x0205: "WM_RBUTTONUP",
}


def extract_api_name(call_far_str: str) -> str | None:
    s = call_far_str.strip()
    if "." in s:
        return s.rsplit(".", 1)[-1].strip().upper()
    return None


def detect_wm_messages_handled(body: list[str]) -> list[str]:
    """Find WM_* values being compared in cmp instructions."""
    handled: list[str] = []
    re_cmp = re.compile(r"cmp\s+\S+\s*,\s*(0x[0-9A-Fa-f]+|\d+|[0-9A-Fa-f]+h)", re.IGNORECASE)
    for line in body:
        m = re_cmp.search(line)
        if not m:
            continue
        val = m.group(1)
        try:
            if val.lower().startswith("0x"):
                v = int(val, 16)
            elif val.lower().endswith("h"):
                v = int(val[:-1], 16)
            else:
                v = int(val)
        except ValueError:
            continue
        if v in WM_MESSAGES:
            name = WM_MESSAGES[v]
            if name not in handled:
                handled.append(name)
    return handled


def describe_function(fn: dict[str, Any], body_text: list[str]) -> list[str]:
    """Generate a 1-3 line description of the function."""
    calls_far = fn.get("calls_far", [])
    n_instr = fn.get("num_instructions", 0)
    prologue = fn.get("prologue", "")
    epilogue = fn.get("epilogue", "")

    # Get APIs called
    api_set: set[str] = set()
    api_counts: Counter = Counter()
    for c in calls_far:
        api = extract_api_name(c)
        if api:
            api_set.add(api)
            api_counts[api] += 1

    # Counts per category
    n_paint = sum(1 for a in api_set if a in PAINT_APIS)
    n_dialog = sum(1 for a in api_set if a in DIALOG_APIS)
    n_file = sum(1 for a in api_set if a in FILE_APIS)
    n_string = sum(1 for a in api_set if a in STRING_APIS)
    n_alloc = sum(1 for a in api_set if a in ALLOC_APIS)
    n_window = sum(1 for a in api_set if a in WINDOW_APIS)
    n_menu = sum(1 for a in api_set if a in MENU_APIS)
    n_msg = sum(1 for a in api_set if a in MESSAGE_APIS)
    total_apis = len(api_set)

    # Detect WM_* handlers
    wm_handled = detect_wm_messages_handled(body_text)

    descs: list[str] = []

    # Pattern 1: Window procedure
    if "DEFWINDOWPROC" in api_set and wm_handled:
        descs.append(f"Window procedure (WindowProc). Handles {', '.join(wm_handled[:5])}"
                     + (f" and {len(wm_handled) - 5} more" if len(wm_handled) > 5 else "") + ".")
        if n_paint >= 2:
            descs.append(f"Does its own painting/drawing ({n_paint} GDI APIs used).")
        if "DIALOGBOX" in api_set or "MESSAGEBOX" in api_set:
            descs.append("Shows dialog/messagebox in response to messages.")

    # Pattern 2: Dialog procedure
    elif "ENDDIALOG" in api_set and ("WM_INITDIALOG" in wm_handled or "GETDLGITEM" in api_set):
        descs.append("Dialog procedure (DlgProc). Handles dialog messages.")
        if "GETDLGITEMTEXT" in api_set or "SETDLGITEMTEXT" in api_set:
            descs.append("Reads/writes dialog item text.")

    # Pattern 3: Drawing/paint function
    elif n_paint >= 3:
        descs.append(f"Drawing routine ({n_paint} GDI APIs).")
        if "GETDC" in api_set or "BEGINPAINT" in api_set:
            descs.append("Acquires a device context, draws, releases.")

    # Pattern 4: File I/O
    elif n_file >= 2:
        descs.append(f"File I/O routine ({n_file} file APIs).")
        if "_LREAD" in api_set:
            descs.append("Reads from file handle.")
        if "_LWRITE" in api_set:
            descs.append("Writes to file handle.")

    # Pattern 5: String manipulation
    elif n_string >= 2:
        descs.append(f"String manipulation routine ({n_string} string APIs).")

    # Pattern 6: Allocation/init
    elif n_alloc >= 2 and "GLOBALFREE" not in api_set and "LOCALFREE" not in api_set:
        descs.append(f"Allocation / initialization routine ({n_alloc} alloc APIs).")

    # Pattern 7: Cleanup
    elif ("GLOBALFREE" in api_set or "LOCALFREE" in api_set or "DESTROYWINDOW" in api_set) and n_alloc <= 3:
        descs.append("Cleanup / deallocation routine.")

    # Pattern 8: Menu manipulation
    elif n_menu >= 2:
        descs.append(f"Menu manipulation routine ({n_menu} menu APIs).")

    # Pattern 9: Simple wrapper
    elif 1 <= total_apis <= 3 and n_instr <= 30:
        if total_apis == 1:
            api = list(api_set)[0]
            sig = SIGNATURES.get(api)
            if sig:
                ret = sig.get("return", "?")
                params = sig.get("params", [])
                pstr = ", ".join(p["name"] for p in params)
                descs.append(f"Thin wrapper around {api}({pstr}) -> {ret}.")
            else:
                descs.append(f"Thin wrapper around {api}.")
        else:
            descs.append(f"Small helper using {total_apis} API(s): {', '.join(sorted(api_set))[:80]}.")

    # Pattern 10: Dispatcher / no apis
    elif total_apis == 0 and n_instr > 20:
        descs.append(f"Pure computation / dispatcher ({n_instr} instructions, no FAR API calls).")
        if epilogue == "iret":
            descs.append("Interrupt handler.")

    # Pattern 11: General function
    if not descs:
        if total_apis > 0:
            top_apis = [a for a, _ in api_counts.most_common(3)]
            descs.append(f"Mixed routine using: {', '.join(top_apis)}"
                         + (f" (+{total_apis - 3} more)" if total_apis > 3 else "") + ".")
        else:
            descs.append(f"Internal helper ({n_instr} instructions).")

    if epilogue == "retf_n":
        # Already known from header
        pass
    elif epilogue == "jmp_tail":
        descs.append("Tail-calls into another routine.")

    return descs


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    pass1b = PASS1B_DIR / f"{module}.json"
    if not pass1b.exists():
        return {"module": module, "error": "no pass1b"}
    with pass1b.open("r", encoding="utf-8") as f:
        data = json.load(f)
    funcs = data.get("functions", [])

    by_seg: dict[str, list[dict[str, Any]]] = {}
    for fn in funcs:
        by_seg.setdefault(fn.get("segment_file", ""), []).append(fn)

    total_annotated = 0
    files_modified = 0
    per_file = []

    for seg_name, fns in by_seg.items():
        asm = REPO / "src" / module / seg_name
        if not asm.exists():
            continue
        with asm.open("r", encoding="utf-8", errors="replace") as f:
            lines = [l.rstrip("\n") for l in f.readlines()]

        label_idx: dict[int, int] = {}
        for i, l in enumerate(lines):
            ml = RE_LABEL.match(l.strip())
            if ml:
                label_idx[int(ml.group(1), 16)] = i

        fns_with_pos = []
        for fn in fns:
            off = fn.get("offset")
            if not isinstance(off, int) or off not in label_idx:
                continue
            start = label_idx[off]
            next_offsets = [o for o in label_idx if o > off]
            end = label_idx[min(next_offsets)] if next_offsets else len(lines)
            fns_with_pos.append((off, start, end, fn))
        fns_with_pos.sort(key=lambda x: x[1], reverse=True)

        added_here = 0
        for off, start, end, fn in fns_with_pos:
            body = lines[start + 1:end]
            descs = describe_function(fn, body)
            if not descs:
                continue

            # Find insertion point: walk back over comments to put it just
            # above the function header (pass11 ;----)
            insert_at = start
            while insert_at > 0 and lines[insert_at - 1].lstrip().startswith(";"):
                insert_at -= 1

            # Idempotency check
            already = False
            for k in range(max(0, insert_at - 30), insert_at + 1):
                if k < len(lines) and "Description (heuristic)" in lines[k]:
                    already = True
                    break
            if already:
                continue

            block: list[str] = ["; Description (heuristic):"]
            for d in descs:
                block.append(f";   {d}")
            block.append("")  # blank separator
            lines[insert_at:insert_at] = block
            added_here += 1
            total_annotated += 1

        if added_here > 0 and not dry_run:
            BACKUP_DIR.mkdir(parents=True, exist_ok=True)
            bp = BACKUP_DIR / module / seg_name
            bp.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(asm, bp)
            with asm.open("w", encoding="utf-8", newline="") as f:
                f.write("\n".join(lines) + "\n")
            files_modified += 1
        per_file.append({"file": seg_name, "added": added_here})

    return {
        "module": module,
        "files_modified": files_modified,
        "total_annotated": total_annotated,
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
        total += r["total_annotated"]
        total_files += r["files_modified"]
        log(PASS_NAME, f"  {mod}: annotated={r['total_annotated']:4d} files={r['files_modified']}")

    summary = {
        "pass": PASS_NAME,
        "total_annotated": total,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out = STATE_DIR / f"pass19{'_dryrun' if args.dry_run else ''}.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: {total} functions described in {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
