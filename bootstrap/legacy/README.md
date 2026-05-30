# `bootstrap/legacy/` — Archived one-shot scripts

This directory holds **shell scripts that were used once** during the
reverse-engineering work and are kept here as a historical record rather
than as part of the production pipeline.

They are **not invoked** by `bootstrap/build_from_source.py`, the analyze
passes, the mod SDK, or the `justfile` workflow. Most are bash scripts
that assume a WSL/Ubuntu environment and may not run on Windows
PowerShell out of the box.

If you are looking for the production scripts, see the parent
`bootstrap/` directory and the README sections "Quick Start" / "Inicio
rápido" in the repo root.

## Why keep them?

- Reproducibility: the audit trail of how each milestone was reached.
- Forensics: if a future bug is bisected back to one of the original
  refactoring steps, the exact script that performed it is recoverable.
- Education: shows the messy reality of an exploratory pipeline before
  it consolidated into the current production tools.

## Roughly grouped by purpose

- `archive-v*.sh` / `archive-now.sh` / `archive-version.sh` — historical
  snapshot helpers that wrote tarballs into `versions/`.
- `bisect-*.sh` / `check-*.sh` / `compare-*.sh` / `debug-*.sh` /
  `inspect-*.sh` — one-shot diagnostics from individual debugging
  sessions (kernel rip search, IMG layout sanity checks, etc.).
- `try-*.sh` — early attempts at building / linking individual modules
  (`try-build-kernel.sh`, `try-link-kernel.sh`, …) before the unified
  `build_from_source.py` pipeline existed.
- `sanitize-*.sh` / `park-cleanroom.sh` / `reset-and-next.sh` — flow
  utilities from the abandoned clean-room attempt (see
  `parked/cleanroom-01/`).
- `status-summary.sh` / `sample-candidates.sh` /
  `read-upstream-notes.sh` — research helpers, superseded by
  `bootstrap/survey_pipeline_gap.py` and the `analyze/` passes.
- `ghidra-paths.sh` / `git-dry-run.sh` — workspace helpers.
- `extract-sdk-docs.sh` — extracted SDK header docs into `inc/`.

If any of these still has utility for you, copy it back to
`bootstrap/` and adjust paths.
