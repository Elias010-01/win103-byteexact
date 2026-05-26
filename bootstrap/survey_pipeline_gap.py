#!/usr/bin/env python3
"""Survey all files in the Windows 1.03 floppy IMG that are NOT yet in
the byte-exact source pipeline (i.e., not in src/), and identify their
binary format so we know what work is needed to bring them in.

Reads runtime/win103-built.img.bak directly (no mtools needed).
"""
from pathlib import Path
import struct

ROOT = Path(__file__).resolve().parent.parent
IMG = ROOT / "runtime" / "win103-built.img.bak"
SRC = ROOT / "src"
TMP = ROOT / "tmp_extract"
TMP.mkdir(exist_ok=True)


def list_img_files(img_path: Path):
    """Return list of (name, size_bytes, first_cluster, full_data) tuples."""
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

    def fat12_next(c):
        off = fat_start + (c * 3 // 2)
        raw = struct.unpack_from("<H", buf, off)[0]
        return (raw >> 4) if (c & 1) else (raw & 0x0FFF)

    files = []
    for i in range(nroot):
        e = buf[root_start + i*32: root_start + (i+1)*32]
        if e[0] in (0, 0xE5):
            continue
        if e[11] & 0x18:  # volume label or directory
            continue
        name = e[0:8].rstrip(b" \x00").decode("ascii", "replace")
        ext = e[8:11].rstrip(b" \x00").decode("ascii", "replace")
        cluster = struct.unpack_from("<H", e, 26)[0]
        size = struct.unpack_from("<I", e, 28)[0]
        full = name + ("." + ext if ext else "")
        # Read data
        data = bytearray()
        c = cluster
        while 2 <= c < 0xFF8:
            off = data_start + (c - 2) * spc * bps
            data.extend(buf[off: off + spc * bps])
            c = fat12_next(c)
        files.append((full, size, cluster, bytes(data[:size])))
    return files


def identify_format(name: str, data: bytes) -> str:
    """Identify the binary format of a file."""
    if len(data) < 32:
        return f"tiny ({len(data)}B)"
    # MZ header?
    if data[:2] == b"MZ":
        # Look for NE signature at offset specified by e_lfanew (offset 0x3C)
        if len(data) >= 0x40:
            ne_off = struct.unpack_from("<I", data, 0x3C)[0]
            if 0 < ne_off < len(data) - 4:
                sig = data[ne_off:ne_off+2]
                if sig == b"NE":
                    return f"NE module (MZ stub @ 0, NE header @ 0x{ne_off:04X})"
                elif sig == b"PE":
                    return f"PE32 (unexpected for Win 1.x!)"
                elif sig == b"LE":
                    return "LE (linear executable)"
        return f"MZ EXE (no NE header found)"
    # Flat .COM? (starts with code, no header)
    if name.upper().endswith(".COM"):
        # Check if first byte is a JMP or other reasonable opcode
        if data[0] in (0xE9, 0xEB, 0xFA, 0xFC, 0xB8, 0x33, 0xB4):
            return f"flat .COM (first opcode: 0x{data[0]:02X})"
    # Raw font? Resource? Just describe.
    return f"unknown (first 4 bytes: {data[:4].hex(' ')})"


def main():
    # Prefer original/ if it exists (full Windows 1.03 file set extracted
    # from the user's legal disk copy). Fall back to IMG.
    ORIG = ROOT / "original"
    files = []
    if ORIG.exists() and any(ORIG.iterdir()):
        for fp in sorted(ORIG.iterdir()):
            if fp.is_file() and fp.suffix.lower() != ".md":
                data = fp.read_bytes()
                files.append((fp.name, len(data), 0, data))
        print(f"Source: original/ ({len(files)} files)\n")
    elif IMG.exists():
        files = list_img_files(IMG)
        print(f"Source: {IMG.name} ({len(files)} files)\n")
    else:
        print("FATAL: neither original/ nor IMG available")
        return

    # Get list of modules already in src/
    src_modules = set()
    if SRC.exists():
        for sub in SRC.iterdir():
            if sub.is_dir():
                src_modules.add(sub.name.upper())

    print(f"Modules already in src/: {len(src_modules)}\n")

    # Categorize
    in_pipeline = []
    in_pipeline_partial = []  # has src/ folder but maybe incomplete
    out_of_pipeline = []

    for name, size, cluster, data in files:
        # Strip extension to get module name
        mod = name.split(".")[0].upper()
        ext = name.split(".")[-1].upper() if "." in name else ""
        if mod == "README":
            continue
        if mod in src_modules:
            # Check if src/MOD has actual sources OR a layout.json.
            # NE modules with 0 code segments (resource-only, e.g. .FON) have
            # only layout.json + ne_meta.bin and no seg*.asm, but they ARE in
            # the byte-exact pipeline (build_from_source.py reproduces them
            # bit-perfect from the meta blob).
            src_dir = SRC / mod
            asm_files = list(src_dir.glob("seg*.asm")) + list(src_dir.glob("*.asm"))
            layout = src_dir / "layout.json"
            if asm_files or layout.exists():
                in_pipeline.append((name, size, identify_format(name, data)))
            else:
                in_pipeline_partial.append((name, size, identify_format(name, data)))
        else:
            out_of_pipeline.append((name, size, identify_format(name, data)))

    print("="*70)
    print(f"IN PIPELINE (src/ has .asm sources): {len(in_pipeline)} files")
    print("="*70)
    print(f"  Total: {sum(s for _, s, _ in in_pipeline)/1024:.1f} KB across {len(in_pipeline)} files")
    fmt_count = {}
    for n, s, f in in_pipeline:
        key = f.split(" (")[0]
        fmt_count[key] = fmt_count.get(key, 0) + 1
    for k, v in sorted(fmt_count.items()):
        print(f"    {k}: {v}")

    print()
    print("="*70)
    print(f"PARTIAL (src/MOD exists but no .asm sources yet): {len(in_pipeline_partial)} files")
    print("="*70)
    for n, s, f in in_pipeline_partial:
        print(f"  {n:<14} {s:>7}B  {f}")

    print()
    print("="*70)
    print(f"OUT OF PIPELINE (NO src/MOD at all): {len(out_of_pipeline)} files")
    print("="*70)
    for n, s, f in sorted(out_of_pipeline, key=lambda x: -x[1]):
        print(f"  {n:<14} {s:>7}B  {f}")
    total_oop = sum(s for _, s, _ in out_of_pipeline)
    print(f"\n  Total out-of-pipeline: {total_oop/1024:.1f} KB across {len(out_of_pipeline)} files")

    # Save extracted out-of-pipeline files for inspection
    print(f"\n  Saving out-of-pipeline files to {TMP.relative_to(ROOT)}/...")
    for name, size, cluster, data in files:
        mod = name.split(".")[0].upper()
        if mod in src_modules and (SRC / mod).exists() and \
           (list((SRC / mod).glob("seg*.asm")) or list((SRC / mod).glob("*.asm"))):
            continue
        if mod == "README":
            continue
        (TMP / name).write_bytes(data)


if __name__ == "__main__":
    main()
