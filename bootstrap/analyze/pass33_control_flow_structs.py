"""Pass 33: Control flow analysis and structure mapping.

Analyzes all .asm files for:
  FASE 5: Control flow patterns (loops, if/else, switch)
  FASE 6: Memory offset patterns → potential C struct fields

Output:
  state/analyze/pass33/<MODULE>.json per-module analysis
  state/analyze/pass33_summary.md human-readable report
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from collections import Counter, defaultdict

REPO = Path(__file__).resolve().parents[2]
SRC = REPO / "src"
OUT_DIR = REPO / "state" / "analyze" / "pass33"
OUT_DIR.mkdir(parents=True, exist_ok=True)


def extract_bytes_from_comment(line: str) -> list[int]:
    if ";" not in line:
        return []
    comment = line.split(";", 1)[1].strip()
    hex_pattern = re.compile(r"[0-9A-Fa-f]{2}")
    matches = hex_pattern.findall(comment)
    return [int(m, 16) for m in matches]


def analyze_control_flow(lines: list[str]) -> dict:
    """Detect control flow patterns in a segment."""
    patterns = {
        "simple_loops": [],
        "nested_loops": 0,
        "if_else_chains": [],
        "switch_jumptables": [],
        "tail_calls": [],
        "unconditional_jumps": 0,
        "conditional_jumps": 0,
    }
    
    labels = {}
    jumps = []
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s or s.startswith(";"):
            continue
        
        # Find labels
        m = re.match(r"^(L_[0-9a-fA-F]+):", s)
        if m:
            labels[m.group(1)] = i
        
        # Find jumps (both mnemonic and db-encoded)
        bytes_in_comment = extract_bytes_from_comment(line)
        
        # Unconditional jumps: JMP, JMP SHORT, JMP NEAR
        if re.search(r"\bjmp\b", s, re.I):
            m = re.search(r"jmp\s+(L_[0-9a-fA-F]+)", s, re.I)
            if m:
                jumps.append({"type": "jmp", "from": i, "to_label": m.group(1)})
            patterns["unconditional_jumps"] += 1
        
        # Conditional jumps: JE, JNE, JG, JL, etc.
        cond_jmp_match = re.search(r"\b(je|jne|jz|jnz|jg|jge|jl|jle|ja|jae|jb|jbe|jo|jno|js|jns|jp|jnp|jcxz|jecxz)\s+(L_[0-9a-fA-F]+)", s, re.I)
        if cond_jmp_match:
            jumps.append({"type": "cond", "from": i, "to_label": cond_jmp_match.group(2), "instr": cond_jmp_match.group(1).lower()})
            patterns["conditional_jumps"] += 1
        
        # Also detect in db lines
        if s.startswith("db ") and len(bytes_in_comment) >= 2:
            opcode = bytes_in_comment[0]
            # EB xx = jmp short
            if opcode == 0xEB and len(bytes_in_comment) >= 2:
                offset = bytes_in_comment[1]
                if offset > 127:
                    offset -= 256
                target_line = i + 2 + offset  # approximate
                if target_line < len(lines):
                    patterns["unconditional_jumps"] += 1
            # E9 xx xx = jmp near
            elif opcode == 0xE9 and len(bytes_in_comment) >= 3:
                offset = bytes_in_comment[1] | (bytes_in_comment[2] << 8)
                if offset > 0x7FFF:
                    offset -= 0x10000
                patterns["unconditional_jumps"] += 1
            # 74 xx = je short, 75 xx = jne short, etc.
            elif opcode in (0x74, 0x75, 0x7C, 0x7D, 0x7E, 0x7F, 0x72, 0x73, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x70, 0x71, 0x7E, 0x7F) and len(bytes_in_comment) >= 2:
                offset = bytes_in_comment[1]
                if offset > 127:
                    offset -= 256
                patterns["conditional_jumps"] += 1
            # E3 xx = jcxz/jecxz
            elif opcode == 0xE3 and len(bytes_in_comment) >= 2:
                patterns["conditional_jumps"] += 1
    
    # Resolve jump targets and detect patterns
    for jmp in jumps:
        if jmp.get("to_label") and jmp["to_label"] in labels:
            jmp["to_line"] = labels[jmp["to_label"]]
            distance = jmp["to_line"] - jmp["from"]
            jmp["distance"] = distance
            
            # Loop detection: backward jump (target < source)
            if distance < 0:
                # Check if it's a simple loop or nested
                patterns["simple_loops"].append({
                    "line": jmp["from"] + 1,
                    "type": jmp["type"],
                    "loop_back_lines": -distance,
                })
    
    # Count nested loops (loops within loops)
    loop_ranges = [(jmp["from"], jmp.get("to_line", jmp["from"])) for jmp in jumps if jmp.get("distance", 0) < 0]
    for i, (start1, end1) in enumerate(loop_ranges):
        for j, (start2, end2) in enumerate(loop_ranges):
            if i != j and end1 <= end2 <= start1:
                patterns["nested_loops"] += 1
    
    # If/else detection: conditional jump followed by unconditional jump
    for i, jmp in enumerate(jumps):
        if jmp["type"] == "cond" and i + 1 < len(jumps):
            next_jmp = jumps[i + 1]
            if next_jmp["type"] == "jmp" and next_jmp.get("from", 0) > jmp.get("from", 0):
                # Check distance - if cond jump skips over a block and then unconditional jump skips further
                if jmp.get("distance", 0) > 0 and next_jmp.get("distance", 0) > 0:
                    patterns["if_else_chains"].append({
                        "cond_jump_line": jmp["from"] + 1,
                        "else_jump_line": next_jmp["from"] + 1,
                    })
    
    # Switch/jumptable detection: jmp [bx + ...] or jmp near ptr pattern
    for i, line in enumerate(lines):
        s = line.strip()
        if re.search(r"jmp\s+.*\[.*\]", s, re.I) or re.search(r"jump\s+table", s, re.I):
            patterns["switch_jumptables"].append({
                "line": i + 1,
                "pattern": "indirect jump",
            })
    
    return patterns


def analyze_struct_access(lines: list[str]) -> dict:
    """Detect memory offset patterns that suggest C struct fields."""
    patterns = {
        "bp_relative": [],
        "bx_si_relative": [],
        "di_relative": [],
        "direct_offsets": [],
        "string_ops": [],
        "array_accesses": [],
    }
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s or s.startswith(";"):
            continue
        
        # BP-relative: [bp + N] or [bp - N] → stack variables
        for m in re.finditer(r"\[\s*(bp|ebp)\s*([+-])\s*(0x[0-9a-fA-F]+|[0-9a-fA-F]+h?|[0-9]+)\s*\]", s, re.I):
            offset_str = m.group(3)
            try:
                if offset_str.startswith("0x"):
                    offset = int(offset_str, 16)
                elif offset_str.lower().endswith("h"):
                    offset = int(offset_str[:-1], 16)
                else:
                    offset = int(offset_str)
            except ValueError:
                offset = 0
            
            sign = m.group(2)
            patterns["bp_relative"].append({
                "line": i + 1,
                "offset": f"{sign}{offset}",
                "raw": s,
            })
        
        # [bx + si + N] / [bx + di + N] → likely struct/array access
        for m in re.finditer(r"\[\s*(bx|si|di)\s*([+-])\s*(0x[0-9a-fA-F]+|[0-9a-fA-F]+h?|[0-9]+)\s*\]", s, re.I):
            offset_str = m.group(3)
            try:
                if offset_str.startswith("0x"):
                    offset = int(offset_str, 16)
                elif offset_str.lower().endswith("h"):
                    offset = int(offset_str[:-1], 16)
                else:
                    offset = int(offset_str)
            except ValueError:
                offset = 0
            
            patterns["bx_si_relative"].append({
                "line": i + 1,
                "offset": offset,
                "raw": s,
            })
        
        # [di + N] / [si + N] → pointer + offset
        for m in re.finditer(r"\[\s*(si|di)\s*([+-])\s*(0x[0-9a-fA-F]+|[0-9a-fA-F]+h?|[0-9]+)\s*\]", s, re.I):
            offset_str = m.group(3)
            try:
                if offset_str.startswith("0x"):
                    offset = int(offset_str, 16)
                elif offset_str.lower().endswith("h"):
                    offset = int(offset_str[:-1], 16)
                else:
                    offset = int(offset_str)
            except ValueError:
                offset = 0
            
            patterns["di_relative"].append({
                "line": i + 1,
                "offset": offset,
                "raw": s,
            })
        
        # Direct offsets: [0xXXXX] → global/static data
        for m in re.finditer(r"\[\s*(0x[0-9a-fA-F]{4})\s*\]", s, re.I):
            addr = int(m.group(1), 16)
            patterns["direct_offsets"].append({
                "line": i + 1,
                "address": f"0x{addr:04X}",
                "raw": s,
            })
        
        # String operations (rep movsb, rep stosb, etc.)
        if re.search(r"\b(rep|repz|repnz)\s+(movsb|movsw|stosb|stosw|lodsb|lodsw|cmpsb|cmpsw|scasb|scasw)\b", s, re.I):
            patterns["string_ops"].append({
                "line": i + 1,
                "raw": s,
            })
        
        # Array-like access with multiplication
        if re.search(r"\b(shl|sal)\s+.*,\s*[12]", s, re.I):
            patterns["array_accesses"].append({
                "line": i + 1,
                "note": "Possible array indexing (multiply by 2/4)",
                "raw": s,
            })
    
    return patterns


def process_file(seg_path: Path) -> dict:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    return {
        "file": str(seg_path.relative_to(REPO)),
        "control_flow": analyze_control_flow(lines),
        "struct_access": analyze_struct_access(lines),
    }


def main():
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        files.append(f)
    
    print(f"Processing {len(files)} files...")
    
    all_results = {}
    global_cf = Counter()
    global_struct = Counter()
    
    for i, f in enumerate(files):
        result = process_file(f)
        module = f.parent.name
        if module not in all_results:
            all_results[module] = []
        all_results[module].append(result)
        
        # Aggregate
        cf = result["control_flow"]
        global_cf["loops"] += len(cf["simple_loops"])
        global_cf["nested_loops"] += cf["nested_loops"]
        global_cf["if_else"] += len(cf["if_else_chains"])
        global_cf["switch"] += len(cf["switch_jumptables"])
        global_cf["uncond_jmp"] += cf["unconditional_jumps"]
        global_cf["cond_jmp"] += cf["conditional_jumps"]
        
        sa = result["struct_access"]
        global_struct["bp_relative"] += len(sa["bp_relative"])
        global_struct["bx_si_relative"] += len(sa["bx_si_relative"])
        global_struct["di_relative"] += len(sa["di_relative"])
        global_struct["direct_offsets"] += len(sa["direct_offsets"])
        global_struct["string_ops"] += len(sa["string_ops"])
        global_struct["array_accesses"] += len(sa["array_accesses"])
        
        if (i + 1) % 50 == 0:
            print(f"  [{i+1}/{len(files)}] done")
    
    # Write per-module JSON
    for module, results in all_results.items():
        out_file = OUT_DIR / f"{module}.json"
        out_file.write_text(json.dumps(results, indent=2), encoding="utf-8")
    
    # Summary
    summary = f"""# Pass 33: Control Flow and Structure Mapping Summary

## Control Flow Patterns (FASE 5)

| Pattern | Count |
|---------|-------|
| Simple loops | {global_cf['loops']} |
| Nested loops | {global_cf['nested_loops']} |
| If/else chains | {global_cf['if_else']} |
| Switch/jumptables | {global_cf['switch']} |
| Unconditional jumps | {global_cf['uncond_jmp']} |
| Conditional jumps | {global_cf['cond_jmp']} |

## Memory Access Patterns (FASE 6)

| Pattern | Count | C Equivalent |
|---------|-------|-------------|
| BP-relative [bp ± N] | {global_struct['bp_relative']} | Stack variables / parameters |
| BX/SI-relative [bx + si + N] | {global_struct['bx_si_relative']} | Struct fields / array indexing |
| DI-relative [di + N] | {global_struct['di_relative']} | Pointer offset |
| Direct offsets [0xXXXX] | {global_struct['direct_offsets']} | Global/static variables |
| String operations | {global_struct['string_ops']} | memcpy, memset, strcmp |
| Array indexing (shl x2/x4) | {global_struct['array_accesses']} | Array[i] or struct->field[i] |

## Per-module breakdown

| Module | Loops | If/Else | Switch | BP-rel | BX-rel | DI-rel |
|--------|-------|---------|--------|--------|--------|--------|
"""
    
    for module in sorted(all_results.keys()):
        mod_results = all_results[module]
        loops = sum(len(r["control_flow"]["simple_loops"]) for r in mod_results)
        if_else = sum(len(r["control_flow"]["if_else_chains"]) for r in mod_results)
        switch = sum(len(r["control_flow"]["switch_jumptables"]) for r in mod_results)
        bp = sum(len(r["struct_access"]["bp_relative"]) for r in mod_results)
        bx = sum(len(r["struct_access"]["bx_si_relative"]) for r in mod_results)
        di = sum(len(r["struct_access"]["di_relative"]) for r in mod_results)
        summary += f"| {module} | {loops} | {if_else} | {switch} | {bp} | {bx} | {di} |\n"
    
    summary_file = OUT_DIR / "summary.md"
    summary_file.write_text(summary, encoding="utf-8")
    
    global_json = {
        "control_flow": dict(global_cf),
        "struct_access": dict(global_struct),
        "modules": list(all_results.keys()),
    }
    (OUT_DIR / "global.json").write_text(json.dumps(global_json, indent=2), encoding="utf-8")
    
    print(f"\nDone! Analyzed {len(files)} files across {len(all_results)} modules.")
    print(f"  Loops: {global_cf['loops']}, Nested: {global_cf['nested_loops']}")
    print(f"  If/else: {global_cf['if_else']}, Switch: {global_cf['switch']}")
    print(f"  BP-rel: {global_struct['bp_relative']}, BX-rel: {global_struct['bx_si_relative']}")


if __name__ == "__main__":
    main()
