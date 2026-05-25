"""Pass 25: Universal function extractor straight from the original binaries.

Where pass23 worked from `src/<MOD>/seg*.asm` (pass1's reconstructed sources)
and only emitted candidates that looked like `PROC FAR ... ENDP` blocks
ending in `retf`, pass25 goes directly to `original/<MOD>.EXE`/.DRV and
extracts:

  - EVERY entry in the NE entry table (i.e. every exported ordinal),
    cross-referenced against the .def file in `src/<MOD>/<MOD>.def` to
    get a human-readable name.
  - For each export, walks the segment bytes forward with Capstone until
    the first `retf` / `retf imm16` and emits those bytes as the
    candidate's true byte sequence.

Output: state/analyze/pass25/<MOD>.json, schema mirror of pass23's so
pass24 can consume both directories transparently.

Pass25 will typically produce ~5000 candidates across the 68 .def files
in the project, vs ~280 from pass23. The new ones are mostly:
  - Application exports (CALC, WRITE, NOTEPAD, PAINT, ...)
  - Regional driver exports (DENMARK, FRANCE, GERMANY, ...)
  - Printer driver exports (EPSON, HPLASER, PSCRIPT, ...)
  - Many KERNEL / USER / GDI exports that pass1 didn't materialise as
    PROC FAR blocks.
"""
import json
import re
import struct
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
SRC = REPO / 'src'
ORIG = REPO / 'original'
OUT = REPO / 'state' / 'analyze' / 'pass25'


def parse_def_exports(def_path):
    """Return ord -> name from a .DEF EXPORTS section."""
    if not def_path.exists():
        return {}
    out = {}
    in_exports = False
    for line in def_path.read_text(encoding='utf-8', errors='ignore').splitlines():
        s = line.strip()
        if not s or s.startswith(';'):
            continue
        if s.upper().startswith('EXPORTS'):
            in_exports = True
            continue
        if not in_exports:
            continue
        m = re.match(r'^\s*(\S+)\s+@(\d+)', s)
        if m:
            out[int(m.group(2))] = m.group(1).upper()
    return out


def parse_ne_entry_table(exe_path):
    """Return ord -> (segment_index, offset) for every export."""
    b = exe_path.read_bytes()
    if b[:2] != b'MZ':
        return {}
    ne = struct.unpack_from('<H', b, 0x3c)[0]
    if b[ne:ne + 2] != b'NE':
        return {}
    et_off = ne + struct.unpack_from('<H', b, ne + 0x04)[0]
    et_len = struct.unpack_from('<H', b, ne + 0x06)[0]
    out = {}
    p = et_off
    end = et_off + et_len
    ord_idx = 1
    while p < end:
        bcount = b[p]
        if bcount == 0:
            break
        seg_indicator = b[p + 1]
        p += 2
        if seg_indicator == 0:
            ord_idx += bcount
            continue
        for _ in range(bcount):
            if seg_indicator == 0xff:
                # MOVABLE: flags, INT 0x3F, segno, offset
                flag = b[p]
                seg = b[p + 3]
                off = struct.unpack_from('<H', b, p + 4)[0]
                p += 6
            else:
                # FIXED: flags, offset
                flag = b[p]
                off = struct.unpack_from('<H', b, p + 1)[0]
                seg = seg_indicator
                p += 3
            out[ord_idx] = (seg, off)
            ord_idx += 1
    return out


def parse_ne_segment(exe_path, seg_idx):
    """Return raw bytes of NE segment `seg_idx` (1-based)."""
    b = exe_path.read_bytes()
    ne = struct.unpack_from('<H', b, 0x3c)[0]
    seg_table_off = ne + struct.unpack_from('<H', b, ne + 0x22)[0]
    shift = struct.unpack_from('<H', b, ne + 0x32)[0]
    entry_off = seg_table_off + (seg_idx - 1) * 8
    sector = struct.unpack_from('<H', b, entry_off + 0)[0]
    size = struct.unpack_from('<H', b, entry_off + 2)[0]
    file_off = sector << shift
    return b[file_off:file_off + size]


def extract_until_retf(seg_bytes, start_offset):
    """Disassemble from start_offset until first retf / retf imm16.
    Returns the bytes of the function (including the retf instruction).
    Falls back to an empty bytestring on disasm failure."""
    try:
        import capstone
    except ImportError:
        return b''
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
    md.detail = False
    consumed = 0
    for ins in md.disasm(seg_bytes[start_offset:], start_offset):
        consumed = (ins.address - start_offset) + ins.size
        if ins.mnemonic in ('retf', 'iret', 'iretw', 'iretd'):
            break
        if consumed > 4096:
            break  # safety
    return seg_bytes[start_offset:start_offset + consumed]


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    summary = []

    # Find all candidates: for each module we have a .def file for, find its
    # original binary and dump every export to a candidate.
    for def_path in sorted(SRC.glob('*/*.def')):
        mod = def_path.parent.name
        exe = ORIG / f'{mod}.EXE'
        if not exe.exists():
            exe = ORIG / f'{mod}.DRV'
        if not exe.exists():
            continue
        ord_to_name = parse_def_exports(def_path)
        ord_to_loc = parse_ne_entry_table(exe)

        # Cache segment bytes once per segment so we don't re-read
        # the binary 100 times for the same segment.
        seg_cache = {}

        candidates = []
        for ord_num, name in sorted(ord_to_name.items()):
            if ord_num not in ord_to_loc:
                continue
            seg_idx, off = ord_to_loc[ord_num]
            if seg_idx not in seg_cache:
                seg_cache[seg_idx] = parse_ne_segment(exe, seg_idx)
            seg_bytes = seg_cache[seg_idx]
            if off >= len(seg_bytes):
                continue
            true_bytes = extract_until_retf(seg_bytes, off)
            if not true_bytes:
                continue
            candidates.append({
                'name': name.upper(),
                'ordinal': ord_num,
                'segment_index': seg_idx,
                'segment_offset': off,
                'true_bytes_hex': true_bytes.hex().upper(),
                'body_bytes_hex': true_bytes.hex().upper(),
                'seg_bytes_hex': true_bytes.hex().upper(),
                'matches_seg': True,   # by construction
                'instruction_count': 0,  # filled in by pass24 when needed
                'asm_lines': [],         # pass24 regenerates from true_bytes
                'source': 'pass25',
            })

        out_path = OUT / f'{mod}.json'
        out_path.write_text(json.dumps({
            'module': mod,
            'candidate_count': len(candidates),
            'candidates': candidates,
        }, indent=2), encoding='utf-8')
        summary.append((mod, len(candidates)))

    print(f'{"Module":<14}{"Candidates":>14}')
    print('-' * 30)
    total = 0
    for mod, n in summary:
        if n > 0:
            print(f'{mod:<14}{n:>14}')
            total += n
    print('-' * 30)
    print(f'{"TOTAL":<14}{total:>14}')


if __name__ == '__main__':
    main()
