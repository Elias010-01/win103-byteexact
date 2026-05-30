"""Quick survey of seg*.asm format per module: db lines vs instruction lines.

This is a one-shot diagnostic. Run as `python bootstrap/survey_asm_format.py`.
"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"

RE_DB = re.compile(r"^\s*db\s+", re.IGNORECASE)
RE_INSTR = re.compile(r"^\s+[a-z]+(\s|$)")
RE_LABEL = re.compile(r"^[A-Za-z_][A-Za-z0-9_]*:\s*(;.*)?$")
RE_ORPHAN_REF = re.compile(r"\b(L_[0-9A-Fa-f]+|X[0-9A-Fa-f]+|N[0-9A-Fa-f]+)\b")


def survey_module(mod_dir):
    segs = sorted(mod_dir.glob("seg*.asm"))
    total_lines = db = instr = labels = blanks = headers = 0
    references = set()
    defined_labels = set()
    for sp in segs:
        try:
            text = sp.read_text(encoding="ascii")
        except UnicodeDecodeError:
            text = sp.read_text(encoding="latin-1")
        for line in text.splitlines():
            total_lines += 1
            stripped = line.strip()
            if not stripped:
                blanks += 1
            elif stripped.startswith(";"):
                headers += 1
            elif RE_DB.match(line):
                db += 1
            elif RE_LABEL.match(stripped):
                labels += 1
                # capture name
                defined_labels.add(stripped.split(":", 1)[0])
            elif RE_INSTR.match(line):
                instr += 1
            # collect references from any non-comment line
            code_part = line.split(";", 1)[0]
            for m in RE_ORPHAN_REF.findall(code_part):
                references.add(m)
    # orphan refs: referenced but never defined as label
    orphans = sorted(references - defined_labels)
    return {
        "segs": len(segs),
        "lines": total_lines,
        "db": db,
        "instr": instr,
        "labels": labels,
        "orphans": orphans,
    }


def main():
    mods = sorted(d for d in SRC.iterdir()
                  if d.is_dir() and (d / "layout.json").exists())
    print(f"{'MODULE':<14s} {'#segs':>5s} {'#lines':>8s} {'db':>7s}"
          f" {'instr':>7s} {'%db':>5s} {'orphans':>8s}")
    pure_db = mixed = with_orphans = 0
    for d in mods:
        r = survey_module(d)
        denom = r["db"] + r["instr"]
        pct = 100 * r["db"] / denom if denom else 0
        no = len(r["orphans"])
        if no == 0 and r["instr"] == 0:
            pure_db += 1
        elif r["instr"] > 0:
            mixed += 1
        if no:
            with_orphans += 1
        print(f"{d.name:<14s} {r['segs']:>5d} {r['lines']:>8d}"
              f" {r['db']:>7d} {r['instr']:>7d} {pct:>4.0f}%"
              f" {no:>8d}")
    print()
    print(f"=== {pure_db} pure-db, {mixed} mixed (instr+db),"
          f" {with_orphans} con refs huerfanas ===")


if __name__ == "__main__":
    main()
