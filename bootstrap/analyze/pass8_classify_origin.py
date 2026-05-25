"""Pass 8: classify each function as C-origin or ASM-origin (heuristic).

For every function discovered in pass 1b, examine its structure and assign a
probability of being:

  - C-origin (high)         : strong MSC 4.0 PASCAL pattern signature
  - C-origin (medium)       : likely C, some weak signals
  - unclear                 : not enough information
  - ASM-origin (medium)     : likely hand-written assembly
  - ASM-origin (high)       : strong hand-written assembly signature

This is heuristic. The function names of exported APIs (LSTRCPY, etc.) come
from the NE export table — they tell us the names but not the language. The
language inference is purely structural.

Output:
  state/analyze/pass8/<MODULE>.json         per-function classification
  state/analyze/pass8_summary.json          per-module aggregate
  state/analyze/pass8_report.md             human-readable summary

This pass is read-only with respect to src/. It only writes to state/.
"""

from __future__ import annotations

import json
import re
import sys
from collections import Counter
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import (  # noqa: E402
    REPO,
    STATE_DIR,
    is_module_done,
    list_modules,
    load_progress,
    log,
    mark_module_done,
    mark_phase_done,
    phase,
    save_progress,
)

PASS_NAME = "pass8_classify_origin"
OUT_DIR = STATE_DIR / "pass8"
PASS1B_DIR = STATE_DIR / "pass1b"

# ---------------------------------------------------------------- expectations

# Expected ratio of C-origin functions per module. Used to validate the
# classifier on a known-good ground truth (apps are mostly C, drivers are
# mostly ASM, etc.). The classifier is *not* trained on this; it is a
# post-hoc check.
EXPECTED_C_RATIO: dict[str, tuple[float, str]] = {
    # ---- apps (almost entirely C) ----
    "CALC":     (0.95, "very_high"),
    "CALENDAR": (0.95, "very_high"),
    "CARDFILE": (0.95, "very_high"),
    "CLIPBRD":  (0.90, "high"),
    "CLOCK":    (0.95, "very_high"),
    "CONTROL":  (0.90, "high"),
    "NOTEPAD":  (0.95, "very_high"),
    "PAINT":    (0.80, "high"),
    "REVERSI":  (0.95, "very_high"),
    "TERMINAL": (0.85, "high"),
    "WRITE":    (0.95, "very_high"),
    "ABC":      (0.95, "very_high"),
    # ---- shell ----
    "MSDOSD":   (0.70, "medium"),
    "SPOOLER":  (0.70, "medium"),
    # ---- core (mixed) ----
    "GDI":      (0.50, "medium"),
    "USER":     (0.50, "medium"),
    "KERNEL":   (0.05, "high"),
    # ---- display drivers (ASM) ----
    "CGA":      (0.05, "high"),
    "EGAHIBW":  (0.05, "high"),
    "EGAMONO":  (0.05, "high"),
    "EGACOLOR": (0.05, "high"),
    "HERCULES": (0.05, "high"),
    # ---- keyboard / mouse drivers (ASM) ----
    "KEYBOARD": (0.05, "high"),
    "MOUSE":    (0.05, "high"),
    "ATTKBD":   (0.05, "high"),
    "ATTMOUSE": (0.05, "high"),
    "DENMARK":  (0.05, "high"),
    # ---- printer drivers (mostly ASM) ----
    "CITOH":    (0.10, "high"),
    "EPSON":    (0.10, "high"),
    "EPSONMX":  (0.10, "high"),
    # ---- sound / system / debug (ASM) ----
    "SOUND":    (0.05, "high"),
    "SYSTEM":   (0.05, "high"),
    "ATTDC":    (0.05, "high"),
    "ATTDEB":   (0.05, "high"),
    "COMM":     (0.30, "medium"),
}

# ---------------------------------------------------------------- vocabulary

STRING_OP_MNEMS = {"movsb", "movsw", "scasb", "scasw", "lodsb", "lodsw",
                   "stosb", "stosw", "cmpsb", "cmpsw"}
LOOP_OP_MNEMS = {"loop", "loope", "loopne", "loopz", "loopnz"}
BIT_TWIDDLE_MNEMS = {"rol", "ror", "rcl", "rcr"}  # SHL/SHR are common in C too
ARITH_SHIFT_MNEMS = {"shl", "shr", "sal", "sar"}
DOS_BIOS_INT_LITERALS = {"0x21", "21h", "0x10", "10h", "0x16", "16h",
                         "0x13", "13h", "0x14", "14h", "0x15", "15h",
                         "0x17", "17h", "0x33", "33h", "0x67", "67h",
                         "0x2f", "2fh"}
SAVED_REGS = {"si", "di"}

RE_PUSH_REG = re.compile(r"^\s*push\s+(\w+)\s*$", re.IGNORECASE)
RE_POP_REG = re.compile(r"^\s*pop\s+(\w+)\s*$", re.IGNORECASE)
RE_BP_NEG = re.compile(r"\[bp\s*-", re.IGNORECASE)
RE_BP_POS = re.compile(r"\[bp\s*\+", re.IGNORECASE)


# ---------------------------------------------------------------- classifier

def classify_function(fn: dict[str, Any]) -> dict[str, Any]:
    """Return classification verdict + per-signal details.

    Operates only on the summarized fields stored by pass1b:
      prologue, epilogue, num_instructions, num_mem_refs,
      mnemonic_histogram, has_loop, has_string_op,
      ints (list of int literals), calls_near, calls_far,
      num_jumps_cond, num_jumps_uncond,
      first_instructions, last_instructions
    """
    n = fn.get("num_instructions", 0)
    if n < 3:
        return {
            "verdict": "tiny",
            "score_c": 0,
            "score_asm": 0,
            "score_diff": 0,
            "signals": ["function too small to classify (<3 instructions)"],
            "confidence": "none",
        }

    histo: dict[str, int] = fn.get("mnemonic_histogram", {})
    first = fn.get("first_instructions", [])  # list[str]
    last = fn.get("last_instructions", [])

    score_c = 0
    score_asm = 0
    signals: list[str] = []

    # ----------------------- Prologue signal --------------------------

    prologue = fn.get("prologue", "")
    if prologue == "standard_bp":
        score_c += 3
        signals.append("standard PASCAL prologue (push bp / mov bp,sp) [+3 C]")
    elif prologue == "far_inc_bp_standard":
        score_c += 3
        signals.append("FAR PASCAL prologue (inc bp / push bp / mov bp,sp) [+3 C]")
    elif prologue == "saves_regs":
        score_c += 1
        signals.append("saves registers at entry but no full BP frame [+1 C]")
    else:
        score_asm += 2
        signals.append("no BP-frame prologue [+2 ASM]")

    # ----------------------- Epilogue signal --------------------------

    epi = fn.get("epilogue", "")
    if epi == "retf_n":
        score_c += 3
        signals.append("PASCAL epilogue: retf with arg cleanup [+3 C]")
    elif epi == "ret_n":
        score_c += 2
        signals.append("PASCAL epilogue: ret with arg cleanup [+2 C]")
    elif epi == "retf":
        score_c += 1
        signals.append("retf without args [+1 C]")
    elif epi == "ret":
        signals.append("ret without args [neutral]")
    elif epi == "iret":
        score_asm += 5
        signals.append("iret: interrupt handler [+5 ASM]")
    elif epi == "jmp_tail":
        score_asm += 2
        signals.append("jmp tail-call (no proper return) [+2 ASM]")

    # ----------------------- BP usage via first/last instructions -----

    # We can scan the first/last 6 instruction strings for [bp-N] / [bp+N]
    text_first = " | ".join(first)
    text_last = " | ".join(last)
    bp_neg_hits = len(RE_BP_NEG.findall(text_first)) + len(RE_BP_NEG.findall(text_last))
    bp_pos_hits = len(RE_BP_POS.findall(text_first)) + len(RE_BP_POS.findall(text_last))
    if bp_neg_hits > 0:
        score_c += 1
        signals.append(f"[bp-N] references in entry/exit ({bp_neg_hits}) [+1 C]")
    if bp_pos_hits > 0:
        score_c += 1
        signals.append(f"[bp+N] references in entry/exit ({bp_pos_hits}) [+1 C]")

    # ----------------------- DOS / BIOS interrupts --------------------

    ints = fn.get("ints", [])
    dos_bios_hits = sum(1 for x in ints if str(x).lower() in DOS_BIOS_INT_LITERALS)
    if dos_bios_hits:
        score_asm += min(5, dos_bios_hits * 3)
        signals.append(f"{dos_bios_hits} DOS/BIOS int call(s) [+{min(5, dos_bios_hits * 3)} ASM]")
    elif ints:
        score_asm += 1
        signals.append(f"{len(ints)} other int call(s) [+1 ASM]")

    # ----------------------- String operations -----------------------

    if fn.get("has_string_op"):
        string_count = sum(histo.get(m, 0) for m in STRING_OP_MNEMS)
        if string_count >= 3:
            score_asm += 2
            signals.append(f"{string_count} string ops [+2 ASM]")
        elif string_count >= 1:
            score_asm += 1
            signals.append(f"{string_count} string op(s) [+1 ASM]")

    # ----------------------- Bit twiddles ----------------------------

    bt_count = sum(histo.get(m, 0) for m in BIT_TWIDDLE_MNEMS)
    if bt_count >= 4:
        score_asm += 2
        signals.append(f"{bt_count} bit-twiddle (rol/ror/rcl/rcr) [+2 ASM]")
    elif bt_count >= 1:
        score_asm += 1
        signals.append(f"{bt_count} bit-twiddle(s) [+1 ASM]")

    # ----------------------- Loop instructions ------------------------

    if fn.get("has_loop"):
        loop_count = sum(histo.get(m, 0) for m in LOOP_OP_MNEMS)
        score_asm += min(2, loop_count)
        signals.append(f"{loop_count} `loop` instruction(s) (MSC rarely emits) [+{min(2, loop_count)} ASM]")

    # ----------------------- Saved registers SI/DI (canonical C) -----

    early_pushes = 0
    for line in first:
        m = RE_PUSH_REG.match(line)
        if m and m.group(1).lower() in SAVED_REGS:
            early_pushes += 1
    late_pops = 0
    for line in last:
        m = RE_POP_REG.match(line)
        if m and m.group(1).lower() in SAVED_REGS:
            late_pops += 1
    if early_pushes >= 1 and late_pops >= 1 and early_pushes == late_pops:
        score_c += 2
        signals.append(f"canonical SI/DI save/restore ({early_pushes} push / {late_pops} pop) [+2 C]")

    # ----------------------- FAR API call density --------------------

    calls_far = fn.get("calls_far", [])
    if len(calls_far) >= 3:
        score_c += 2
        signals.append(f"{len(calls_far)} FAR-API calls (heavy API user) [+2 C]")
    elif len(calls_far) >= 1:
        score_c += 1
        signals.append(f"{len(calls_far)} FAR-API call(s) [+1 C]")

    # ----------------------- Tiny driver-style functions -------------

    # 4-15 instr, no BP frame, contains `int` -> almost certainly ASM driver
    if n <= 15 and prologue not in ("standard_bp", "far_inc_bp_standard") and ints:
        score_asm += 3
        signals.append("short interrupt-using function (driver pattern) [+3 ASM]")

    # ----------------------- Mnemonic balance ------------------------

    # MSC 4.0 emits lots of mov / cmp / je / jne / push / pop
    # Hand-written ASM tends to be more varied with arithmetic and bit ops
    mov_count = histo.get("mov", 0)
    push_count = histo.get("push", 0)
    if n >= 15 and mov_count >= n * 0.25 and push_count >= n * 0.10:
        score_c += 1
        signals.append("high mov+push density (compiler-like) [+1 C]")

    # ----------------------- Verdict ----------------------------------

    diff = score_c - score_asm
    if diff >= 6:
        verdict = "c_high"
        confidence = "high"
    elif diff >= 3:
        verdict = "c_medium"
        confidence = "medium"
    elif diff <= -6:
        verdict = "asm_high"
        confidence = "high"
    elif diff <= -3:
        verdict = "asm_medium"
        confidence = "medium"
    else:
        verdict = "unclear"
        confidence = "low"

    return {
        "verdict": verdict,
        "score_c": score_c,
        "score_asm": score_asm,
        "score_diff": diff,
        "signals": signals,
        "confidence": confidence,
    }


# ---------------------------------------------------------------- module pass

def classify_module(module: str) -> dict[str, Any]:
    """Classify every function of a module."""
    pass1b_file = PASS1B_DIR / f"{module}.json"
    if not pass1b_file.exists():
        return {"module": module, "error": f"missing {pass1b_file.name}"}

    with pass1b_file.open("r", encoding="utf-8") as f:
        data = json.load(f)

    funcs = data.get("functions", [])
    results: list[dict[str, Any]] = []
    verdict_counts = Counter()

    for fn in funcs:
        cls = classify_function(fn)
        verdict_counts[cls["verdict"]] += 1
        results.append({
            "name": fn.get("name"),
            "segment_file": fn.get("segment_file"),
            "offset": fn.get("offset"),
            "size_bytes": fn.get("size_bytes"),
            "num_instructions": fn.get("num_instructions"),
            "prologue": fn.get("prologue"),
            "epilogue": fn.get("epilogue"),
            "classification": cls,
        })

    total = len(funcs)
    c_count = verdict_counts["c_high"] + verdict_counts["c_medium"]
    asm_count = verdict_counts["asm_high"] + verdict_counts["asm_medium"]
    classified = c_count + asm_count
    c_ratio = (c_count / total) if total else 0.0
    c_ratio_classified = (c_count / classified) if classified else 0.0

    exp = EXPECTED_C_RATIO.get(module)
    if exp:
        expected_c, exp_conf = exp
        diff = c_ratio - expected_c
        consistency = "ok" if abs(diff) < 0.25 else ("over" if diff > 0 else "under")
    else:
        expected_c = None
        exp_conf = None
        diff = None
        consistency = "no_expectation"

    return {
        "module": module,
        "num_functions": total,
        "verdict_counts": dict(verdict_counts),
        "c_count": c_count,
        "asm_count": asm_count,
        "unclear_count": verdict_counts["unclear"],
        "tiny_count": verdict_counts["tiny"],
        "c_ratio_overall": round(c_ratio, 3),
        "c_ratio_of_classified": round(c_ratio_classified, 3),
        "expected_c_ratio": expected_c,
        "expected_confidence": exp_conf,
        "consistency": consistency,
        "functions": results,
    }


# ---------------------------------------------------------------- aggregate

def write_summary(per_module: list[dict[str, Any]]) -> None:
    """Write the aggregate summary JSON and Markdown report."""
    summary = {
        "version": 1,
        "num_modules": len(per_module),
        "total_functions": sum(m.get("num_functions", 0) for m in per_module),
        "total_c": sum(m.get("c_count", 0) for m in per_module),
        "total_asm": sum(m.get("asm_count", 0) for m in per_module),
        "total_unclear": sum(m.get("unclear_count", 0) for m in per_module),
        "total_tiny": sum(m.get("tiny_count", 0) for m in per_module),
        "modules": [
            {
                "module": m["module"],
                "num_functions": m.get("num_functions"),
                "c_count": m.get("c_count"),
                "asm_count": m.get("asm_count"),
                "unclear_count": m.get("unclear_count"),
                "c_ratio_overall": m.get("c_ratio_overall"),
                "c_ratio_of_classified": m.get("c_ratio_of_classified"),
                "expected_c_ratio": m.get("expected_c_ratio"),
                "consistency": m.get("consistency"),
            }
            for m in per_module if "error" not in m
        ],
    }

    summary_file = STATE_DIR / "pass8_summary.json"
    with summary_file.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"wrote {summary_file}")

    # Markdown report
    lines = [
        "# Pass 8 — Function Origin Classification Report",
        "",
        "> Classifies every function in `pass1b` as C-origin or ASM-origin based on",
        "> structural heuristics (prologue, epilogue, BP frame usage, INT calls,",
        "> string ops, bit twiddles, saved registers).",
        "",
        "## Aggregate",
        "",
        f"- Modules analyzed: **{summary['num_modules']}**",
        f"- Total functions: **{summary['total_functions']}**",
        f"- Classified as C-origin: **{summary['total_c']}** ({100*summary['total_c']/max(1,summary['total_functions']):.1f}%)",
        f"- Classified as ASM-origin: **{summary['total_asm']}** ({100*summary['total_asm']/max(1,summary['total_functions']):.1f}%)",
        f"- Unclear: **{summary['total_unclear']}**",
        f"- Tiny (skipped): **{summary['total_tiny']}**",
        "",
        "## Per-module breakdown",
        "",
        "| Module | Funcs | C count | ASM count | Unclear | C% overall | C% of classified | Expected | Status |",
        "|--------|-------|---------|-----------|---------|-----------|------------------|----------|--------|",
    ]
    for m in summary["modules"]:
        exp = m["expected_c_ratio"]
        exp_str = f"{exp*100:.0f}%" if exp is not None else "-"
        status = m.get("consistency", "")
        lines.append(
            f"| {m['module']} | {m['num_functions']} | {m['c_count']} | "
            f"{m['asm_count']} | {m['unclear_count']} | "
            f"{m['c_ratio_overall']*100:.1f}% | "
            f"{m['c_ratio_of_classified']*100:.1f}% | {exp_str} | {status} |"
        )

    report_file = STATE_DIR / "pass8_report.md"
    with report_file.open("w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    log(PASS_NAME, f"wrote {report_file}")


# ---------------------------------------------------------------- main

def main() -> int:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"classifying {len(modules)} modules...")

    per_module: list[dict[str, Any]] = []
    for mod in modules:
        if is_module_done(progress, PASS_NAME, mod):
            log(PASS_NAME, f"  {mod}: already done, loading cached")
            cache_file = OUT_DIR / f"{mod}.json"
            if cache_file.exists():
                with cache_file.open("r", encoding="utf-8") as f:
                    per_module.append(json.load(f))
                continue

        result = classify_module(mod)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: SKIP ({result['error']})")
            continue

        out_file = OUT_DIR / f"{mod}.json"
        with out_file.open("w", encoding="utf-8") as f:
            json.dump(result, f, indent=2)
        per_module.append(result)

        c_pct = result["c_ratio_overall"] * 100
        exp = result.get("expected_c_ratio")
        exp_pct = f"{exp*100:.0f}%" if exp is not None else "-"
        log(
            PASS_NAME,
            f"  {mod}: funcs={result['num_functions']:4d} "
            f"C={result['c_count']:4d} ASM={result['asm_count']:4d} "
            f"unclear={result['unclear_count']:4d} "
            f"C%={c_pct:5.1f} (expected {exp_pct})"
        )
        mark_module_done(progress, PASS_NAME, mod)
        save_progress(progress)

    write_summary(per_module)
    mark_phase_done(progress, PASS_NAME, stats={
        "num_modules": len(per_module),
        "total_functions": sum(m.get("num_functions", 0) for m in per_module),
        "total_c": sum(m.get("c_count", 0) for m in per_module),
        "total_asm": sum(m.get("asm_count", 0) for m in per_module),
    })
    save_progress(progress)

    log(PASS_NAME, "DONE")
    return 0


if __name__ == "__main__":
    sys.exit(main())
