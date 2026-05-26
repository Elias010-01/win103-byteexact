#!/usr/bin/env python3
"""Hunt the MICROSOFT logo bitmap in WIN100.OVL.

Strategy: the big letters have THICK horizontal strokes which appear as
long runs of 0xFF bytes (8 consecutive pixels solid). Find such runs
clustered together (= a bitmap region).
"""
from pathlib import Path
import struct
import zlib

ROOT = Path(__file__).resolve().parent.parent
TMP = ROOT / "tmp_extract"
OUT = TMP / "logo_hunt"
OUT.mkdir(parents=True, exist_ok=True)
for f in OUT.glob("*"):
    f.unlink()

data = (TMP / "WIN100.OVL").read_bytes()
print(f"WIN100.OVL: {len(data)} bytes\n")

# Find all 0xFF runs >= 4 consecutive bytes
print("=== Long 0xFF runs (>= 8 bytes, = >=64 solid pixels) ===")
ff_runs = []
i = 0
while i < len(data):
    if data[i] == 0xFF:
        j = i
        while j < len(data) and data[j] == 0xFF:
            j += 1
        run_len = j - i
        if run_len >= 8:
            ff_runs.append((i, run_len))
        i = j
    else:
        i += 1

print(f"Found {len(ff_runs)} runs of >= 8 consecutive 0xFF\n")

# Cluster them: groups of runs within 200 bytes of each other = one image
clusters = []
if ff_runs:
    cluster = [ff_runs[0]]
    for off, length in ff_runs[1:]:
        if off - (cluster[-1][0] + cluster[-1][1]) < 200:
            cluster.append((off, length))
        else:
            if len(cluster) >= 3:  # need >=3 stroke segments to be a bitmap
                clusters.append(cluster)
            cluster = [(off, length)]
    if len(cluster) >= 3:
        clusters.append(cluster)

print(f"Found {len(clusters)} clusters of FF-runs (potential bitmap regions):\n")
for ci, cluster in enumerate(clusters[:10]):
    start = cluster[0][0]
    end = cluster[-1][0] + cluster[-1][1]
    span = end - start
    total_ff = sum(L for _, L in cluster)
    print(f"  Cluster {ci}: 0x{start:04X}..0x{end:04X} ({span}B span, {len(cluster)} runs, {total_ff}B total FF)")
    for off, L in cluster[:6]:
        print(f"      run @ 0x{off:04X}  ({L}B = {L*8}px solid white)")
    if len(cluster) > 6:
        print(f"      ... +{len(cluster)-6} more runs")
    print()


def write_png_1bit(blob, width, height, path):
    raw = bytearray()
    wb = (width + 7) // 8
    for y in range(height):
        raw.append(0)
        row = blob[y*wb:(y+1)*wb]
        for x in range(width):
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


# For top clusters, render at multiple widths
print("\n=== Rendering top clusters at multiple widths ===")
for ci, cluster in enumerate(clusters[:5]):
    start = cluster[0][0]
    end = cluster[-1][0] + cluster[-1][1]
    span = end - start
    # Round span up to make rendering tidy
    blob_start = max(0, start - 16)  # back off a bit
    blob_end = min(len(data), end + 16)
    blob = data[blob_start:blob_end]

    # Try widths that divide reasonably
    for wb in [40, 48, 56, 64, 72, 80, 96]:
        h = len(blob) // wb
        if h < 5:
            continue
        pix_blob = blob[:wb*h]
        png = OUT / f"cluster{ci}_off{blob_start:04X}_w{wb*8}_h{h}.png"
        write_png_1bit(pix_blob, wb*8, h, png)
    print(f"  cluster {ci} @ 0x{blob_start:04X} ({len(blob)}B) -> rendered at 7 widths")

print(f"\nAll PNGs in {OUT.relative_to(ROOT)}")
