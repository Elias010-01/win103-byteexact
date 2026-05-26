#!/usr/bin/env python3
"""Map the data region 0x0680..0x1308 of WIN.COM in detail."""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parent.parent
data = (ROOT / "tmp_extract" / "WIN.COM").read_bytes()
SIZE = len(data)
print(f"WIN.COM: {SIZE} bytes (0x{SIZE:04X})")
print(f"Data region: 0x0680..0x1308 ({0x1308 - 0x0680 + 1}B)\n")

REGION_START = 0x0680
REGION_END = 0x1308
region = data[REGION_START:REGION_END+1]

# Find ALL printable ASCII strings >= 3 chars
print("=== Strings in data region ===")
for m in re.finditer(rb"[\x20-\x7E]{3,}", region):
    abs_off = REGION_START + m.start()
    s = m.group().decode("ascii")
    print(f"  0x{abs_off:04X} ({len(s):2}B)  {s!r}")

# Look for the LOGO marker: print 32 bytes BEFORE and AFTER each occurrence
print("\n=== Context around 'LOGO' ===")
for m in re.finditer(rb"LOGO", region):
    abs_off = REGION_START + m.start()
    ctx_start = max(0, abs_off - 32)
    ctx_end = min(SIZE, abs_off + 32)
    print(f"  At 0x{abs_off:04X}:")
    print(f"    before: {data[ctx_start:abs_off].hex(' ')}")
    print(f"    AT:     {data[abs_off:abs_off+4].hex(' ')}  ('LOGO')")
    print(f"    after:  {data[abs_off+4:ctx_end].hex(' ')}")

# Now: between REGION_START and the FIRST string, we have pure binary -- likely the bitmap
first_string_off = None
for m in re.finditer(rb"[\x20-\x7E]{4,}", region):
    first_string_off = REGION_START + m.start()
    break

print(f"\n=== First ASCII string at 0x{first_string_off:04X} ===")
print(f"Pure-binary block: 0x{REGION_START:04X} .. 0x{first_string_off-1:04X} "
      f"({first_string_off - REGION_START}B)")

# Analyze byte distribution in the pure-binary block
bin_block = data[REGION_START:first_string_off]
nz = sum(1 for b in bin_block if b != 0)
zeros_pct = (len(bin_block) - nz) / len(bin_block) * 100
print(f"  Non-zero bytes: {nz}/{len(bin_block)} ({nz*100//len(bin_block)}%)")
print(f"  Zero bytes: {zeros_pct:.0f}%")

# Look at first 256 bytes
print(f"\n  First 64 bytes of binary block:")
for i in range(0, 64, 16):
    print(f"    0x{REGION_START+i:04X}: {bin_block[i:i+16].hex(' ')}")

# Try to identify a bitmap by finding the most likely row width.
# A bitmap has horizontal repetition; look at autocorrelation.
print(f"\n=== Bitmap row-width hypothesis ===")
print(f"Block size: {len(bin_block)} bytes")
for rw in [8, 10, 16, 20, 32, 40, 50, 56, 64, 72, 80, 96, 100, 128]:
    if len(bin_block) % rw == 0:
        rows = len(bin_block) // rw
        print(f"  {rw}B/row ({rw*8}px wide) -> {rows} rows  EXACT")
    elif len(bin_block) // rw > 4:
        rows = len(bin_block) // rw
        rem = len(bin_block) % rw
        # Only show "clean-ish" candidates
        if rem < rw // 4:
            print(f"  {rw}B/row ({rw*8}px wide) -> {rows} rows + {rem}B remainder")
