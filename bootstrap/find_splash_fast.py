#!/usr/bin/env python3
"""Fast scanner: only top configs, only top candidates, saves BMPs."""
from pathlib import Path
import struct

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
OUT = TMP / "bitmap_candidates"
OUT.mkdir(parents=True, exist_ok=True)
for f in OUT.glob("*.bmp"):
    f.unlink()

data = (TMP / "WIN100.OVL").read_bytes()
print(f"WIN100.OVL: {len(data)} bytes")

# Precompute popcount table
POP = [bin(i).count("1") for i in range(256)]


def make_bmp_1bpp(pixel_data, width, height):
    row_bytes = (width + 7) // 8
    row_padded = (row_bytes + 3) & ~3
    image_size = row_padded * height
    file_size = 14 + 40 + 8 + image_size
    bf = struct.pack("<2sIHHI", b"BM", file_size, 0, 0, 14 + 40 + 8)
    bi = struct.pack("<IiiHHIIiiII",
                     40, width, -height, 1, 1, 0,
                     image_size, 2835, 2835, 2, 0)
    pal = bytes([0x00, 0x00, 0x80, 0x00,
                 0xFF, 0xFF, 0xFF, 0x00])
    pixels = bytearray()
    for r in range(height):
        row = pixel_data[r*row_bytes:(r+1)*row_bytes]
        if len(row) < row_padded:
            row = row + b"\x00" * (row_padded - len(row))
        pixels.extend(row)
    return bf + bi + pal + bytes(pixels)


CONFIGS = [(64, 80), (64, 96), (80, 80), (80, 50), (56, 80), (40, 80)]
STRIDE = 32

candidates = []
for wb, h in CONFIGS:
    sz = wb * h
    if sz > len(data):
        continue
    target_bits_min = int(sz * 8 * 0.07)
    target_bits_max = int(sz * 8 * 0.40)
    for off in range(0, len(data) - sz, STRIDE):
        blob = data[off:off+sz]
        # Fast popcount of whole blob
        total_bits = sum(POP[b] for b in blob)
        if not (target_bits_min <= total_bits <= target_bits_max):
            continue
        # Now compute row densities
        rows_pop = [sum(POP[b] for b in blob[r*wb:(r+1)*wb]) for r in range(h)]
        bits_per_row = wb * 8
        empty = sum(1 for p in rows_pop if p < bits_per_row * 0.02)
        if empty > h * 0.50:
            continue
        # Score: variance of row densities (= rich structure)
        avg = total_bits / h
        var = sum((p - avg) ** 2 for p in rows_pop) / h
        candidates.append((var, off, wb, h, total_bits / (sz * 8)))

candidates.sort(reverse=True)

# Dedupe + save top
saved = 0
seen = []
for var, off, wb, h, density in candidates:
    if any(abs(off - so) < 200 and sw == wb for so, sw in seen):
        continue
    seen.append((off, wb))
    blob = data[off:off + wb * h]
    bmp = make_bmp_1bpp(blob, wb * 8, h)
    fn = OUT / f"cand{saved:02d}_off{off:04X}_w{wb*8}_h{h}_d{int(density*100):02d}.bmp"
    fn.write_bytes(bmp)
    print(f"  #{saved}  @ 0x{off:04X}  {wb*8}x{h}  density={density:.2f}  var={var:.1f}  -> {fn.name}")
    saved += 1
    if saved >= 8:
        break
print(f"\nSaved {saved} BMPs to {OUT.relative_to(ROOT)}")
