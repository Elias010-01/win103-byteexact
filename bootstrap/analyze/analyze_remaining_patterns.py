"""Analyze remaining db lines to find the most common multi-byte patterns.

This helps identify which instruction patterns to focus manual conversion effort on.
"""

from __future__ import annotations

import re
from pathlib import Path
from collections import Counter
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"


def parse_db_lines(text: str) -> list[tuple[int, bytes, str]]:
    results = []
    for i, line in enumerate(text.splitlines()):
        s = line.strip()
        if not s.startswith("db "): continue
        comment = ""
        if ";" in s:
            db_part = s.split(";", 1)[0].strip()
            comment = s.split(";", 1)[1].strip()
        else:
            db_part = s
        hex_vals = bytearray()
        for v in db_part[3:].split(","):
            v = v.strip()
            if not v: continue
            vl = v.lower()
            if vl.endswith("h"):
                v = v[:-1]
                if v.startswith("0"): v = v[1:]
                try: hex_vals.append(int(v, 16))
                except: pass
            elif v.startswith("'") and v.endswith("'") and len(v) == 3:
                hex_vals.append(ord(v[1]))
        results.append((i, bytes(hex_vals), comment))
    return results


def disasm_sequence(data: bytes) -> list[tuple[int, int, str, str]]:
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = True
    results = []
    off = 0
    while off < len(data):
        chunk = data[off : off + 15]
        insns = list(md.disasm(chunk, off))
        if not insns:
            results.append((off, 1, "db", f"0{data[off]:02X}h"))
            off += 1
        else:
            insn = insns[0]
            results.append((off, len(insn.bytes), insn.mnemonic, insn.op_str))
            off += len(insn.bytes)
    return results


def simplify_ops(ops: str) -> str:
    """Simplify operand pattern for grouping."""
    s = ops.lower()
    # Replace registers
    s = re.sub(r'\b(ax|bx|cx|dx|si|di|bp|sp|al|bl|cl|dl|ah|bh|ch|dh)\b', 'REG', s)
    # Replace immediates
    s = re.sub(r'0x[0-9a-f]+', 'IMM', s)
    s = re.sub(r'[0-9a-f]+h', 'IMM', s)
    # Replace memory refs
    s = re.sub(r'\[.*?\]', '[MEM]', s)
    return s


def analyze_file(seg_path: Path) -> dict:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    if "Semantic" not in text:
        return {}
    
    db_lines = parse_db_lines(text)
    if not db_lines:
        return {}
    
    all_bytes = b"".join(b for _, b, _ in db_lines)
    if not all_bytes:
        return {}
    
    seq = disasm_sequence(all_bytes)
    
    line_map = {}
    offset = 0
    for line_idx, b, comment in db_lines:
        line_map[offset] = (line_idx, b, comment)
        offset += len(b)
    
    patterns = Counter()
    mnems = Counter()
    
    for seq_off, size, mnem, ops in seq:
        if size < 2:
            continue
        mnem_lower = mnem.lower()
        if mnem_lower in {'jmp', 'je', 'jne', 'jz', 'jnz', 'ja', 'jae', 'jb', 'jbe',
                          'jg', 'jge', 'jl', 'jle', 'jo', 'jno', 'js', 'jns',
                          'jcxz', 'loop', 'loope', 'loopne', 'call', 'lcall', 'ret'}:
            continue
        
        simple_ops = simplify_ops(ops)
        pattern = f"{mnem_lower} {simple_ops}"
        patterns[pattern] += 1
        mnems[mnem_lower] += 1
    
    return {
        "mnemonics": mnems,
        "patterns": patterns,
    }


def main():
    total_patterns = Counter()
    total_mnems = Counter()
    
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        if "Semantic data" not in text:
            continue
        
        result = analyze_file(f)
        if result:
            total_mnems.update(result["mnemonics"])
            total_patterns.update(result["patterns"])
    
    print("Top 20 multi-byte mnemonics remaining (excluding jumps/calls):")
    for m, c in total_mnems.most_common(20):
        print(f"  {m}: {c}")
    
    print("\nTop 30 patterns remaining:")
    for p, c in total_patterns.most_common(30):
        print(f"  {p}: {c}")


if __name__ == "__main__":
    main()
