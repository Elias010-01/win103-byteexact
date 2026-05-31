"""Pass 31: Classify remaining db lines as code, data, or padding.

For every semantic db file (db with mnemonic comments), analyze each db line
to determine if it's:
  - CODE: The comment is a valid instruction that NASM couldn't replicate
  - DATA: The bytes look like data (strings, tables, bitmaps, jump tables)
  - PADDING: Sequences of repeated bytes (00, FF, 90) used for alignment
  - UNKNOWN: Cannot determine

Output:
  state/analyze/pass31/<MODULE>.json per-module classification
  state/analyze/pass31_summary.md human-readable report
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from collections import Counter

REPO = Path(__file__).resolve().parents[2]
SRC = REPO / "src"
OUT_DIR = REPO / "state" / "analyze" / "pass31"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def is_padding(hex_vals: list[int]) -> bool:
    """Check if bytes are padding (repeated 00, FF, 90, or single byte)."""
    if len(hex_vals) == 1:
        return hex_vals[0] in (0x00, 0xFF, 0x90, 0xCC)
    if len(set(hex_vals)) == 1:
        return hex_vals[0] in (0x00, 0xFF, 0x90)
    return False


def is_string_data(hex_vals: list[int]) -> bool:
    """Check if bytes look like ASCII string data."""
    ascii_chars = sum(1 for v in hex_vals if 32 <= v <= 126)
    return len(hex_vals) >= 3 and ascii_chars >= len(hex_vals) * 0.7


def is_jump_table(hex_vals: list[int]) -> bool:
    """Check if bytes look like a jump table (offsets)."""
    if len(hex_vals) >= 4 and len(hex_vals) % 2 == 0:
        # Check for patterns like EB xx (jmp short) or E9 xx xx (jmp near)
        for i in range(0, len(hex_vals), 2):
            if hex_vals[i] == 0xEB and i + 1 < len(hex_vals):
                return True
    return False


def is_likely_code_comment(comment: str) -> bool:
    """Heuristic: does the comment look like an instruction?"""
    code_patterns = [
        r"^\s*(push|pop|mov|add|sub|inc|dec|xor|and|or|not|neg|cmp|test|jmp|je|jne|jg|jl|jge|jle|ja|jb|jae|jbe|jo|jno|js|jns|jp|jnp|call|ret|retf|iret|nop|cld|std|cli|sti|lea|lds|les|lods|stos|movs|cmps|scas|xchg|in|out|int|into|bound|enter|leave|loop|loope|loopne|set|cmov|pushf|popf|pusha|popa|shl|shr|sar|sal|rol|ror|rcl|rcr)[\s,;]",
        r"\b(eax|ebx|ecx|edx|esi|edi|ebp|esp|ax|bx|cx|dx|si|di|bp|sp|al|ah|bl|bh|cl|ch|dl|dh)\b",
        r"\b(byte|word|dword|near|short|ptr)\b",
        r"\[.*\]",
    ]
    return any(re.search(p, comment, re.I) for p in code_patterns)


def classify_line(db_part: str, comment: str, hex_vals: list[int]) -> str:
    """Classify a db line into CODE, DATA, PADDING, or UNKNOWN."""
    if not hex_vals:
        return "UNKNOWN"
    
    # Priority 1: Padding
    if is_padding(hex_vals):
        return "PADDING"
    
    # Priority 2: String data
    if is_string_data(hex_vals):
        return "DATA"
    
    # Priority 3: Jump table
    if is_jump_table(hex_vals):
        return "DATA"
    
    # Priority 4: Code (has mnemonic comment)
    if comment and is_likely_code_comment(comment):
        return "CODE"
    
    # Priority 5: Check for common data patterns
    if len(hex_vals) >= 4 and all(0 <= v <= 0xFF for v in hex_vals):
        # If it's a long sequence without a clear instruction comment
        if len(hex_vals) > 4 and not comment:
            return "DATA"
    
    return "UNKNOWN"


def parse_db_line(line: str) -> tuple[list[int], str] | None:
    """Parse a db line: 'db 043h ; inc bx' -> (hex_vals, comment)."""
    line = line.strip()
    if not line.startswith("db "):
        return None
    
    comment = ""
    if ";" in line:
        parts = line.split(";", 1)
        db_part = parts[0].strip()
        comment = parts[1].strip()
    else:
        db_part = line.strip()
    
    hex_vals = []
    for v in db_part[3:].split(","):
        v = v.strip()
        if not v:
            continue
        # Handle formats: 043h, 0x43, 43h, 0x43
        v_lower = v.lower()
        if v_lower.endswith("h"):
            v = v[:-1]
            if v.startswith("0"):
                v = v[1:]
            try:
                hex_vals.append(int(v, 16))
            except ValueError:
                pass
        else:
            try:
                hex_vals.append(int(v, 16))
            except ValueError:
                pass
    
    return hex_vals, comment


def process_file(seg_path: Path) -> dict:
    """Process a single .asm file and return classification stats."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    results = {
        "file": str(seg_path.relative_to(REPO)),
        "total_db_lines": 0,
        "CODE": 0,
        "DATA": 0,
        "PADDING": 0,
        "UNKNOWN": 0,
        "details": [],
    }
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s.startswith("db "):
            continue
        
        parsed = parse_db_line(s)
        if parsed is None:
            continue
        
        hex_vals, comment = parsed
        classification = classify_line(s, comment, hex_vals)
        
        results["total_db_lines"] += 1
        results[classification] += 1
        results["details"].append({
            "line": i + 1,
            "bytes": hex_vals,
            "comment": comment,
            "class": classification,
        })
    
    return results


def main():
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        if "Semantic" in text or "AUTO-GENERATED" in text:
            files.append(f)
    
    print(f"Processing {len(files)} files...")
    
    all_results = {}
    global_stats = Counter()
    
    for i, f in enumerate(files):
        result = process_file(f)
        if result["total_db_lines"] > 0:
            module = f.parent.name
            if module not in all_results:
                all_results[module] = []
            all_results[module].append(result)
            
            for cls in ["CODE", "DATA", "PADDING", "UNKNOWN"]:
                global_stats[cls] += result[cls]
        
        if (i + 1) % 50 == 0:
            print(f"  [{i+1}/{len(files)}] done")
    
    # Write per-module JSON
    for module, results in all_results.items():
        out_file = OUT_DIR / f"{module}.json"
        out_file.write_text(json.dumps(results, indent=2), encoding="utf-8")
    
    # Write summary
    total = sum(global_stats.values())
    summary = f"""# Pass 31: DB Line Classification Summary

Total db lines analyzed: {total}

| Category | Count | Percentage |
|----------|-------|------------|
| CODE | {global_stats['CODE']} | {global_stats['CODE']/total*100:.1f}% |
| DATA | {global_stats['DATA']} | {global_stats['DATA']/total*100:.1f}% |
| PADDING | {global_stats['PADDING']} | {global_stats['PADDING']/total*100:.1f}% |
| UNKNOWN | {global_stats['UNKNOWN']} | {global_stats['UNKNOWN']/total*100:.1f}% |

## Per-module breakdown

| Module | Total DB | CODE | DATA | PADDING | UNKNOWN |
|--------|----------|------|------|---------|---------|
"""
    
    for module in sorted(all_results.keys()):
        mod_results = all_results[module]
        mod_total = sum(r["total_db_lines"] for r in mod_results)
        mod_code = sum(r["CODE"] for r in mod_results)
        mod_data = sum(r["DATA"] for r in mod_results)
        mod_pad = sum(r["PADDING"] for r in mod_results)
        mod_unk = sum(r["UNKNOWN"] for r in mod_results)
        summary += f"| {module} | {mod_total} | {mod_code} | {mod_data} | {mod_pad} | {mod_unk} |\n"
    
    summary_file = OUT_DIR / "summary.md"
    summary_file.write_text(summary, encoding="utf-8")
    
    # Write global JSON
    global_json = {
        "total_db_lines": total,
        "categories": dict(global_stats),
        "modules": list(all_results.keys()),
    }
    (OUT_DIR / "global.json").write_text(json.dumps(global_json, indent=2), encoding="utf-8")
    
    print(f"\nDone! Analyzed {total} db lines across {len(all_results)} modules.")
    print(f"  CODE: {global_stats['CODE']} ({global_stats['CODE']/total*100:.1f}%)")
    print(f"  DATA: {global_stats['DATA']} ({global_stats['DATA']/total*100:.1f}%)")
    print(f"  PADDING: {global_stats['PADDING']} ({global_stats['PADDING']/total*100:.1f}%)")
    print(f"  UNKNOWN: {global_stats['UNKNOWN']} ({global_stats['UNKNOWN']/total*100:.1f}%)")


if __name__ == "__main__":
    main()
