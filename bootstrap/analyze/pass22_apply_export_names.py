"""Pass 22: Apply real exported names to discovered functions.

Pass 1b discovers functions and gives them generic `sub_XXXX` names. But
the NE entry table + the module .DEF together give us the real *exported*
names of many of those entry points.

This pass:

  1. Parses each module's `.DEF` -> {ordinal: name}
  2. Parses the NE entry table from `original/<MOD>.EXE` -> {ordinal: (seg, offset)}
  3. Cross-references with `state/analyze/pass21/<MOD>.json` (Starfrost
     debug-build symbols) to mark each rename as "starfrost-confirmed"
     when the same name also appears in the debug build.
  4. Updates `state/analyze/pass3/<MOD>.json` in place: for any function
     whose (segment_file, offset) matches an exported entry, set
     `name` = real exported name, `confidence` = "high",
     and add tag `exported` (and `starfrost_confirmed` when applicable).
  5. Regenerates `docs/analysis/<MOD>.md` with the updated names.

Output:
    Updates state/analyze/pass3/<MODULE>.json
    Regenerates docs/analysis/<MODULE>.md
    Writes state/analyze/pass22.json (per-module rename count)
"""

from __future__ import annotations

import json
import re
import struct
import sys
from pathlib import Path
from typing import Any

sys.path.insert(0, str(Path(__file__).resolve().parent))

from state import REPO, STATE_DIR, log  # noqa: E402

PASS_NAME = "pass22_apply_export_names"
OUT_DIR = STATE_DIR / "pass22"
PASS3_DIR = STATE_DIR / "pass3"
PASS21_DIR = STATE_DIR / "pass21"
DOCS_DIR = REPO / "docs" / "analysis"

RE_DEF_EXPORT = re.compile(
    r"^\s*([A-Za-z_][A-Za-z0-9_]*)\s*(?:=\s*[A-Za-z_][A-Za-z0-9_]*)?\s*@\s*(\d+)",
)


def parse_def_exports(def_path: Path) -> dict[int, str]:
    """Returns {ordinal: name} from a .DEF EXPORTS section."""
    if not def_path.exists():
        return {}
    out: dict[int, str] = {}
    text = def_path.read_text(encoding="utf-8", errors="replace")
    in_exports = False
    for line in text.splitlines():
        s = line.strip()
        if not s or s.startswith(";"):
            continue
        up = s.upper()
        if up.startswith("EXPORTS"):
            in_exports = True
            after = s[len("EXPORTS"):].strip()
            if after:
                m = RE_DEF_EXPORT.match(after)
                if m:
                    out[int(m.group(2))] = m.group(1).upper()
            continue
        if not in_exports:
            continue
        if up.startswith(("IMPORTS", "SEGMENTS", "LIBRARY", "STUB", "DESCRIPTION", "EXETYPE", "CODE", "DATA", "HEAPSIZE")):
            in_exports = False
            continue
        m = RE_DEF_EXPORT.match(s)
        if m:
            out[int(m.group(2))] = m.group(1).upper()
    return out


def parse_ne_entry_table(exe_path: Path) -> dict[int, tuple[int, int]]:
    """Returns {ordinal: (segment_index, offset)} from the NE entry table.

    NE entry table format:
      Bundles. Each bundle:
        BYTE n          - number of entries in bundle (0 = end)
        BYTE seg_ind    - 0=skip these ordinals, 0xFF=movable, else=fixed seg #
        For each entry:
          if movable (seg_ind == 0xFF):
            BYTE flag, WORD INT3F (=0xCD3F), BYTE seg, WORD offset  (6 bytes)
          else (fixed):
            BYTE flag, WORD offset                                   (3 bytes)
    """
    if not exe_path.exists():
        return {}
    data = exe_path.read_bytes()
    ne_off = int.from_bytes(data[0x3C:0x3E], "little")
    if data[ne_off:ne_off + 2] != b"NE":
        return {}
    entry_table_rel = int.from_bytes(data[ne_off + 0x04:ne_off + 0x06], "little")
    entry_table_len = int.from_bytes(data[ne_off + 0x06:ne_off + 0x08], "little")
    base = ne_off + entry_table_rel
    end = base + entry_table_len

    out: dict[int, tuple[int, int]] = {}
    p = base
    ordinal = 1
    while p < end:
        n = data[p]
        if n == 0:
            break
        if p + 2 > end:
            break
        seg_ind = data[p + 1]
        p += 2
        if seg_ind == 0:
            # Skip these ordinals (gap).
            ordinal += n
            continue
        if seg_ind == 0xFF:
            # Movable: 6 bytes per entry
            for _ in range(n):
                if p + 6 > end:
                    break
                seg = data[p + 3]
                off = int.from_bytes(data[p + 4:p + 6], "little")
                out[ordinal] = (seg, off)
                ordinal += 1
                p += 6
        else:
            # Fixed: 3 bytes per entry, segment is seg_ind
            for _ in range(n):
                if p + 3 > end:
                    break
                off = int.from_bytes(data[p + 1:p + 3], "little")
                out[ordinal] = (seg_ind, off)
                ordinal += 1
                p += 3
    return out


def build_offset_map(module: str) -> dict[tuple[str, int], str]:
    """Return {(segment_file, offset): real_name}.

    segment_file matches the convention used in pass1b ("seg1.asm", "seg2.asm", ...).
    """
    def_path = REPO / "src" / module / f"{module}.def"
    exe_path = REPO / "original" / f"{module}.EXE"
    if not exe_path.exists():
        # Try .DRV, .COM
        for ext in (".DRV", ".COM"):
            cand = REPO / "original" / f"{module}{ext}"
            if cand.exists():
                exe_path = cand
                break

    ord_to_name = parse_def_exports(def_path)
    ord_to_loc = parse_ne_entry_table(exe_path)

    out: dict[tuple[str, int], str] = {}
    for ordinal, name in ord_to_name.items():
        if ordinal not in ord_to_loc:
            continue
        seg_idx, offset = ord_to_loc[ordinal]
        out[(f"seg{seg_idx}.asm", offset)] = name
    return out


def load_starfrost_confirmed(module: str) -> set[str]:
    """Returns the set of names that Pass 21 confirmed against the debug build."""
    p = PASS21_DIR / f"{module}.json"
    if not p.exists():
        return set()
    d = json.loads(p.read_text(encoding="utf-8"))
    return {n.upper() for n in d.get("confirmed_names", [])}


def render_module_md(module: str, data: dict[str, Any]) -> None:
    """Re-render docs/analysis/<MODULE>.md (matches pass3.render_module_md)."""
    funcs = data.get("functions", [])
    funcs_sorted = sorted(
        funcs,
        key=lambda x: (x.get("offset") if x.get("offset") is not None else 0,
                       x.get("name", "")),
    )

    lines: list[str] = []
    lines.append(f"# Module `{module}`")
    lines.append("")
    lines.append(f"- Functions: **{data.get('num_functions', 0)}**")
    conf = data.get("confidence_count", {})
    lines.append(
        f"- Confidence: high={conf.get('high', 0)}, medium={conf.get('medium', 0)},"
        f" low={conf.get('low', 0)}, unknown={conf.get('unknown', 0)}"
    )
    lines.append("")
    lines.append("## Functions")
    lines.append("")
    lines.append("| Offset | Name | Kind | Instr | Description | Conf |")
    lines.append("|--------|------|------|-------|-------------|------|")
    for fn in funcs_sorted:
        off = fn.get("offset")
        off_s = f"0x{off:04X}" if off is not None else "-"
        name = fn.get("name", "?")
        kind = fn.get("kind", "?")
        n_instr = fn.get("num_instructions", 0)
        desc = (fn.get("description", "") or "").replace("|", "\\|")[:120]
        c = fn.get("confidence", "")
        # Mark exported / starfrost-confirmed names with a small badge
        tags = fn.get("semantic_tags") or []
        badge = ""
        if "starfrost_confirmed" in tags:
            badge = " (S)"
        elif "exported" in tags:
            badge = " (E)"
        lines.append(
            f"| `{off_s}` | `{name}`{badge} | {kind} | {n_instr} | {desc} | {c} |"
        )
    (DOCS_DIR / f"{module}.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def process_module(module: str) -> dict[str, Any]:
    pass3_path = PASS3_DIR / f"{module}.json"
    if not pass3_path.exists():
        return {"module": module, "skipped": True, "reason": "no pass3 data"}

    offset_map = build_offset_map(module)
    if not offset_map:
        return {"module": module, "renamed": 0, "starfrost_confirmed": 0, "exports": 0}

    starfrost_confirmed = load_starfrost_confirmed(module)

    data = json.loads(pass3_path.read_text(encoding="utf-8"))
    funcs = data.get("functions", [])

    renamed = 0
    sf_confirmed = 0
    for fn in funcs:
        seg_file = fn.get("segment_file")
        off = fn.get("offset")
        if seg_file is None or off is None:
            continue
        real_name = offset_map.get((seg_file, off))
        if not real_name:
            continue

        # Apply rename
        old_name = fn.get("name", "")
        fn["name"] = real_name
        fn["confidence"] = "high"
        fn["original_discovered_name"] = old_name
        tags = list(fn.get("semantic_tags") or [])
        if "exported" not in tags:
            tags.append("exported")
        if real_name.upper() in starfrost_confirmed:
            if "starfrost_confirmed" not in tags:
                tags.append("starfrost_confirmed")
            sf_confirmed += 1
        fn["semantic_tags"] = sorted(set(tags))
        renamed += 1

    # Recompute confidence_count
    cc = {"high": 0, "medium": 0, "low": 0, "unknown": 0}
    for fn in funcs:
        c = fn.get("confidence", "unknown")
        cc[c] = cc.get(c, 0) + 1
    data["confidence_count"] = cc

    # Save updated pass3 JSON
    pass3_path.write_text(json.dumps(data, indent=2), encoding="utf-8")

    # Re-render the .md
    render_module_md(module, data)

    return {
        "module": module,
        "renamed": renamed,
        "starfrost_confirmed": sf_confirmed,
        "exports": len(offset_map),
    }


def main() -> int:
    OUT_DIR.mkdir(parents=True, exist_ok=True)
    DOCS_DIR.mkdir(parents=True, exist_ok=True)

    # Discover modules from src/
    modules: list[str] = []
    for d in sorted((REPO / "src").iterdir()):
        if d.is_dir() and (d / "layout.json").exists():
            modules.append(d.name)

    log(PASS_NAME, f"Modules: {len(modules)}")

    summary = []
    total_renamed = 0
    total_starfrost = 0
    for mod in modules:
        r = process_module(mod)
        summary.append(r)
        total_renamed += r.get("renamed", 0)
        total_starfrost += r.get("starfrost_confirmed", 0)
        if r.get("renamed", 0) > 0:
            log(PASS_NAME,
                f"  {mod}: {r['renamed']} renamed, "
                f"{r['starfrost_confirmed']} starfrost-confirmed, "
                f"{r['exports']} exports total")

    index = {
        "modules": summary,
        "total_renamed": total_renamed,
        "total_starfrost_confirmed": total_starfrost,
    }
    (OUT_DIR / "index.json").write_text(json.dumps(index, indent=2), encoding="utf-8")

    log(PASS_NAME,
        f"DONE. Renamed {total_renamed} functions across {len(modules)} modules. "
        f"{total_starfrost} also confirmed by Starfrost debug symbols.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
