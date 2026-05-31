"""SMART DB Converter - converts specific instruction patterns known to work with NASM.

Focuses on instruction patterns that are highly likely to assemble byte-exact:
- mov reg, reg
- mov reg, imm
- mov reg, [mem]  (simple forms)
- add/sub/cmp/xor/and/or reg, reg
- add/sub/cmp/xor/and/or reg, imm
- lea reg, [mem]

Uses Capstone sequence disassembly + individual NASM verification.
"""

from __future__ import annotations

import os
import re
import subprocess
import time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_smart')

# Mnemonics that might work with simple operand patterns
SIMPLE_MULTI = {'mov', 'add', 'sub', 'cmp', 'xor', 'and', 'or', 'test', 'lea'}


def parse_db_lines(text: str) -> list[tuple[int, bytes, str]]:
    results = []
    for i, line in enumerate(text.splitlines()):
        s = line.strip()
        if not s.startswith("db "): continue
        comment = ""
        if ";" in s:
            parts = s.split(";", 1)
            db_part = parts[0].strip()
            comment = parts[1].strip()
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


def clean_mnemonic(mnemonic: str, ops: str) -> str:
    line = f"{mnemonic} {ops}".strip()
    line = re.sub(r"\bptr\b", "", line, flags=re.I)
    line = re.sub(r"\b(near|short)\s+", "", line, flags=re.I)
    line = re.sub(r"\s+", " ", line).strip()
    return line


def has_simple_operands(comment: str) -> bool:
    """Check if operands look simple (reg-reg, reg-imm, reg-mem simple)."""
    c = comment.lower()
    # Reg-reg: mov ax, bx
    if re.search(r"\b(ax|bx|cx|dx|si|di|bp|sp)\b.*\b(ax|bx|cx|dx|si|di|bp|sp)\b", c):
        return True
    # Reg-imm: mov ax, 0x1234
    if re.search(r"\b(ax|bx|cx|dx|si|di|bp|sp)\b.*0x[0-9a-f]+", c):
        return True
    # Simple mem: mov ax, [bx+si], lea ax, [bp+di]
    if "[" in c and "]" in c and "+" not in c and "-" not in c:
        return True
    if re.search(r"\[\s*(bx|si|di|bp)\s*\]", c):
        return True
    if re.search(r"\[\s*(bx|si|di|bp)\s*\+\s*0x[0-9a-f]+\s*\]", c):
        return True
    return False


def generate_smart_variants(comment: str) -> list[str]:
    variants = [comment]
    
    # Remove ptr
    v = re.sub(r"\bptr\b", "", comment, flags=re.I)
    variants.append(v)
    
    # Fix spacing
    v = re.sub(r"\s*\+\s*", "+", comment)
    v = re.sub(r"\s*-\s*", "-", v)
    v = re.sub(r"\bptr\b", "", v, flags=re.I)
    v = re.sub(r"\s+", " ", v).strip()
    variants.append(v)
    
    # Remove size keywords
    v = re.sub(r"\b(byte|word|dword)\s+ptr\s+", "", comment, flags=re.I)
    v = re.sub(r"\s*\+\s*", "+", v)
    v = re.sub(r"\s*-\s*", "-", v)
    v = re.sub(r"\s+", " ", v).strip()
    variants.append(v)
    
    # Try with explicit size for memory references
    v = re.sub(r"\b(byte|word|dword)\b", "", comment, flags=re.I)
    v = re.sub(r"\bptr\b", "", v, flags=re.I)
    v = re.sub(r"\s*\+\s*", "+", v)
    v = re.sub(r"\s*-\s*", "-", v)
    v = re.sub(r"\s+", " ", v).strip()
    variants.append(v)
    
    return list(set(v for v in variants if v.strip()))


def test_variants(expected_bytes: bytes, comment: str, work_dir: Path) -> str | None:
    import shutil
    variants = generate_smart_variants(comment)
    for v in variants:
        work = work_dir / f"t_{hash(v) & 0xFFFFFFFF}"
        work.mkdir(parents=True, exist_ok=True)
        try:
            asm_path = work / "test.asm"
            bin_path = work / "test.bin"
            asm_path.write_text(f"BITS 16\n    {v}\n", encoding="ascii")
            r = subprocess.run(
                [str(NASM), "-f", "bin", str(asm_path), "-o", str(bin_path)],
                capture_output=True, text=True, timeout=5
            )
            if r.returncode == 0 and bin_path.exists():
                if bin_path.read_bytes() == expected_bytes:
                    return v
        except:
            pass
        finally:
            try:
                shutil.rmtree(work)
            except:
                pass
    return None


def process_file(seg_path: Path) -> int:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    if "Semantic" not in text:
        return 0
    
    db_lines = parse_db_lines(text)
    if not db_lines:
        return 0
    
    all_bytes = b"".join(b for _, b, _ in db_lines)
    if not all_bytes:
        return 0
    
    seq = disasm_sequence(all_bytes)
    
    line_map = {}
    offset = 0
    for line_idx, b, comment in db_lines:
        line_map[offset] = (line_idx, b, comment)
        offset += len(b)
    
    targets = []
    for seq_off, size, mnem, ops in seq:
        if size < 2:
            continue
        mnem_lower = mnem.lower()
        if mnem_lower not in SIMPLE_MULTI:
            continue
        line_idx, expected_bytes, orig_comment = line_map.get(seq_off, (None, None, None))
        if line_idx is None:
            continue
        clean = clean_mnemonic(mnem, ops)
        if not has_simple_operands(clean):
            continue
        targets.append((line_idx, expected_bytes, clean))
    
    if not targets:
        return 0
    
    work_dir = TEMP / f"w_{os.getpid()}"
    work_dir.mkdir(parents=True, exist_ok=True)
    
    replacements = {}
    converted = 0
    
    batch_size = 50
    for batch_start in range(0, len(targets), batch_size):
        batch = targets[batch_start:batch_start + batch_size]
        with ThreadPoolExecutor(max_workers=4) as executor:
            futures = {
                executor.submit(test_variants, expected, comment, work_dir): (line_idx, expected, comment)
                for line_idx, expected, comment in batch
            }
            for future in as_completed(futures):
                line_idx, expected, comment = futures[future]
                try:
                    matched = future.result()
                    if matched:
                        replacements[line_idx] = (matched, expected)
                        converted += 1
                except:
                    pass
    
    if replacements:
        lines = text.splitlines()
        for line_idx, (variant, expected_bytes) in replacements.items():
            hex_str = " ".join(f"{b:02X}" for b in expected_bytes)
            lines[line_idx] = f"    {variant:40s} ; {hex_str}"
        if len(lines) > 1 and "Semantic data" in lines[1]:
            lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(lines), encoding="ascii")
    
    return converted


def main():
    import shutil
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    if TEMP.exists():
        try: shutil.rmtree(TEMP)
        except: pass
    TEMP.mkdir(parents=True, exist_ok=True)
    
    files_with_counts = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        db_count = sum(1 for l in text.splitlines() if l.strip().startswith("db "))
        if db_count > 0 and "Semantic data" in text:
            files_with_counts.append((f, db_count))
    
    files_with_counts.sort(key=lambda x: x[1], reverse=True)
    files = [f for f, _ in files_with_counts]
    
    print(f"Found {len(files)} Semantic data files")
    total = 0
    start = time.time()
    
    for i, f in enumerate(files):
        c = process_file(f)
        total += c
        if c > 0:
            print(f"[{i+1}/{len(files)}] {f.parent.name}/{f.name}: +{c}")
        if (i + 1) % 10 == 0:
            print(f"  Progress: {i+1}/{len(files)} | Converted: {total} | {time.time()-start:.0f}s")
    
    print(f"\nDONE: Converted {total} smart lines")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
