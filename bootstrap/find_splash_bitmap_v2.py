#!/usr/bin/env python3
"""Find where the Microsoft splash bitmap really lives.

v8 wrongly identified WIN.COM @ 0x08C0 as the bitmap blob.
That offset is actually init code (INT 10h video setup).

We now scan WIN.COM AND WIN100.OVL for runs that look like
1bpp bitmap data: long stretches of bytes whose bit pattern
forms coherent horizontal strokes when interpreted as N-byte-wide rows.
"""
from pathlib import Path
import struct
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
TMP.mkdir(exist_ok=True)
IMG = ROOT / "runtime" / "win103-built.img.bak"

# ---- Extract WIN.COM and WIN100.OVL using FAT12 parser (reuse logic) ----
def extract_file_from_img(img_path: Path, filename_full: str) -> bytes:
    buf = img_path.read_bytes()
    bps = struct.unpack_from("<H", buf, 11)[0]
    spc = buf[13]
    resv = struct.unpack_from("<H", buf, 14)[0]
    nfats = buf[16]
    nroot = struct.unpack_from("<H", buf, 17)[0]
    spfat = struct.unpack_from("<H", buf, 22)[0]
    fat_start = resv * bps
    root_start = fat_start + nfats * spfat * bps
    data_start = root_start + (nroot * 32)
    target_name = filename_full.split(".")[0].upper().ljust(8)
    target_ext = filename_full.split(".")[1].upper().ljust(3)
    for i in range(nroot):
        e = buf[root_start + i*32: root_start + (i+1)*32]
        if e[0] in (0, 0xE5):
            continue
        if e[0:8].decode("ascii", "replace") == target_name and \
           e[8:11].decode("ascii", "replace") == target_ext:
            cluster = struct.unpack_from("<H", e, 26)[0]
            size = struct.unpack_from("<I", e, 28)[0]
            def fat12_next(c):
                off = fat_start + (c * 3 // 2)
                raw = struct.unpack_from("<H", buf, off)[0]
                return (raw >> 4) if (c & 1) else (raw & 0x0FFF)
            out = bytearray()
            c = cluster
            while 2 <= c < 0xFF8:
                off = data_start + (c - 2) * spc * bps
                out.extend(buf[off: off + spc * bps])
                c = fat12_next(c)
            return bytes(out[:size])
    raise FileNotFoundError(filename_full)


targets = ["WIN.COM", "WIN100.OVL", "WINOLDAP.MOD"]
files = {}
for name in targets:
    try:
        data = extract_file_from_img(IMG, name)
        out_path = TMP / name
        out_path.write_bytes(data)
        files[name] = data
        print(f"{name}: {len(data):>6}B  -> {out_path.relative_to(ROOT)}")
    except FileNotFoundError:
        print(f"{name}: not in image (skipping)")

print()

# ---- Identify candidate bitmap regions ----
# A 1bpp bitmap region typically has:
#  - High variation in byte values (not all zero / not all FF)
#  - Repeated structural patterns when sliced at a fixed row width
#  - Bit-density between ~10% and ~50% (background mostly, foreground letters)
#
# Heuristic: slide a window of WIDTH=80 bytes (640 pixels) and HEIGHT=32 rows.
# Score = bit density in [0.05, 0.5] AND row-to-row variance is moderate
# (not monotone, not random).

import statistics

def bit_density(b: bytes) -> float:
    return sum(bin(x).count("1") for x in b) / (len(b) * 8) if b else 0

def looks_bitmap(data: bytes, off: int, w_bytes: int, h_rows: int) -> dict:
    blob = data[off: off + w_bytes * h_rows]
    if len(blob) < w_bytes * h_rows:
        return None
    rows = [blob[r*w_bytes:(r+1)*w_bytes] for r in range(h_rows)]
    densities = [bit_density(r) for r in rows]
    avg = statistics.mean(densities)
    stdev = statistics.pstdev(densities)
    # Bitmap characters usually have density 0.05..0.4
    # All-zeros (padding) → avg=0
    # All-ones (header/garbage) → avg=1
    return {
        "avg_density": avg,
        "stdev": stdev,
        "rows": rows,
    }

def render_ascii(rows, sample=4):
    """Render every Nth row as ASCII for visual scan."""
    out = []
    for i, r in enumerate(rows):
        if i % sample != 0:
            continue
        line = "".join("#" if (b >> (7 - bi)) & 1 else "." for b in r for bi in range(8))
        out.append(f"  {i:2}: {line[:80]}{'...' if len(line) > 80 else ''}")
    return "\n".join(out)


# Scan each file for candidate bitmap regions
ROW_CONFIGS = [
    (80, 32, "640x32 single big bitmap"),
    (80, 16, "640x16 half-height"),
    (40, 32, "320x32 small"),
    (40, 48, "320x48"),
    (80, 50, "640x50 wide tall"),
    (20, 64, "160x64"),
]

for name, data in files.items():
    print(f"\n{'='*70}")
    print(f"=== {name} ({len(data)} bytes) ===")
    print(f"{'='*70}")

    # Scan by 16-byte stride
    best = []
    for wb, h, desc in ROW_CONFIGS:
        sz = wb * h
        if sz > len(data):
            continue
        for off in range(0, len(data) - sz, 16):
            info = looks_bitmap(data, off, wb, h)
            if not info:
                continue
            # Score: prefer 0.1 <= avg <= 0.35 and stdev > 0.02 (varies)
            if 0.08 <= info["avg_density"] <= 0.40 and info["stdev"] > 0.02:
                score = info["stdev"] * (1.0 - abs(info["avg_density"] - 0.18))
                best.append((score, off, wb, h, desc, info))
    best.sort(reverse=True)

    # Show top 5 candidates per file
    print(f"\nTop bitmap-like regions in {name}:")
    for score, off, wb, h, desc, info in best[:5]:
        print(f"\n  @ 0x{off:04X}  cfg={desc}  density={info['avg_density']:.2f}  stdev={info['stdev']:.3f}  score={score:.4f}")
        print(render_ascii(info["rows"], sample=max(1, h // 12)))
