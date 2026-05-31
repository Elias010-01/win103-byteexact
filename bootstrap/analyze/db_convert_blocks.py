"""BLOCK DB Converter - converts contiguous blocks of instructions with proper labels.

Strategy:
1. Extract full byte sequence from db lines
2. Disassemble with Capstone
3. Split into contiguous blocks (separated by non-db lines)
4. For each block, assign labels to each instruction based on its offset
5. For jumps/calls WITHIN the block, replace absolute addresses with labels
6. For jumps/calls OUTSIDE the block, keep as db
7. Assemble the entire block with NASM
8. If byte-exact match, convert the whole block
"""

from __future__ import annotations

import os
import re
import subprocess
import time
from pathlib import Path
import capstone

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')
TEMP = Path(r'C:\Users\Elias\temp_db_blocks')

JUMP_MNEMS = {'jmp', 'je', 'jne', 'jz', 'jnz', 'ja', 'jae', 'jb', 'jbe', 'jg', 'jge', 'jl', 'jle',
              'jo', 'jno', 'js', 'jns', 'jp', 'jnp', 'jcxz', 'jecxz', 'loop', 'loope', 'loopne',
              'loopz', 'loopnz', 'call'}


def parse_file(text: str) -> list[tuple[int, str]]:
    """Parse file into (line_idx, content) tuples."""
    return [(i, line) for i, line in enumerate(text.splitlines())]


def extract_db_blocks(lines: list[tuple[int, str]]) -> list[list[tuple[int, bytes, str]]]:
    """Extract contiguous blocks of db lines."""
    blocks = []
    current = []
    
    for line_idx, line in lines:
        s = line.strip()
        if s.startswith("db "):
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
            
            current.append((line_idx, bytes(hex_vals), comment))
        else:
            if current:
                blocks.append(current)
                current = []
    
    if current:
        blocks.append(current)
    
    return blocks


def disasm_block(data: bytes) -> list[tuple[int, int, str, str]]:
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


def is_external_jump(mnem: str, ops: str, block_start: int, block_end: int) -> bool:
    """Check if a jump/call references an address outside the block."""
    if mnem.lower() not in JUMP_MNEMS:
        return False
    # Extract target address from ops
    for match in re.finditer(r'0x([0-9a-fA-F]+)', ops):
        addr = int(match.group(1), 16)
        if not (block_start <= addr < block_end):
            return True
    return False


def build_block_nasm(block_insns: list[tuple[int, int, str, str]], block_data: bytes) -> str:
    """Build NASM source for a block with labels."""
    block_end = len(block_data)
    
    lines = ["BITS 16", ""]
    
    for off, size, mnem, ops in block_insns:
        label = f"L_{off:04X}"
        lines.append(f"{label}:")
        
        if mnem == "db":
            hex_v = ", ".join(f"0{b:02X}h" for b in block_data[off:off+size])
            lines.append(f"    db {hex_v}")
        else:
            clean = clean_mnemonic(mnem, ops)
            # Replace absolute addresses within block with labels
            for match in re.finditer(r'0x([0-9a-fA-F]+)', clean):
                addr = int(match.group(1), 16)
                if 0 <= addr < block_end:
                    clean = clean.replace(match.group(0), f"L_{addr:04X}")
            lines.append(f"    {clean}")
    
    return "\n".join(lines)


def nasm_assemble(asm_text: str) -> tuple[bool, bytes]:
    import shutil
    work = TEMP / f"b_{os.getpid()}_{time.time_ns()}"
    work.mkdir(parents=True, exist_ok=True)
    asm_f = work / "test.asm"
    bin_f = work / "test.bin"
    asm_f.write_text(asm_text, encoding="ascii")
    try:
        r = subprocess.run([str(NASM), "-f", "bin", str(asm_f), "-o", str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0 or not bin_f.exists():
            return False, b""
        return True, bin_f.read_bytes()
    except:
        return False, b""
    finally:
        try:
            shutil.rmtree(work)
        except:
            pass


def process_file(seg_path: Path) -> int:
    text = seg_path.read_text(encoding="ascii", errors="replace")
    if "Semantic" not in text:
        return 0
    
    lines = parse_file(text)
    blocks = extract_db_blocks(lines)
    if not blocks:
        return 0
    
    total_converted = 0
    
    for block in blocks:
        if len(block) < 2:  # Skip single-instruction blocks
            continue
        
        block_data = b"".join(b for _, b, _ in block)
        block_insns = disasm_block(block_data)
        
        # Check for external jumps
        has_external = False
        for off, size, mnem, ops in block_insns:
            if is_external_jump(mnem, ops, 0, len(block_data)):
                has_external = True
                break
        
        if has_external:
            continue
        
        # Build NASM source
        nasm_text = build_block_nasm(block_insns, block_data)
        
        # Assemble
        ok, built = nasm_assemble(nasm_text)
        if not ok:
            continue
        
        if built == block_data:
            # Match! Convert all lines in block
            offset = 0
            for line_idx, b, comment in block:
                # Find the instruction at this offset
                for off, size, mnem, ops in block_insns:
                    if off == offset:
                        if mnem != "db":
                            clean = clean_mnemonic(mnem, ops)
                            hex_str = " ".join(f"{byte:02X}" for byte in b)
                            lines[line_idx] = (line_idx, f"    {clean:40s} ; {hex_str}")
                            total_converted += 1
                        break
                offset += len(b)
    
    if total_converted > 0:
        # Rebuild file
        new_lines = [line for _, line in lines]
        if len(new_lines) > 1 and "Semantic data" in new_lines[1]:
            new_lines[1] = "; Semantic reconstruction - verified byte-exact"
        seg_path.write_text("\n".join(new_lines), encoding="ascii")
    
    return total_converted


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
    
    print(f"\nDONE: Converted {total} block lines")
    print(f"Time: {time.time()-start:.0f}s")
    return 0


if __name__ == "__main__":
    import sys
    sys.exit(main())
