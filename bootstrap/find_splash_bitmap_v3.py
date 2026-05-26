#!/usr/bin/env python3
"""Find the big MICROSOFT splash bitmap by scanning WIN100.OVL
with configurations that match the visible splash dimensions (~512x100px).

Saves top candidates as BMP files for visual inspection.
"""
from pathlib import Path
import struct
import statistics

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
OUT = TMP / "bitmap_candidates"
OUT.mkdir(parents=True, exist_ok=True)

# Clean
for f in OUT.glob("*.bmp"):
    f.unlink()

data = (TMP / "WIN100.OVL").read_bytes()
print(f"WIN100.OVL: {len(data)} bytes")


def bit_density(b: bytes) -> float:
    return sum(bin(x).count("1") for x in b) / (len(b) * 8) if b else 0


def row_uniformity_penalty(rows):
    """Penalize regions where rows are too random (= code, not image).
    A bitmap usually has clusters of similar-density rows.
    """
    densities = [bit_density(r) for r in rows]
    # Adjacent-row density difference (smooth in images, jagged in code)
    diffs = [abs(densities[i] - densities[i-1]) for i in range(1, len(densities))]
    return statistics.mean(diffs) if diffs else 1.0


def make_bmp_1bpp(pixel_data: bytes, width: int, height: int) -> bytes:
    row_bytes = (width + 7) // 8
    row_padded = (row_bytes + 3) & ~3
    image_size = row_padded * height
    file_size = 14 + 40 + 8 + image_size
    bf = struct.pack("<2sIHHI", b"BM", file_size, 0, 0, 14 + 40 + 8)
    bi = struct.pack("<IiiHHIIiiII",
                     40, width, -height, 1, 1, 0,
                     image_size, 2835, 2835, 2, 0)
    pal = bytes([0x00, 0x00, 0x80, 0x00,    # color 0: BLUE (background, like splash)
                 0xFF, 0xFF, 0xFF, 0x00])   # color 1: WHITE (text)
    pixels = bytearray()
    for r in range(height):
        row = pixel_data[r*row_bytes:(r+1)*row_bytes]
        if len(row) < row_padded:
            row = row + b"\x00" * (row_padded - len(row))
        pixels.extend(row)
    return bf + bi + pal + bytes(pixels)


# Configurations for the BIG MICROSOFT logo. Visible: ~512px wide, ~100px tall.
# 1bpp, 1 byte = 8 pixels horizontally.
CONFIGS = [
    # (width_bytes, height_rows, label)
    (64, 80,  "512x80"),
    (64, 96,  "512x96"),
    (64, 100, "512x100"),
    (64, 64,  "512x64"),
    (80, 64,  "640x64"),
    (80, 80,  "640x80"),
    (80, 100, "640x100"),
    (80, 50,  "640x50"),
    (56, 80,  "448x80"),
    (48, 80,  "384x80"),
    (40, 80,  "320x80"),
    (72, 96,  "576x96"),
]

candidates = []  # (score, offset, w_bytes, h_rows, label, info)

for wb, h, label in CONFIGS:
    sz = wb * h
    if sz > len(data) - 16:
        continue
    print(f"\nScanning {label} ({sz}B)...")
    for off in range(0, len(data) - sz, 8):
        blob = data[off:off+sz]
        rows = [blob[r*wb:(r+1)*wb] for r in range(h)]
        densities = [bit_density(r) for r in rows]
        avg = statistics.mean(densities)
        stdev = statistics.pstdev(densities)

        # Real bitmap: 10-35% bits set on average, with row-to-row variation
        if not (0.07 <= avg <= 0.38):
            continue
        if stdev < 0.04:  # too uniform = padding
            continue

        # Count "empty" rows (density < 0.02) — splash has some,
        # but not too many
        empty = sum(1 for d in densities if d < 0.02)
        if empty > h * 0.55:
            continue

        # Smoothness: in real images, density doesn't jump wildly between rows
        smooth = row_uniformity_penalty(rows)
        if smooth > 0.10:
            continue

        # Reject if mostly identical bytes (e.g., long FF or 00 runs)
        unique_bytes = len(set(blob))
        if unique_bytes < 16:
            continue

        score = stdev * (1.0 - abs(avg - 0.17)) / (smooth + 0.01) * (unique_bytes / 256)
        candidates.append((score, off, wb, h, label, avg, stdev, smooth))

candidates.sort(reverse=True)
print(f"\n\n=== Top {min(15, len(candidates))} candidates ===")
shown = 0
seen_regions = []
for score, off, wb, h, label, avg, stdev, smooth in candidates:
    # Skip near-duplicates (already-saved region)
    too_close = False
    for so, sw, sh in seen_regions:
        if abs(off - so) < wb * 4 and sw == wb and sh == h:
            too_close = True
            break
    if too_close:
        continue
    seen_regions.append((off, wb, h))

    blob = data[off:off + wb * h]
    bmp = make_bmp_1bpp(blob, wb * 8, h)
    fname = OUT / f"cand_{shown:02d}_off{off:04X}_{label}_score{score:.3f}.bmp"
    fname.write_bytes(bmp)
    print(f"  #{shown}  @ 0x{off:04X}  {label}  density={avg:.2f}  stdev={stdev:.3f}  smooth={smooth:.3f}  score={score:.3f}  -> {fname.name}")
    shown += 1
    if shown >= 15:
        break

print(f"\nSaved {shown} BMPs to {OUT.relative_to(ROOT)}")
