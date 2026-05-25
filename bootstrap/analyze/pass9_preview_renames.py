"""Pass 9 (preview): identify functions whose args/locals can be auto-renamed.

This is a READ-ONLY analysis. It does NOT modify any `.asm` file. Its purpose
is to validate the signature KB against the discovered function inventory and
report what fraction of functions can be improved automatically.

Strategy:

  1. For each module, look at the NE export table (we have it as `.def`).
  2. For each exported function whose name is in `win1x_api_signatures.SIGNATURES`,
     verify that a discovered PROC matches that name. If so, we can rename
     its arguments (`[bp+N]` references) using the KB.
  3. Additionally, when a function calls a known API, examine the push
     sequence right before the call to infer the types of values being
     passed — this reveals the types of locals/args in the *caller* without
     having a signature for the caller itself.

Output:
  state/analyze/pass9_preview.json    machine-readable
  state/analyze/pass9_preview.md      human-readable report

No mutation of `src/`.
"""

from __future__ import annotations

import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import (  # noqa: E402
    REPO,
    STATE_DIR,
    list_modules,
    log,
    load_progress,
    mark_phase_done,
    phase,
    save_progress,
)
from win1x_api_signatures import SIGNATURES, get_signature, type_size  # noqa: E402

PASS_NAME = "pass9_preview_renames"
PASS1B_DIR = STATE_DIR / "pass1b"


# ----------------------- Helpers ---------------------------------------------

RE_DEF_EXPORT = re.compile(r"^\s*([A-Z_][A-Z0-9_]*)\s+@(\d+)", re.IGNORECASE)


def parse_def_exports(module: str) -> dict[str, int]:
    """Return {EXPORT_NAME: ordinal} from src/<MODULE>/<MODULE>.def."""
    def_file = REPO / "src" / module / f"{module}.def"
    if not def_file.exists():
        return {}
    exports: dict[str, int] = {}
    with def_file.open("r", encoding="utf-8", errors="replace") as f:
        for line in f:
            m = RE_DEF_EXPORT.match(line)
            if m:
                exports[m.group(1).upper()] = int(m.group(2))
    return exports


def load_pass1b(module: str) -> dict[str, Any] | None:
    """Load discovered-functions JSON for a module."""
    p = PASS1B_DIR / f"{module}.json"
    if not p.exists():
        return None
    with p.open("r", encoding="utf-8") as f:
        return json.load(f)


# ----------------------- Per-module analysis ---------------------------------

def analyze_module(module: str) -> dict[str, Any]:
    """Build a rename plan for one module.

    Returns:
      {
        "module": ...,
        "exports": {name: ordinal, ...},
        "exports_with_signatures": [...names matching KB...],
        "discovered_funcs": int,
        "renamable_args": int,       # total [bp+N] arg slots we can rename
        "rename_plan": [...details...],
      }
    """
    exports = parse_def_exports(module)
    pass1b = load_pass1b(module)
    if not pass1b:
        return {"module": module, "error": "no pass1b data"}

    funcs = pass1b.get("functions", [])

    # Match exported names against signatures we have
    exp_with_sig = [name for name in exports if name in SIGNATURES]

    # Build a map from function-name (whatever it is in the .asm) to fn dict.
    # In pass1b, discovered functions are named sub_NNNN (offset).
    # The .def file gives ordinals. To match an export to a sub_NNNN we would
    # need the entry table, which is harder. For now, we report aggregate
    # numbers and leave per-function matching to a later pass.

    # Inverse strategy: look at all far-calls in this module, and count which
    # known APIs are being called. That tells us which signatures will be
    # *useful* for renaming local context in caller functions.
    api_calls_inbound: Counter = Counter()  # functions that get called
    for fn in funcs:
        for cfar in fn.get("calls_far", []):
            # cfar is like "far KERNEL.LSTRLEN" or "FAR PTR" etc.
            # Extract the symbol after the last dot.
            tok = cfar.strip()
            if "." in tok:
                api = tok.rsplit(".", 1)[-1].strip().upper()
                if api in SIGNATURES:
                    api_calls_inbound[api] += 1

    # Total renamable slots: for every API call we can identify, the K args
    # being passed in correspond to K [bp+N] reads in the caller right before
    # the call. We can attribute K renames per call (one per arg).
    total_renamable = 0
    for api, count in api_calls_inbound.items():
        n_params = len(SIGNATURES[api].get("params", []))
        total_renamable += n_params * count

    # Detailed plan: top APIs called from this module
    top_calls = api_calls_inbound.most_common(20)

    return {
        "module": module,
        "num_exports": len(exports),
        "exports_with_signatures": exp_with_sig,
        "num_exports_with_signatures": len(exp_with_sig),
        "num_discovered_funcs": len(funcs),
        "inbound_api_calls": dict(api_calls_inbound),
        "top_called_apis": [
            {"api": api, "count": count, "n_params": len(SIGNATURES[api].get("params", []))}
            for api, count in top_calls
        ],
        "total_inferrable_arg_slots": total_renamable,
    }


# ----------------------- Report ---------------------------------------------

def write_report(per_module: list[dict[str, Any]]) -> None:
    summary = {
        "version": 1,
        "num_modules": len(per_module),
        "total_exports_with_sig": sum(m.get("num_exports_with_signatures", 0) for m in per_module),
        "total_inferrable_slots": sum(m.get("total_inferrable_arg_slots", 0) for m in per_module),
        "modules": per_module,
    }
    out_json = STATE_DIR / "pass9_preview.json"
    with out_json.open("w", encoding="utf-8") as f:
        json.dump(summary, f, indent=2)
    log(PASS_NAME, f"wrote {out_json}")

    lines = [
        "# Pass 9 (Preview) — API Signature Coverage Report",
        "",
        "> Read-only analysis: shows how many functions can be improved with the",
        "> Phase 2 KB of Win 1.x API signatures.",
        "",
        "## Aggregate",
        "",
        f"- Modules analyzed: **{summary['num_modules']}**",
        f"- Exports we have signatures for (across all modules): **{summary['total_exports_with_sig']}**",
        f"- Inferrable arg slots across the project: **{summary['total_inferrable_slots']}**",
        "",
        "## Top APIs called across the whole project",
        "",
        "These are the API calls that, once we resolve push sequences before each",
        "call site, will yield the most renames in caller functions.",
        "",
    ]

    # Aggregate top calls across all modules
    global_calls: Counter = Counter()
    for m in per_module:
        for api, count in m.get("inbound_api_calls", {}).items():
            global_calls[api] += count

    lines.append("| API | Total calls | Module | Args |")
    lines.append("|-----|-------------|--------|------|")
    for api, count in global_calls.most_common(30):
        sig = SIGNATURES[api]
        lines.append(f"| {api} | {count} | {sig['module']} | {len(sig.get('params', []))} |")

    lines += [
        "",
        "## Per-module summary",
        "",
        "| Module | Exports | With sig | Discovered funcs | API call sites | Inferrable arg slots |",
        "|--------|---------|----------|------------------|----------------|----------------------|",
    ]
    for m in per_module:
        if "error" in m:
            continue
        total_calls = sum(m.get("inbound_api_calls", {}).values())
        lines.append(
            f"| {m['module']} | {m.get('num_exports', 0)} | {m.get('num_exports_with_signatures', 0)} | "
            f"{m.get('num_discovered_funcs', 0)} | {total_calls} | "
            f"{m.get('total_inferrable_arg_slots', 0)} |"
        )

    out_md = STATE_DIR / "pass9_preview.md"
    with out_md.open("w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")
    log(PASS_NAME, f"wrote {out_md}")


# ----------------------- Main -----------------------------------------------

def main() -> int:
    progress = load_progress()
    phase(progress, PASS_NAME)
    save_progress(progress)

    modules = list_modules()
    log(PASS_NAME, f"analyzing {len(modules)} modules with {len(SIGNATURES)} known signatures")

    per_module: list[dict[str, Any]] = []
    for mod in modules:
        result = analyze_module(mod)
        if "error" in result:
            log(PASS_NAME, f"  {mod}: {result['error']}")
            continue
        log(
            PASS_NAME,
            f"  {mod}: exports={result['num_exports']:3d} "
            f"with_sig={result['num_exports_with_signatures']:3d} "
            f"funcs={result['num_discovered_funcs']:4d} "
            f"inferrable_slots={result['total_inferrable_arg_slots']:5d}"
        )
        per_module.append(result)

    write_report(per_module)
    mark_phase_done(progress, PASS_NAME, stats={
        "num_modules": len(per_module),
        "total_inferrable_slots": sum(m.get("total_inferrable_arg_slots", 0) for m in per_module),
    })
    save_progress(progress)
    log(PASS_NAME, "DONE")
    return 0


if __name__ == "__main__":
    sys.exit(main())
