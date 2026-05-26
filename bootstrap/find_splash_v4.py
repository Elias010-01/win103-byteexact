#!/usr/bin/env python3
"""v4: lenient filters, ASCII preview of every candidate, also save PNG.

The goal: find the BIG 'MICROSOFT' logo bitmap. We need to see it.
"""
from pathlib import Path
import struct
import zlib

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
OUT = TMP / "bitmap_candidates"
OUT.mkdir(parents=True, exist_ok=True)
for f in OUT.glob("*"):
    f.unlink()

data = (TMP / "WIN100.OVL").read_bytes()
print(f"WIN100.OVL: {len(data)} bytes\n")

POP = [bin(i).count("1") for i in range(256)]


def write_png_1bit(rows_pixels, width, height, path):
    """Write a minimal grayscale PNG (8-bit, 0=blue/black, 255=white)."""
    raw = bytearray()
    for y in range(height):
        raw.append(0)  # filter type
        for x in range(width):
            row = rows_pixels[y]
            byte_idx = x // 8
            bit_idx = 7 - (x % 8)
            if byte_idx < len(row) and (row[byte_idx] >> bit_idx) & 1:
                raw.append(0xFF)
            else:
                raw.append(0x00)

    def chunk(t, d):
        c = zlib.crc32(t + d)
        return struct.pack(">I", len(d)) + t + d + struct.pack(">I", c)

    sig = b"\x89PNG\r\n\x1a\n"
    ihdr = struct.pack(">IIBBBBB", width, height, 8, 0, 0, 0, 0)
    idat = zlib.compress(bytes(raw))
    path.write_bytes(sig + chunk(b"IHDR", ihdr) + chunk(b"IDAT", idat) + chunk(b"IEND", b""))


def render_ascii(blob, wb, h, sample_every=2, max_cols=120):
    """Return ASCII rows (every Nth)."""
    out = []
    for r in range(0, h, sample_every):
        row = blob[r*wb:(r+1)*wb]
        s = "".join("#" if (b >> (7 - bi)) & 1 else "." for b in row for bi in range(8))
        out.append(s[:max_cols])
    return out


CONFIGS = [(64, 80, "512x80"),
           (64, 96, "512x96"),
           (80, 80, "640x80"),
           (80, 64, "640x64"),
           (80, 50, "640x50"),
           (56, 80, "448x80")]
STRIDE = 16

candidates = []
for wb, h, label in CONFIGS:
    sz = wb * h
    bits_min = int(sz * 8 * 0.06)
    bits_max = int(sz * 8 * 0.45)
    for off in range(0, len(data) - sz, STRIDE):
        blob = data[off:off+sz]
        total = sum(POP[b] for b in blob)
        if not (bits_min <= total <= bits_max):
            continue
        rows_pop = [sum(POP[b] for b in blob[r*wb:(r+1)*wb]) for r in range(h)]
        avg = total / h
        var = sum((p - avg)**2 for p in rows_pop) / h
        candidates.append((var, off, wb, h, label, total/(sz*8)))

candidates.sort(reverse=True)

# Dedupe & save top 10
saved = 0
seen = []
for var, off, wb, h, label, density in candidates:
    if any(abs(off - so) < wb * 2 for so, _ in seen):
        continue
    seen.append((off, wb))
    blob = data[off:off + wb * h]

    # PNG
    rows_pixels = [blob[r*wb:(r+1)*wb] for r in range(h)]
    png_path = OUT / f"cand{saved:02d}_off{off:04X}_{label}_d{int(density*100):02d}.png"
    write_png_1bit(rows_pixels, wb*8, h, png_path)

    print(f"\n=== #{saved}  @ 0x{off:04X}  {label}  density={density:.2f}  var={var:.0f}  -> {png_path.name} ===")
    for line in render_ascii(blob, wb, h, sample_every=max(2, h // 24)):
        print(line)

    saved += 1
    if saved >= 8:
        break
print(f"\n\nSaved {saved} PNGs to {OUT.relative_to(ROOT)}")
