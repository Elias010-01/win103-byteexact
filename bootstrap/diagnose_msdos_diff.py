#!/usr/bin/env python3
"""Diagnose the byte-exact diff in MSDOS.EXE: where exactly does the
rebuilt-from-source binary differ from original/MSDOS.EXE?

Outputs a histogram of diff regions: which segment(s), how many bytes,
and a hex dump of the first divergence.
"""
from pathlib import Path
import hashlib
import json

ROOT = Path(__file__).resolve().parent.parent
ORIG = (ROOT / "original" / "MSDOS.EXE").read_bytes()
BUILT = (ROOT / "built" / "MSDOS.EXE").read_bytes()
LAYOUT = json.loads((ROOT / "src" / "MSDOS" / "layout.json").read_text())

print(f"original/MSDOS.EXE:  {len(ORIG)}B  sha={hashlib.sha256(ORIG).hexdigest()[:16]}")
print(f"built/MSDOS.EXE:     {len(BUILT)}B  sha={hashlib.sha256(BUILT).hexdigest()[:16]}")
print()

if len(ORIG) != len(BUILT):
    print(f"!!! Size mismatch: {len(BUILT) - len(ORIG):+d} bytes")

n = min(len(ORIG), len(BUILT))
diff_runs = []
i = 0
while i < n:
    if ORIG[i] != BUILT[i]:
        start = i
        while i < n and ORIG[i] != BUILT[i]:
            i += 1
        diff_runs.append((start, i))
    else:
        i += 1

print(f"=== {len(diff_runs)} diff runs covering {sum(e-s for s,e in diff_runs)} bytes ===\n")

for s, e in diff_runs[:10]:
    sz = e - s
    # Identify which segment this is in
    seg_label = "?"
    for seg in LAYOUT["segments"]:
        fo = seg["file_off"]
        sz_seg = seg["data_len"]
        if fo <= s < fo + sz_seg:
            seg_label = f"seg{seg['index']} (file_off=0x{fo:X}, len={sz_seg})"
            offset_in_seg = s - fo
            seg_label += f"  [@+0x{offset_in_seg:X}]"
            break
    print(f"  0x{s:06X}..0x{e:06X}  ({sz}B)  {seg_label}")
    print(f"    orig:  {ORIG[s:min(e,s+24)].hex(' ')}")
    print(f"    built: {BUILT[s:min(e,s+24)].hex(' ')}")
    print()

# Also show layout for context
print("\n=== MSDOS layout ===")
for seg in LAYOUT["segments"]:
    print(f"  seg{seg['index']}: file_off=0x{seg['file_off']:X} len={seg['data_len']} "
          f"flags=0x{seg['flags']:04X} is_data={seg['is_data']} reloc={seg['reloc_count']}")

# Show non-segment regions (headers/tables)
print("\n=== Non-segment regions (headers/tables/etc.) ===")
covered = sorted([(s["file_off"], s["file_off"] + s["data_len"]) for s in LAYOUT["segments"]])
last = 0
for s, e in covered:
    if s > last:
        print(f"  0x{last:06X}..0x{s:06X} ({s-last}B)  -- header/table region")
    last = e
if last < len(ORIG):
    print(f"  0x{last:06X}..0x{len(ORIG):06X} ({len(ORIG)-last}B)  -- trailing region")
