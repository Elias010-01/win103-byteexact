#!/usr/bin/env python3
"""Pure-Python EXE2BIN equivalent.

Microsoft EXE2BIN.EXE (DOS utility, ~3 KB) converts an MZ-format DOS
executable produced by LINK into a flat .COM file, by stripping the MZ
header (and applying CS:0000-relative segment fixups when the source
asked for them).

We don't have EXE2BIN.EXE in our vendor disks (it's part of MS-DOS, not
MASM 4.0 / MS C 4.0), so this script provides a drop-in equivalent
in Python. For the simple case our pipeline produces (a single CODE
segment with ORG 100h and no segment relocations) this is just:

    1. Read MZ header, find image start (header_size_paragraphs * 16)
    2. Image bytes start AT THAT OFFSET; image size = total -
       header_size, but capped by the bytes_in_last_page / pages_in_file
       fields of the header so we don't include LINK's padding.
    3. Skip the first 0x100 bytes of the image (those correspond to the
       PSP area in the runtime DOS COM model; MASM source uses ORG 100h
       so the first 0x100 emitted bytes are the absolute start of the
       segment). Wait, actually no - if source uses ORG 100h, MASM emits
       NO bytes before offset 0x100 in the segment, so the image starts
       directly at the user's first instruction. EXE2BIN strips just
       the MZ header.

Usage:
    python bootstrap/py_exe2bin.py input.exe output.com
"""
from __future__ import annotations

import struct
import sys
from pathlib import Path


def exe_to_com(exe_bytes: bytes) -> bytes:
    """Convert an MZ EXE to a flat .COM image."""
    if exe_bytes[:2] != b"MZ" and exe_bytes[:2] != b"ZM":
        raise ValueError("not an MZ EXE (no MZ/ZM signature)")

    # MZ header layout (offsets relative to file start):
    #   0x00  e_magic       'MZ'
    #   0x02  e_cblp        bytes on last 512-byte page
    #   0x04  e_cp          512-byte pages in the file
    #   0x06  e_crlc        relocation count
    #   0x08  e_cparhdr     header size in 16-byte paragraphs
    #   0x0A  e_minalloc    minimum extra paragraphs
    #   0x0C  e_maxalloc    maximum extra paragraphs
    #   0x0E  e_ss          initial relative SS
    #   0x10  e_sp          initial SP
    #   0x12  e_csum        checksum (usually 0)
    #   0x14  e_ip          initial IP  (must be 0x100 for COM-style)
    #   0x16  e_cs          initial relative CS (must be 0xFFF0 for COM)
    #   0x18  e_lfarlc      file offset of relocation table
    #   0x1A  e_ovno        overlay number
    e_cblp     = struct.unpack_from("<H", exe_bytes, 0x02)[0]
    e_cp       = struct.unpack_from("<H", exe_bytes, 0x04)[0]
    e_crlc     = struct.unpack_from("<H", exe_bytes, 0x06)[0]
    e_cparhdr  = struct.unpack_from("<H", exe_bytes, 0x08)[0]
    e_ip       = struct.unpack_from("<H", exe_bytes, 0x14)[0]
    e_cs       = struct.unpack_from("<h", exe_bytes, 0x16)[0]

    header_size = e_cparhdr * 16
    # Total image size as recorded by LINK (excludes header):
    if e_cblp == 0:
        total_file_size = e_cp * 512
    else:
        total_file_size = (e_cp - 1) * 512 + e_cblp
    image_size = total_file_size - header_size

    if e_crlc != 0:
        # We don't apply relocations; an honest EXE2BIN would. For our
        # COM-style pipeline (single segment, no segment fixups) this
        # path is unused.
        sys.stderr.write(
            f"WARN: EXE has {e_crlc} relocations; py_exe2bin only "
            "handles relocation-free EXEs.\n")

    image = exe_bytes[header_size:header_size + image_size]

    # For COM-style EXEs (source used ORG 100h, entry IP = 0x100),
    # MASM/LINK emit the image with 0x100 leading zero bytes (the segment
    # occupies offsets 0..end-of-code, but ORG 100h means the first 0x100
    # bytes are padding -- they correspond to the PSP area at runtime, NOT
    # to anything in the .COM file). Real EXE2BIN strips those 0x100 bytes.
    # The output is the actual code, starting at .COM offset 0.
    #
    # The "COM-style" test is just e_ip == 0x100. Real EXE2BIN also checks
    # e_cs == 0xFFF0, but LINK 3.51 (the MASM-4.0-era linker) actually
    # writes e_cs=0x0000 here with e_ip=0x100; the resulting EXE/COM still
    # runs because DOS sets CS to the load segment at runtime. So we treat
    # any EXE with e_ip == 0x100 as COM-style.
    if e_ip == 0x100:
        if len(image) < 0x100:
            sys.stderr.write(
                f"WARN: COM-style EXE but image is only {len(image)} "
                "bytes (<0x100); cannot strip PSP area.\n")
        else:
            # Sanity: those first 0x100 bytes SHOULD be all zero.
            if any(b != 0 for b in image[:0x100]):
                nz = sum(1 for b in image[:0x100] if b != 0)
                sys.stderr.write(
                    f"WARN: COM-style EXE has {nz} non-zero bytes in the "
                    "first 0x100 bytes of the image (expected all zeros). "
                    "Stripping anyway.\n")
            image = image[0x100:]
    else:
        sys.stderr.write(
            f"WARN: not a COM-style EXE (CS:IP={e_cs:04X}:{e_ip:04X}). "
            "Output may not run as a .COM.\n")

    return image


def main():
    if len(sys.argv) != 3:
        print(__doc__)
        sys.exit(1)
    src = Path(sys.argv[1])
    dst = Path(sys.argv[2])
    com_bytes = exe_to_com(src.read_bytes())
    dst.write_bytes(com_bytes)
    print(f"{src} ({src.stat().st_size}B) -> {dst} ({len(com_bytes)}B)")


if __name__ == "__main__":
    main()
