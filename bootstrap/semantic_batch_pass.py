#!/usr/bin/env python3
"""
BATCHED SECOND PASS for large files.
Tests multiple instructions in a single NASM call to reduce overhead.
"""
import sys, os, re, subprocess, tempfile
from pathlib import Path

SRC = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent\src')
NASM = Path(r'C:\Users\Elias\nasm\nasm-2.16.03\nasm.exe')

def nasm_test_batch(lines: list, expected_bytes_list: list) -> list:
    """Test multiple instructions in one NASM call.
    Returns list of (index, success) for each instruction.
    """
    work = Path(tempfile.gettempdir()) / f'nasm_batch_{os.getpid()}'
    work.mkdir(exist_ok=True)
    asm_f = work / 't.asm'
    bin_f = work / 't.bin'
    
    asm_text = 'BITS 16\norg 0\n'
    for i, line in enumerate(lines):
        asm_text += f'{line}\n'
    
    asm_f.write_text(asm_text, encoding='ascii')
    try:
        r = subprocess.run([str(NASM), '-f', 'bin', str(asm_f), '-o', str(bin_f)],
                         capture_output=True, text=True, timeout=30)
        if r.returncode != 0 or not bin_f.exists():
            return [(i, False) for i in range(len(lines))]
        
        built = bin_f.read_bytes()
        results = []
        offset = 0
        for i, expected in enumerate(expected_bytes_list):
            if offset + len(expected) <= len(built):
                if built[offset:offset+len(expected)] == expected:
                    results.append((i, True))
                else:
                    results.append((i, False))
            else:
                results.append((i, False))
            offset += len(expected)
        return results
    except:
        return [(i, False) for i in range(len(lines))]

def convert_file(seg_path: Path) -> tuple:
    text = seg_path.read_text(encoding='ascii', errors='replace')
    
    if 'Semantic data - verified byte-exact' not in text and 'Semantic reconstruction - verified byte-exact' not in text:
        return True, "not semantic", 0, 0
    
    lines = text.splitlines()
    out_lines = lines[:3]  # Keep header
    
    db_lines = []
    db_indices = []
    db_bytes = []
    
    for idx, line in enumerate(lines[3:]):
        line = line.rstrip()
        if not line.strip().startswith('db '):
            out_lines.append(line)
            continue
        
        if ';' not in line:
            out_lines.append(line)
            continue
        
        parts = line.split(';', 1)
        db_part = parts[0].strip()
        comment = parts[1].strip()
        
        hex_vals = []
        for v in db_part[3:].split(','):
            v = v.strip()
            if not v:
                continue
            if v.lower().endswith('h'):
                v = v[:-1]
                if v.startswith('0'):
                    v = v[1:]
                hex_vals.append(int(v, 16))
        
        if not hex_vals:
            out_lines.append(line)
            continue
        
        expected = bytes(hex_vals)
        hex_c = ' '.join(f'{b:02X}' for b in expected)
        db_lines.append((line, comment, hex_c, expected))
        db_indices.append(len(out_lines))
        db_bytes.append(expected)
        out_lines.append(line)  # Placeholder
    
    # Process in batches of 100
    BATCH_SIZE = 100
    converted = 0
    kept = 0
    
    for batch_start in range(0, len(db_lines), BATCH_SIZE):
        batch_end = min(batch_start + BATCH_SIZE, len(db_lines))
        batch_comments = [db_lines[i][1] for i in range(batch_start, batch_end)]
        batch_bytes = [db_lines[i][3] for i in range(batch_start, batch_end)]
        
        results = nasm_test_batch(batch_comments, batch_bytes)
        
        for i, success in results:
            actual_idx = batch_start + i
            line, comment, hex_c, expected = db_lines[actual_idx]
            
            if success:
                out_lines[db_indices[actual_idx]] = f'    {comment:40s} ; {hex_c}'
                converted += 1
            else:
                kept += 1
    
    # Write back
    seg_path.write_text('\n'.join(out_lines), encoding='ascii')
    return True, f"converted={converted} kept={kept}", converted, kept

def main():
    if not NASM.exists():
        print("ERROR: NASM not found")
        return 1
    
    # Find unprocessed semantic data files
    files = []
    for f in SRC.rglob('seg*.asm'):
        if '.bak' in f.name or '_real' in f.name:
            continue
        text = f.read_text(encoding='ascii', errors='replace')
        if 'Semantic data - verified byte-exact' in text:
            files.append(f)
    
    print(f"Processing {len(files)} semantic db files...")
    
    total_converted = 0
    total_kept = 0
    
    for i, f in enumerate(files):
        ok, msg, conv, kept = convert_file(f)
        total_converted += conv
        total_kept += kept
        print(f"[{i+1}/{len(files)}] {f.parent.name:20s}/{f.name:12s} | {msg}")
    
    total = total_converted + total_kept
    print(f"\nDONE: {len(files)} files")
    if total > 0:
        print(f"  Converted: {total_converted} ({total_converted/total*100:.1f}%)")
        print(f"  Kept db:   {total_kept} ({total_kept/total*100:.1f}%)")
    
    return 0

if __name__ == '__main__':
    sys.exit(main())
