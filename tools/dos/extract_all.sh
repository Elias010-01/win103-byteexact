#!/bin/bash
# Extract every floppy image into tools/dos/extracted/<diskname>/
set -e
cd "$(dirname "$0")"
mkdir -p extracted

extract_img() {
    local img="$1"
    local name="${img%.img}"
    local out="extracted/$name"
    mkdir -p "$out"
    echo "[*] Extracting $img -> $out/"
    # mcopy preserves filenames. -i specifies image. -s recurses. -n=overwrite without ask.
    mcopy -i "$img" -s -n -m '::*' "$out/" 2>/dev/null || true
}

for img in Masm40.img disk01.img disk02.img disk03.img disk04.img disk05.img disk06.img disk07.img disk08.img; do
    if [ -f "$img" ]; then
        extract_img "$img"
    fi
done

echo ""
echo "=== Combined: all binaries flat ==="
mkdir -p combined
# Copy every .EXE, .COM, .OBJ, .LIB, .H, .INC, .ASM, .C, .DEF, .RC, .ICO from any disk
find extracted -type f \( -iname "*.exe" -o -iname "*.com" -o -iname "*.obj" -o -iname "*.lib" \
                          -o -iname "*.h" -o -iname "*.inc" -o -iname "*.asm" -o -iname "*.c" \
                          -o -iname "*.def" -o -iname "*.rc" -o -iname "*.ico" -o -iname "*.bat" \) \
     -exec cp -n {} combined/ \;
echo "Total in combined/:"
ls combined | wc -l
echo ""
echo "Key tools:"
ls combined | grep -iE '^(masm|cl|c1|c2|c3|c3l|link|link4|lib|exemod|exepack|cmacros)' | sort
echo ""
echo "Sample LIBs:"
ls combined | grep -iE '\.lib$' | sort
