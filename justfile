## win103-byteexact: tasks
##
## Usage: `just <task>`. `just` with no args lists everything.
## Assumes `python` is the project venv (`.venv\Scripts\python.exe` on Windows
## or `.venv/bin/python` on Linux/macOS). Activate the venv first.

# Default: list tasks
default:
    @just --list

# ---- Setup ------------------------------------------------------------------

# Install Python dependencies (capstone + keystone)
deps:
    pip install -r requirements.txt

# Install vintage Microsoft toolchain (MASM 4.0 + LINK 3.51) under tools/dos/
install-toolchain:
    bash bootstrap/install-legacy-toolchain.sh

# Install DOSBox-X (runtime + verifier)
install-dosbox-x:
    bash bootstrap/install-dosbox-x.sh

# ---- Pipeline ---------------------------------------------------------------

# Extract NE segments from original/<MOD>.{EXE,DRV,...} into src/
extract:
    python bootstrap/extract_segments.py

# Disassemble each segment into human-readable .asm
disasm:
    python bootstrap/disassemble_segments.py

# Build all 92 binaries byte-exact from src/ (db mode = Python authority)
build:
    python bootstrap/build_from_source.py

# Build via the real MASM 4.00 toolchain under DOSBox-X (requires vendor/masm400)
build-masm:
    python bootstrap/build_from_source.py --mode=masm

# Re-extract + re-disassemble + rebuild end-to-end
rebuild: extract disasm build

# ---- Analysis ---------------------------------------------------------------

# Run the documentation passes (1, 1b, 2, 3, 4, 5, 6, 7) -> docs/analysis/
analyze-docs:
    python bootstrap/analyze/pass1_patterns.py
    python bootstrap/analyze/pass1b_discover.py
    python bootstrap/analyze/pass2_callgraph.py
    python bootstrap/analyze/pass3_describe.py
    python bootstrap/analyze/pass4_annotate.py
    python bootstrap/analyze/pass5_index.py
    python bootstrap/analyze/pass6_visualize.py
    python bootstrap/analyze/pass7_enrich_deps.py

# Run the MASM 4.00 byte-exact verification pipeline (passes 23-30).
# Requires DOSBox-X + MASM 4.00 under vendor/masm400/. Takes hours on cold run.
analyze-verify:
    python bootstrap/analyze/pass23_find_ministubs.py
    python bootstrap/analyze/pass25_universal_extract.py
    python bootstrap/analyze/pass27_internal_funcs.py
    python bootstrap/analyze/pass30_full_segment.py
    python bootstrap/analyze/pass24_batch_masm_verify.py
    python bootstrap/analyze/pass26_module_coverage.py
    python bootstrap/analyze/pass28_final_report.py

# Cross-reference starfrost's reference symbols against our src/ (pass 21)
analyze-symbols:
    python bootstrap/analyze/pass21_starfrost_symbols.py

# Survey the format of every src/<MOD>/seg*.asm (db vs instruction lines)
survey-asm:
    python bootstrap/survey_asm_format.py

# Survey gaps between original/ and src/ pipeline coverage
survey-pipeline:
    python bootstrap/survey_pipeline_gap.py

# ---- Mods -------------------------------------------------------------------

# List available mods
mods-list:
    python bootstrap/mod_system.py list

# Apply a mod by name (e.g. `just mod-apply elias-windows`)
mod-apply name:
    python bootstrap/mod_system.py apply {{name}}

# Revert any applied mod
mod-revert:
    python bootstrap/mod_system.py revert

# End-to-end build + patch + inject + launch DOSBox-X (showcase)
launch:
    python bootstrap/launch_elias_win103.py

# ---- Quality ----------------------------------------------------------------

# Run the test suite
test:
    pytest -q tests/

# ---- Cleanup ----------------------------------------------------------------

# Remove caches and tmp/
clean:
    rm -rf logs/* tmp/ out/ .pytest_cache __pycache__

# ---- Verify  ----------------------------------------------------------------

# Run smart_build (always available, no DOSBox needed) and verify 92/92
verify:
    python bootstrap/smart_build.py
