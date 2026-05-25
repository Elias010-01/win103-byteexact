"""Pass 16: annotate `L_XXXX:` labels with their semantic role.

Heuristic role detection based on control-flow context:

  - "loop start"        : has a backward jump targeting it
  - "loop iteration"    : target of a `loop`/`loope`/`loopne` instruction
  - "if-branch target"  : only targeted by forward conditional jumps
  - "branch target"     : multiple sources, mixed
  - "early-return block": within 3 instructions of a `ret/retf/iret`
  - "error exit"        : reached only from conditional, ends in ret quickly

For each label we add a comment line ABOVE it:

    ; [loop start] L_57F4 reached by backward jmp from line 1234
    L_57F4:

Byte-safe (comment lines only).
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import sys
import time
from collections import defaultdict
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, list_modules, log  # noqa: E402

PASS_NAME = "pass16_semantic_labels"
BACKUP_DIR = REPO / "backups" / f"pass16-{time.strftime('%Y-%m-%d-%H%M%S')}"

RE_LABEL = re.compile(r"^(L_[0-9A-Fa-f]+):\s*$")
RE_JMP = re.compile(r"^\s+(j\w+)\s+(L_[0-9A-Fa-f]+)\b", re.IGNORECASE)
RE_LOOP = re.compile(r"^\s+(loop\w*)\s+(L_[0-9A-Fa-f]+)\b", re.IGNORECASE)
RE_CALL = re.compile(r"^\s+call\s+(L_[0-9A-Fa-f]+)\b", re.IGNORECASE)
RE_RET = re.compile(r"^\s+(ret|retf|iret)\b", re.IGNORECASE)
RE_INSTR = re.compile(r"^\s+([a-z][a-z0-9]*)\b", re.IGNORECASE)
RE_OUR_TAG = re.compile(r"^\s*;\s*\[(?:loop|branch|early|error|sub|fall)")


def analyze_segment(lines: list[str]) -> dict[str, str]:
    """Return {label_name: role_string} for each L_XXXX in the segment."""
    # First pass: build label position map and gather all jumps/loops/calls
    label_line: dict[str, int] = {}
    incoming: dict[str, list[tuple[int, str]]] = defaultdict(list)
    # incoming[label] = [(source_line, instruction_kind), ...]
    # instruction_kind: "jmp_uncond", "jmp_cond", "loop", "call"

    for idx, line in enumerate(lines):
        m = RE_LABEL.match(line.rstrip())
        if m:
            label_line[m.group(1)] = idx
            continue
        m = RE_LOOP.match(line)
        if m:
            target = m.group(2)
            incoming[target].append((idx, "loop"))
            continue
        m = RE_CALL.match(line)
        if m:
            target = m.group(1)
            incoming[target].append((idx, "call"))
            continue
        m = RE_JMP.match(line)
        if m:
            mnem = m.group(1).lower()
            target = m.group(2)
            kind = "jmp_uncond" if mnem == "jmp" else "jmp_cond"
            incoming[target].append((idx, kind))

    # Second pass: for each label, classify
    roles: dict[str, str] = {}
    for label, pos in label_line.items():
        srcs = incoming.get(label, [])
        if not srcs:
            continue  # no incoming → could be unreachable or function entry
        kinds = {k for _, k in srcs}
        has_loop = "loop" in kinds
        has_call = "call" in kinds
        has_jmp_uncond = "jmp_uncond" in kinds
        has_jmp_cond = "jmp_cond" in kinds
        # Direction: any jump from BEFORE (forward jump) or from AFTER (backward jump)?
        forward = any(src_line < pos for src_line, _ in srcs)
        backward = any(src_line > pos for src_line, _ in srcs)

        # Detect end-of-block (label followed by ret quickly)
        ret_soon = False
        for j in range(pos + 1, min(pos + 6, len(lines))):
            if RE_RET.match(lines[j]):
                ret_soon = True
                break
            # if there's a non-trivial instruction, count it
            mi = RE_INSTR.match(lines[j])
            if mi and mi.group(1).lower() not in {"mov", "pop", "add", "sub"}:
                break

        # Classify (precedence: most specific first)
        if has_call:
            roles[label] = "sub-routine"
        elif has_loop:
            roles[label] = "loop iteration target"
        elif backward and not forward:
            roles[label] = "loop start"
        elif backward and forward:
            roles[label] = "loop start (also forward branch)"
        elif ret_soon and has_jmp_cond:
            roles[label] = "error/early exit"
        elif ret_soon:
            roles[label] = "fall-through exit"
        elif has_jmp_uncond and not has_jmp_cond:
            roles[label] = "unconditional branch target"
        elif has_jmp_cond and not has_jmp_uncond:
            roles[label] = "conditional branch target (if/else)"
        else:
            roles[label] = "branch target"

    return roles


def process_asm(asm_path: Path, dry_run: bool) -> dict[str, Any]:
    with asm_path.open("r", encoding="utf-8", errors="replace") as f:
        lines = [l.rstrip("\n") for l in f.readlines()]

    roles = analyze_segment(lines)
    if not roles:
        return {"labels_seen": 0, "labels_annotated": 0, "modified": False}

    # Build insertions: line_index_before_label -> annotation string
    insertions: list[tuple[int, str]] = []
    for idx, line in enumerate(lines):
        m = RE_LABEL.match(line.rstrip())
        if not m:
            continue
        label = m.group(1)
        role = roles.get(label)
        if not role:
            continue
        # Idempotency: skip if previous line already has our tag
        if idx > 0 and RE_OUR_TAG.match(lines[idx - 1]):
            continue
        ann = f";   [{role}] {label}"
        insertions.append((idx, ann))

    if not insertions:
        return {
            "labels_seen": len(roles),
            "labels_annotated": 0,
            "modified": False,
            "already_annotated": True,
        }

    # Insert in DESCENDING order
    insertions.sort(key=lambda x: x[0], reverse=True)
    new_lines = list(lines)
    for idx, text in insertions:
        new_lines.insert(idx, text)

    if dry_run:
        return {
            "labels_seen": len(roles),
            "labels_annotated": len(insertions),
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
        "labels_seen": len(roles),
        "labels_annotated": len(insertions),
        "modified": True,
    }


def process_module(module: str, dry_run: bool) -> dict[str, Any]:
    mod_dir = REPO / "src" / module
    seg_files = sorted(mod_dir.glob("seg*.asm"))
    if not seg_files:
        return {"module": module, "error": "no seg*.asm"}
    total_anns = 0
    files_modified = 0
    per_file = []
    for sf in seg_files:
        s = process_asm(sf, dry_run)
        total_anns += s.get("labels_annotated", 0)
        if s.get("modified"):
            files_modified += 1
        per_file.append({"file": sf.name, **s})
    return {
        "module": module,
        "files_modified": files_modified,
        "total_labels_annotated": total_anns,
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
    total_anns = 0
    total_files = 0
    for mod in modules:
        r = process_module(mod, args.dry_run)
        if "error" in r:
            continue
        all_results.append(r)
        total_anns += r["total_labels_annotated"]
        total_files += r["files_modified"]
        log(PASS_NAME, f"  {mod}: labels_annotated={r['total_labels_annotated']:4d} files={r['files_modified']}")

    summary = {
        "pass": PASS_NAME,
        "dry_run": args.dry_run,
        "total_labels_annotated": total_anns,
        "total_files_modified": total_files,
        "backup_dir": str(BACKUP_DIR) if not args.dry_run else None,
        "results": all_results,
    }
    out = STATE_DIR / f"pass16{'_dryrun' if args.dry_run else ''}.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: +{total_anns} label annotations in {total_files} files")
    return 0


if __name__ == "__main__":
    sys.exit(main())
