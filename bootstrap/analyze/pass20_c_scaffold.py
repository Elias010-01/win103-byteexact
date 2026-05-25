"""Pass 20: emit C scaffolding for application modules.

For each module classified as mostly-C in pass 8 (apps and high-C-ratio
modules), generate a `c_decomp/<MODULE>/<MODULE>.c` file containing:

  - Windows 1.x style file header
  - #include directives for the relevant inc/ headers
  - For each discovered function (from pass 1b), a stub C function with:
      * the inferred FAR PASCAL signature
      * a comment block summarizing classification + API calls
      * a placeholder body `/* TODO: lift from src/<MODULE>/seg<N>.asm @ 0xXXXX */`
  - Per-function /* ... */ comments listing the original byte offsets and
    classification verdict

This is NOT a real C decompilation. It is a SCAFFOLD that:

  1. Documents which functions exist in each module with their inferred signatures
  2. Lists the API surface each function uses
  3. Provides a structural template for future hand-lift work

The generated `.c` files will not compile cleanly out of the box; they are
documentation in C-source format, intended to be progressively filled in.

Output:
  c_decomp/<MODULE>/<MODULE>.c
  c_decomp/<MODULE>/README.md
  c_decomp/README.md
  state/analyze/pass20.json
"""

from __future__ import annotations

import json
import sys
import time
from collections import Counter
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, log  # noqa: E402
from win1x_api_signatures import SIGNATURES  # noqa: E402

PASS_NAME = "pass20_c_scaffold"
PASS1B_DIR = STATE_DIR / "pass1b"
PASS8_DIR = STATE_DIR / "pass8"
OUT_DIR = REPO / "c_decomp"

# Modules to generate C scaffolds for (high C-origin from pass 8 + user-facing apps)
TARGET_MODULES = [
    "CALC", "CALENDAR", "CARDFILE", "CLIPBRD", "CLOCK", "CONTROL",
    "NOTEPAD", "PAINT", "REVERSI", "TERMINAL", "WRITE", "ABC",
    "MSDOS", "SPOOLER",
]


C_FILE_HEADER = """/*
 * {module}.c - Reconstructed C scaffold for Windows 1.x {module}.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of {module}.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/{module}/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/{module}/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: {num_funcs}
 * Total API call sites: {num_calls}
 *
 * To convert any function below to a real C implementation:
 *   1. Read the corresponding .asm at the offset noted in the function header.
 *   2. Identify control flow (loops, if/else) from the L_xxxx labels (pass 16).
 *   3. Identify locals/args from the [bp-N] / [bp+N] references.
 *   4. Replace the body, then verify byte-exactness via build_from_source.py
 *      compiled with MSC 4.0 and matching flags (long-running goal).
 */

#include <windows.h>
#include <kernel.h>
#include <user.h>
#include <gdi.h>

"""


def load_pass1b(module: str) -> list[dict[str, Any]] | None:
    p = PASS1B_DIR / f"{module}.json"
    if not p.exists():
        return None
    with p.open("r", encoding="utf-8") as f:
        return json.load(f).get("functions", [])


def load_pass8(module: str) -> dict[tuple[str, str], dict[str, Any]]:
    """Return map (segment_file, name) -> pass8 classification."""
    p = PASS8_DIR / f"{module}.json"
    if not p.exists():
        return {}
    with p.open("r", encoding="utf-8") as f:
        d = json.load(f)
    out = {}
    for fn in d.get("functions", []):
        out[(fn.get("segment_file", ""), fn.get("name", ""))] = fn.get("classification", {})
    return out


def infer_return_type(epilogue: str) -> str:
    if epilogue in ("retf_n", "retf"):
        return "WORD"   # most Win 1.x FAR procs return WORD-sized in AX
    if epilogue in ("ret_n", "ret"):
        return "WORD"
    if epilogue == "iret":
        return "void"
    return "WORD"


def infer_calling_convention(kind: str) -> str:
    return "FAR PASCAL"


def extract_api_name(call_far_str: str) -> str | None:
    s = call_far_str.strip()
    if "." in s:
        return s.rsplit(".", 1)[-1].strip().upper()
    return None


def render_function_stub(fn: dict[str, Any], cls: dict[str, Any]) -> str:
    name = fn.get("name", "unknown")
    offset = fn.get("offset")
    seg = fn.get("segment_file", "?")
    prologue = fn.get("prologue", "")
    epilogue = fn.get("epilogue", "")
    n_instr = fn.get("num_instructions", 0)
    calls_far = fn.get("calls_far", [])
    calls_near = fn.get("calls_near", [])

    # Determine return type
    ret = infer_return_type(epilogue)
    if cls.get("verdict") in ("asm_high", "asm_medium"):
        ret_comment = f" /* {cls.get('verdict', '')} — keep as asm */ "
    else:
        ret_comment = ""

    # Build header
    api_calls_section = ""
    if calls_far:
        seen: set[str] = set()
        ordered: list[str] = []
        for c in calls_far:
            api = extract_api_name(c)
            if api and api not in seen:
                seen.add(api)
                ordered.append(api)
        if ordered:
            api_calls_section = " *\n * API calls:\n"
            for api in ordered:
                sig = SIGNATURES.get(api)
                if sig:
                    params = sig.get("params", [])
                    psig = ", ".join(f"{p['type']} {p['name']}" for p in params) if params else "void"
                    api_calls_section += f" *   {api}({psig}) -> {sig.get('return', '?')}\n"
                else:
                    api_calls_section += f" *   {api}(?)\n"

    near_section = ""
    if calls_near:
        shown = calls_near[:6]
        near_section = " *\n * Internal calls: " + ", ".join(shown)
        if len(calls_near) > 6:
            near_section += f" ... +{len(calls_near) - 6}"
        near_section += "\n"

    offset_str = f"0x{offset:04X}" if isinstance(offset, int) else "?"

    body = f"""/*
 * {name} (sub_{offset_str.replace('0x', '')})
 * segment: {seg}    offset: {offset_str}    instructions: {n_instr}
 * classification (pass8): {cls.get('verdict', 'n/a')}
 * prologue: {prologue}    epilogue: {epilogue}
{api_calls_section}{near_section} *
 * Reverse-engineering hints:
 *   See src/{fn.get('module', '?')}/{seg} for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
{ret} FAR PASCAL {name}(/* TODO: infer args from [bp+N] refs in .asm */){ret_comment}
{{
    /* TODO: lift body from .asm */
    return 0;
}}

"""
    return body


def emit_module_c(module: str) -> dict[str, Any]:
    funcs = load_pass1b(module)
    if not funcs:
        return {"module": module, "error": "no pass1b"}
    cls_map = load_pass8(module)

    mod_dir = OUT_DIR / module
    mod_dir.mkdir(parents=True, exist_ok=True)

    # Count API calls
    api_counter: Counter = Counter()
    for fn in funcs:
        for c in fn.get("calls_far", []):
            api = extract_api_name(c)
            if api:
                api_counter[api] += 1

    out_path = mod_dir / f"{module}.c"
    with out_path.open("w", encoding="utf-8", newline="\n") as f:
        f.write(C_FILE_HEADER.format(
            module=module,
            num_funcs=len(funcs),
            num_calls=sum(api_counter.values()),
        ))
        for fn in funcs:
            key = (fn.get("segment_file", ""), fn.get("name", ""))
            cls = cls_map.get(key, {})
            # Add module to fn for relative path display
            fn = dict(fn)
            fn["module"] = module
            f.write(render_function_stub(fn, cls))

    # Per-module README
    readme = mod_dir / "README.md"
    with readme.open("w", encoding="utf-8", newline="\n") as f:
        f.write(f"""# {module}.c — Reconstructed C scaffold

This directory contains the C scaffolding for `{module}.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `{module}.c` — function inventory of {module}.EXE in C-source form.

## Statistics

- Functions discovered: {len(funcs)}
- Total API call sites: {sum(api_counter.values())}
- Unique APIs called: {len(api_counter)}

## Top APIs called

""")
        for api, count in api_counter.most_common(15):
            sig = SIGNATURES.get(api)
            sig_str = ""
            if sig:
                params = sig.get("params", [])
                psig = ", ".join(f"{p['type']} {p['name']}" for p in params) if params else "void"
                sig_str = f" — `{api}({psig}) -> {sig.get('return', '?')}`"
            f.write(f"- `{api}`: {count} call(s){sig_str}\n")

        f.write(f"""

## How to lift one function to real C

1. Pick a function from `{module}.c`.
2. Open `src/{module}/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
""")

    return {
        "module": module,
        "num_functions": len(funcs),
        "num_api_calls": sum(api_counter.values()),
        "output_file": str(out_path),
    }


def emit_root_readme(results: list[dict[str, Any]]) -> None:
    p = OUT_DIR / "README.md"
    p.parent.mkdir(parents=True, exist_ok=True)
    total_funcs = sum(r.get("num_functions", 0) for r in results if "error" not in r)
    total_calls = sum(r.get("num_api_calls", 0) for r in results if "error" not in r)
    lines = [
        "# c_decomp/ — C scaffolds for Windows 1.x modules",
        "",
        "This directory contains AUTO-GENERATED C scaffolding for the application",
        "modules of Windows 1.03 (CALC, CARDFILE, NOTEPAD, PAINT, REVERSI, WRITE,",
        "TERMINAL, etc.), generated from the byte-exact `.asm` sources in `src/`.",
        "",
        "**Status**: scaffolding only. Function bodies are placeholders (`TODO`).",
        "These files are documentation in C form, intended as a starting point",
        "for future hand-lift work.",
        "",
        "## Statistics",
        "",
        f"- Modules scaffolded: **{len(results)}**",
        f"- Total functions documented: **{total_funcs}**",
        f"- Total API call sites cataloged: **{total_calls}**",
        "",
        "## Modules",
        "",
        "| Module | Functions | API Calls | Scaffold |",
        "|--------|-----------|-----------|----------|",
    ]
    for r in results:
        if "error" in r:
            continue
        m = r["module"]
        lines.append(f"| {m} | {r['num_functions']} | {r['num_api_calls']} | `c_decomp/{m}/{m}.c` |")

    lines += [
        "",
        "## What this is NOT",
        "",
        "- This is not a working C source tree. The `.c` files will not compile.",
        "- This is not a real decompilation. Function bodies are `TODO` stubs.",
        "- The signatures shown are inferred from heuristics (pass 8 classifier",
        "  + win1x_api_signatures KB); they may be wrong for individual functions.",
        "",
        "## What this IS",
        "",
        "- A complete enumeration of every function in each module with its",
        "  classification (likely-C vs likely-ASM origin), API call surface, and",
        "  pointer to the byte-exact source.",
        "- A template for incremental, byte-exact-validatable C lifting (the",
        "  long-term goal, modeled after `sm64decomp`, `oot`, `pokered`).",
        "- A documentation artifact that makes the entire project navigable from",
        "  a C-programmer's perspective rather than only from an assembly one.",
        "",
        "## How this was generated",
        "",
        "Run `python bootstrap/analyze/pass20_c_scaffold.py` from the repo root.",
    ]
    with p.open("w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines) + "\n")


def main() -> int:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    log(PASS_NAME, f"generating C scaffolds for {len(TARGET_MODULES)} module(s)")
    results = []
    for mod in TARGET_MODULES:
        r = emit_module_c(mod)
        if "error" in r:
            log(PASS_NAME, f"  {mod}: SKIP ({r['error']})")
            continue
        results.append(r)
        log(PASS_NAME, f"  {mod}: funcs={r['num_functions']:4d} api_calls={r['num_api_calls']:4d}")

    emit_root_readme(results)

    summary = {
        "pass": PASS_NAME,
        "target_modules": TARGET_MODULES,
        "results": results,
        "total_functions": sum(r.get("num_functions", 0) for r in results),
        "total_api_calls": sum(r.get("num_api_calls", 0) for r in results),
        "output_dir": str(OUT_DIR),
    }
    out = STATE_DIR / "pass20.json"
    out.parent.mkdir(parents=True, exist_ok=True)
    with out.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"summary: {len(results)} modules scaffolded, {summary['total_functions']} functions")
    return 0


if __name__ == "__main__":
    sys.exit(main())
