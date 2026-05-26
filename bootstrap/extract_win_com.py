#!/usr/bin/env python3
"""Extrae WIN.COM del IMG FAT12 sin necesitar mtools.

Parsea boot sector + root dir + FAT, copia los clusters de WIN.COM
a `original/WIN.COM` (si no existe ya) y a `/tmp/WIN.COM` para inspeccion.
"""
from pathlib import Path
import struct
import sys

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img.bak"
OUT_NATIVE = ROOT / "tmp_extract" / "WIN.COM"

if not IMG.exists():
    print(f"[FATAL] no IMG: {IMG}")
    sys.exit(1)

buf = IMG.read_bytes()
print(f"IMG size: {len(buf)} bytes")

# Parse boot sector (FAT12 floppy)
bps = struct.unpack_from("<H", buf, 11)[0]    # bytes/sector
spc = buf[13]                                  # sectors/cluster
resv = struct.unpack_from("<H", buf, 14)[0]   # reserved sectors
nfats = buf[16]                                # FAT count
nroot = struct.unpack_from("<H", buf, 17)[0]  # root entries
spfat = struct.unpack_from("<H", buf, 22)[0]  # sectors/FAT
print(f"BPS={bps} SPC={spc} RESV={resv} NFATS={nfats} NROOT={nroot} SPFAT={spfat}")

fat_start = resv * bps
root_start = fat_start + nfats * spfat * bps
data_start = root_start + (nroot * 32)
print(f"fat@0x{fat_start:X}  root@0x{root_start:X}  data@0x{data_start:X}")

# Find WIN.COM in root dir
target = None
for i in range(nroot):
    e = buf[root_start + i*32: root_start + (i+1)*32]
    if e[0] in (0, 0xE5):
        continue
    name = e[0:8].rstrip(b" ").decode("ascii", "replace")
    ext = e[8:11].rstrip(b" ").decode("ascii", "replace")
    cluster = struct.unpack_from("<H", e, 26)[0]
    size = struct.unpack_from("<I", e, 28)[0]
    if name.upper() == "WIN" and ext.upper() == "COM":
        target = (name, ext, cluster, size)
        print(f"FOUND {name}.{ext}  cluster={cluster}  size={size}B")
        break

if not target:
    print("[FATAL] WIN.COM not in root dir")
    sys.exit(2)

# Walk FAT12 chain
def fat12_next(cluster):
    off = fat_start + (cluster * 3 // 2)
    raw = struct.unpack_from("<H", buf, off)[0]
    if cluster & 1:
        return raw >> 4
    return raw & 0x0FFF

clusters = []
c = target[2]
while c < 0xFF8 and c >= 2:
    clusters.append(c)
    c = fat12_next(c)
print(f"chain: {len(clusters)} clusters  first={clusters[:5]} last={clusters[-3:]}")

# Read data
out = bytearray()
cluster_bytes = spc * bps
for cl in clusters:
    off = data_start + (cl - 2) * cluster_bytes
    out.extend(buf[off:off + cluster_bytes])
out = bytes(out[: target[3]])  # truncate to declared size
print(f"extracted {len(out)} bytes (declared {target[3]})")

# Save
OUT_NATIVE.parent.mkdir(parents=True, exist_ok=True)
OUT_NATIVE.write_bytes(out)
print(f"-> {OUT_NATIVE}")

# Header check
print(f"\nFirst 32 bytes: {out[:32].hex(' ')}")
if out[:2] == b"MZ":
    print("==> MZ EXE header (DOS executable with .COM extension)")
    e_cparhdr = struct.unpack_from("<H", out, 8)[0]
    e_cs = struct.unpack_from("<h", out, 22)[0]
    e_ip = struct.unpack_from("<H", out, 20)[0]
    e_ss = struct.unpack_from("<h", out, 14)[0]
    e_sp = struct.unpack_from("<H", out, 16)[0]
    header_bytes = e_cparhdr * 16
    print(f"  header paragraphs: {e_cparhdr} ({header_bytes}B)")
    print(f"  entry: CS:IP = {e_cs:04X}:{e_ip:04X}  SS:SP = {e_ss:04X}:{e_sp:04X}")
else:
    print("==> Flat .COM (entry at offset 0, CS=DS=ES=SS, PSP at 0)")

# Look around the bitmap offset
print(f"\nBytes @ 0x08C0 (claimed bitmap start): {out[0x08C0:0x08C0+16].hex(' ')}")
print(f"Bytes @ 0x08C0+2624 (claimed bitmap end): {out[0x08C0+2624:0x08C0+2624+16].hex(' ')}")
