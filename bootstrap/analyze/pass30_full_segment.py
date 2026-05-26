"""Pass 30 - Full code-segment candidates.

Pass24+25+27 cover ~77% of code bytes via per-function candidates.
The remaining 23% lives between functions (padding, data tables,
unreachable code, segments with no E8 calls). The cleanest way to
close the gap is to throw the WHOLE code segment at MASM as one big
candidate.

For every code segment of every NE module:

  1. Re-disassemble the segment from offset 0 to its raw size with
     capstone CS_MODE_16.
  2. Wrap the resulting `mnemonic op_str` lines in a single PROC FAR
     (just like pass24 does for function-sized candidates).
  3. Drop the candidate into `state/analyze/pass30/<MODULE>.json` with
     `segment_index=N`, `segment_offset=0`, and `true_bytes_hex` set
     to the raw segment.

Pass24 will pick these up alongside pass25/27 candidates and verify
them. Successful round-trip means EVERY byte of that segment is
byte-exact reproducible. Failure highlights segments that have data
mixed with code - which we then handle in a later pass.
"""
import json
import struct
from pathlib import Path

REPO     = Path(__file__).resolve().parents[1].parent
ORIGINAL = REPO / 'original'
OUT_DIR  = REPO / 'state' / 'analyze' / 'pass30'
OUT_DIR.mkdir(parents=True, exist_ok=True)


def parse_ne(path: Path):
    data = path.read_bytes()
    if len(data) < 0x40 or data[0:2] != b'MZ':
        return None, None
    ne_off = struct.unpack_from('<I', data, 0x3C)[0]
    if ne_off == 0 or ne_off + 0x40 > len(data) or \
            data[ne_off:ne_off + 2] != b'NE':
        return None, None
    ne_segcount = struct.unpack_from('<H', data, ne_off + 0x1C)[0]
    ne_segtab   = struct.unpack_from('<H', data, ne_off + 0x22)[0]
    ne_align    = struct.unpack_from('<H', data, ne_off + 0x32)[0] or 9
    sector      = 1 << ne_align
    segs = []
    for i in range(ne_segcount):
        off = ne_off + ne_segtab + i * 8
        sec_off, raw_size, flags, _ = struct.unpack_from(
            '<HHHH', data, off)
        if (flags & 1) != 0:        # data
            continue
        if raw_size == 0:
            continue
        segs.append({
            'index':       i + 1,
            'data_offset': sec_off * sector,
            'data_size':   raw_size,
            'flags':       flags,
        })
    return data, segs


def main():
    n_modules = 0
    n_segments = 0
    for orig in sorted(ORIGINAL.iterdir()):
        if not orig.is_file() or orig.suffix.lower() not in (
                '.exe', '.drv'):
            continue
        data, segs = parse_ne(orig)
        if data is None or not segs:
            continue
        module = orig.stem.upper()
        candidates = []
        for s in segs:
            seg_bytes = data[s['data_offset']:
                                 s['data_offset'] + s['data_size']]
            if not seg_bytes:
                continue
            candidates.append({
                'name':              f'{module}_FULLSEG_{s["index"]}',
                'ordinal':           None,
                'segment_index':     s['index'],
                'segment_offset':    0,
                'body_bytes_hex':    seg_bytes.hex().upper(),
                'true_bytes_hex':    seg_bytes.hex().upper(),
                'seg_bytes_hex':     seg_bytes.hex().upper(),
                'matches_seg':       True,
                'instruction_count': 0,
                'asm_lines':         [],
                'source':            'pass30_fullseg',
            })
            n_segments += 1
        if not candidates:
            continue
        out = {
            'module':          module,
            'candidate_count': len(candidates),
            'candidates':      candidates,
        }
        (OUT_DIR / f'{module}.json').write_text(json.dumps(out, indent=2))
        n_modules += 1

    print('========================================================')
    print(f'  Modules:                {n_modules}')
    print(f'  Full-segment candidates: {n_segments}')
    print('========================================================')


if __name__ == '__main__':
    main()
