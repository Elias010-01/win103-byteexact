#!/bin/bash
# fetch.sh - Download MSC 4.0 + MASM 4.0 from archive.org and extract.
# Total download: ~1.3 MB. Run once per developer machine.
#
# Requires: curl, unzip, mtools (mcopy)
set -e
cd "$(dirname "$0")"

echo "[1/4] Downloading MASM 4.0 (153 KB)..."
[ -f masm40.zip ] || curl -fL --max-time 120 -o masm40.zip \
    'https://archive.org/download/microsoft-macro-assembler-4.0-5.25.-7z/masm40.zip'

echo "[2/4] Downloading MSC 4.0 (1.1 MB)..."
[ -f msc40.zip ] || curl -fL --max-time 300 -o msc40.zip \
    'https://archive.org/download/microsoft-c-compiler-4.0-5.25-360k.-7z/Microsoft%20C%20Compiler%204.0.zip'

echo "[3/4] Extracting floppy images..."
[ -f Masm40.img ] || unzip -o masm40.zip
[ -f disk01.img ] || unzip -o msc40.zip

echo "[4/4] Extracting floppy contents..."
bash extract_all.sh

echo ""
echo "Done. Try: bash test_full.sh"
