"""Phase-1 probe: do the existing pure-db .asm sources actually assemble
under MASM 4.00 + DOSBox-X, and produce byte-exact output?

If yes, that is already a major improvement: today build_from_source.py
parses the `db` directives with a regex (it never invokes MASM), so the
.asm files are effectively "data files dressed up as assembler". Running
them through MASM proves they are real MASM 4.00 source.

Usage:  python bootstrap/try_assemble_db_source.py [MODULE [MODULE ...]]
        default = WIN100 WINOLDAP
"""
from __future__ import annotations

import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from disasm_to_masm import (  # noqa: E402
    assemble_via_masm, parse_masm_errors, WORK_ROOT,
)

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
ORIG = ROOT / "original"


def probe_one(mod_name: str, seg_index: int) -> dict:
    src_path = SRC / mod_name / f"seg{seg_index}.asm"
    layout = json.loads((SRC / mod_name / "layout.json").read_text())
    seg = next(s for s in layout["segments"] if s["index"] == seg_index)
    orig_name = layout["original_name"]
    fo, sz = seg["file_off"], seg["data_len"]
    target = (ORIG / orig_name).read_bytes()[fo:fo + sz]

    asm_text = src_path.read_text(encoding="ascii", errors="replace")
    short = (mod_name.upper()[:6] + f"D{seg_index}")[:8]
    print(f"\n=== {mod_name}/seg{seg_index}.asm ({len(asm_text)} chars, "
          f"{len(asm_text.splitlines())} lines, expecting {sz} B) ===")
    obj_bytes, lst_text = assemble_via_masm(
        asm_text, short=short, work_dir=WORK_ROOT / short)
    if obj_bytes is None:
        errs = parse_masm_errors(lst_text, short)
        print(f"  FAIL: MASM did not produce .OBJ "
              f"({len(errs)} parseable errors)")
        for src_line, code, msg in errs[:5]:
            print(f"    line {src_line}: error {code}: {msg}")
        return {"mod": mod_name, "seg": seg_index,
                "status": "FAIL_MASM", "n_errs": len(errs)}
    n_obj = len(obj_bytes)
    same = obj_bytes == target
    print(f"  MASM produced {n_obj} B "
          f"(expected {sz}) -> {'BYTE-EXACT OK' if same else 'DIFF'}")
    if not same:
        diff_count = sum(1 for i in range(min(n_obj, sz))
                          if obj_bytes[i] != target[i])
        first_diff = next((i for i in range(min(n_obj, sz))
                           if obj_bytes[i] != target[i]), None)
        print(f"    diff: {diff_count}B differ "
              f"(first @0x{first_diff:04X}: obj=0x{obj_bytes[first_diff]:02X} "
              f"vs orig=0x{target[first_diff]:02X})")
    return {
        "mod": mod_name, "seg": seg_index,
        "status": "OK" if same else "DIFF",
        "obj_size": n_obj, "expected_size": sz,
    }


def main():
    args = sys.argv[1:]
    if not args:
        targets = [("WIN100", 1), ("WINOLDAP", 1), ("WINOLDAP", 2)]
    else:
        # Each arg = MOD or MOD:SEG
        targets = []
        for a in args:
            if ":" in a:
                m, s = a.split(":", 1)
                targets.append((m, int(s)))
            else:
                # Probe every segment in layout.json
                layout = json.loads(
                    (SRC / a / "layout.json").read_text())
                for s in layout["segments"]:
                    targets.append((a, s["index"]))

    results = []
    for mod, seg_idx in targets:
        try:
            results.append(probe_one(mod, seg_idx))
        except Exception as e:
            print(f"\n!! {mod} seg{seg_idx}: {e}")
            results.append({"mod": mod, "seg": seg_idx,
                            "status": "EXCEPTION", "err": str(e)})

    print("\n" + "=" * 60)
    print("SUMMARY")
    print("=" * 60)
    for r in results:
        print(f"  {r['mod']:10s} seg{r['seg']}: {r['status']}")
    return 0 if all(r["status"] == "OK" for r in results) else 1


if __name__ == "__main__":
    sys.exit(main())
