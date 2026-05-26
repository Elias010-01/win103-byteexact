#!/bin/bash
# run_verify_flat_com.sh
#
# Convenience wrapper: stage the MASM 4.00 jobs for WIN.COM, WIN100.BIN
# and WINOLDAP.MOD, then invoke DOSBox-X DIRECTLY (not through Python's
# subprocess.run). This way you see real-time progress in your terminal
# instead of a Python script appearing to hang while DOSBox-X spins up
# under the hood.
#
# Usage:  bash bootstrap/analyze/run_verify_flat_com.sh
#         bash bootstrap/analyze/run_verify_flat_com.sh --with-link
#
# Requirements: WSL with mtools (only used by other scripts), DOSBox-X
# accessible as `dosbox-x`, the MASM toolchain at tools/dos/combined/.
#
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

WITH_LINK_FLAG=""
if [ "${1:-}" = "--with-link" ]; then
    WITH_LINK_FLAG="--with-link"
fi

# Stage 1 — Python script writes BUILD.BAT and per-segment .ASM into
# tools/dos/work/flat_com/BATCH/, but does NOT invoke DOSBox-X.
# (We monkey-patch run_dos_batch to a no-op via env var.)
echo "[1/3] Planning jobs (Python, no DOSBox-X)..."
WIN103_VERIFY_DRYRUN=1 python3 bootstrap/analyze/verify_flat_com_via_masm.py \
    $WITH_LINK_FLAG WIN WIN100 WINOLDAP || true

WORK="tools/dos/work/flat_com/BATCH"
if [ ! -d "$WORK" ]; then
    echo "ERR: $WORK not staged"
    exit 2
fi

echo
echo "[2/3] Running DOSBox-X directly (you'll see MASM output below)..."
echo "      $(ls -1 "$WORK"/*.ASM 2>/dev/null | wc -l) ASM files staged."
ls -lh "$WORK"/*.ASM "$WORK"/BUILD.BAT 2>/dev/null | head -10

bash tools/dos/dosbuild.sh "$WORK" BUILD.BAT
echo "      DOSBox-X done."

echo
echo "[3/3] Verifying OBJ outputs..."
WIN103_VERIFY_BUILDDONE=1 python3 bootstrap/analyze/verify_flat_com_via_masm.py \
    $WITH_LINK_FLAG WIN WIN100 WINOLDAP

echo
echo "Report: state/analyze/verify_flat_com/REPORT.md"
cat state/analyze/verify_flat_com/REPORT.md
