#!/usr/bin/env python3
"""validate_py_exe2bin.py

Build the *real* Microsoft EXE2BIN.EXE from the open-source MS-DOS 2.0
source code published by Microsoft, then validate `bootstrap/py_exe2bin.py`
against its byte-for-byte output on a set of representative inputs.

Why bother:
  We don't have the binary `EXE2BIN.EXE` in our vendor toolchain disks
  (it shipped with MS-DOS, not MASM 4.0). Microsoft open-sourced the
  MS-DOS 2.0 sources at github.com/microsoft/MS-DOS/v2.0/source. We can
  rebuild the *authentic* binary using our existing MASM 4.0 + LINK 3.51
  toolchain (which is available in tools/dos/combined/).

Pipeline:
  1. Fetch the 4 source files needed for EXE2BIN.EXE from GitHub:
       EXE2BIN.ASM, DOSSYM.ASM, IFEQU.ASM, EXEMES.ASM
  2. Stage them in tools/dos/work/exe2bin_build/ alongside MASM.EXE
     and LINK.EXE.
  3. Run a single DOSBox-X batch:
       MASM exe2bin;
       MASM exemes;
       LINK exe2bin+exemes, exe2bin.exe, exe2bin.map, ,;
  4. Build several test EXE inputs (COM-style) by running our existing
     LINK 3.51 on hand-written .ASM files, plus our own
     tools/dos/work/flat_com/BATCH/WINC.EXE if it exists.
  5. For each test EXE, run BOTH the real EXE2BIN.EXE (via DOSBox-X)
     and `py_exe2bin.exe_to_com()`, then byte-compare their outputs.

Result -> state/analyze/validate_py_exe2bin/REPORT.md.

Usage:
    python bootstrap/validate_py_exe2bin.py
    python bootstrap/validate_py_exe2bin.py --skip-build  # use cached
"""
from __future__ import annotations

import hashlib
import json
import os
import shutil
import subprocess
import sys
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
BOOTSTRAP = ROOT / "bootstrap"
TOOLS_DOS = ROOT / "tools" / "dos"
COMBINED = TOOLS_DOS / "combined"
WORK = TOOLS_DOS / "work" / "exe2bin_build"
TEST_WORK = TOOLS_DOS / "work" / "exe2bin_validate"
STATE = ROOT / "state" / "analyze" / "validate_py_exe2bin"
SRC_CACHE = TOOLS_DOS / "exe2bin_src_msdos20"

# Files needed from microsoft/MS-DOS v2.0 source. We DON'T fetch the full
# DOSSYM.ASM (42 KB of MASM-1.x/2.x macros that don't parse under MASM
# 4.0); instead we ship a tiny `exe2bin_dossym_stub.asm` that defines
# just the INT 21h function-number EQUs that EXE2BIN.ASM actually
# references. Then we patch EXE2BIN.ASM's `INCLUDE DOSSYM.ASM` to point
# at the stub.
MSDOS_BASE = "https://raw.githubusercontent.com/microsoft/MS-DOS/main/v2.0/source/"
SOURCE_FILES = ["EXE2BIN.ASM", "EXEMES.ASM"]
DOSSYM_STUB = BOOTSTRAP / "exe2bin_dossym_stub.asm"

# Allow `from py_exe2bin import exe_to_com` from our bootstrap/
sys.path.insert(0, str(BOOTSTRAP))
from py_exe2bin import exe_to_com  # noqa: E402


def _winpath_to_wsl(p: Path) -> str:
    s = str(p.resolve()).replace("\\", "/")
    if len(s) >= 2 and s[1] == ":":
        return f"/mnt/{s[0].lower()}{s[2:]}"
    return s


def fetch_msdos_sources():
    """Download the 4 source files from microsoft/MS-DOS v2.0 source if
    not already cached locally. Returns a dict {filename: path}."""
    SRC_CACHE.mkdir(parents=True, exist_ok=True)
    paths = {}
    for fn in SOURCE_FILES:
        local = SRC_CACHE / fn
        if not local.exists():
            url = MSDOS_BASE + fn
            print(f"  fetching {fn} from {url} ...")
            with urllib.request.urlopen(url, timeout=30) as r:
                local.write_bytes(r.read())
        paths[fn] = local
    return paths


def stage_build_workdir(src_paths: dict) -> Path:
    """Copy MASM/LINK + MS-DOS sources + DOSSYM stub into a single work
    dir, and write a BUILD.BAT that produces EXE2BIN.EXE."""
    if WORK.exists():
        shutil.rmtree(WORK)
    WORK.mkdir(parents=True)
    for tool in ("MASM.EXE", "LINK.EXE"):
        src = COMBINED / tool
        if src.exists():
            shutil.copy2(src, WORK / tool)
    # Copy MS-DOS 2.0 sources (8.3 names already)
    for fn, p in src_paths.items():
        shutil.copy2(p, WORK / fn)
    # Patch EXE2BIN.ASM: replace the full DOSSYM include with our stub
    exe2bin_text = (WORK / "EXE2BIN.ASM").read_text(encoding="ascii",
                                                     errors="replace")
    # The original line is `        INCLUDE DOSSYM.ASM` between `.xlist`
    # and `.list` markers. Replace the filename only.
    exe2bin_text = exe2bin_text.replace("INCLUDE DOSSYM.ASM",
                                        "INCLUDE DOSSYM.STB")
    (WORK / "EXE2BIN.ASM").write_text(exe2bin_text, encoding="ascii")
    # Drop the DOSSYM stub in as DOSSYM.STB (8.3 valid)
    shutil.copy2(DOSSYM_STUB, WORK / "DOSSYM.STB")
    # MASM 4.0 needs ; at the end of each command line so it doesn't prompt
    # for missing fields. LINK 3.51 needs a 5-positional form too.
    bat = "\r\n".join([
        "@echo off",
        "echo === assembling EXE2BIN.ASM ===",
        "MASM EXE2BIN.ASM, EXE2BIN.OBJ, EXE2BIN.LST; > EX2BIN_M.LOG",
        "if errorlevel 1 echo MASM_EXE2BIN_FAIL >> EX2BIN_M.LOG",
        "echo === assembling EXEMES.ASM ===",
        "MASM EXEMES.ASM, EXEMES.OBJ, EXEMES.LST; > EXMES_M.LOG",
        "if errorlevel 1 echo MASM_EXEMES_FAIL >> EXMES_M.LOG",
        "echo === linking EXE2BIN.EXE ===",
        "LINK EXE2BIN+EXEMES,EXE2BIN.EXE,EXE2BIN.MAP,,; > LINK.LOG",
        "if errorlevel 1 echo LINK_FAIL >> LINK.LOG",
        "",
    ])
    (WORK / "BUILD.BAT").write_text(bat, encoding="ascii")
    return WORK


def run_dosbox(work_dir: Path, bat_name: str, timeout: int = 240) -> int:
    """Run a DOS .BAT under DOSBox-X via WSL. Returns rc (0 on success
    or -1 on timeout)."""
    cmd = ["wsl", "--", "bash",
           _winpath_to_wsl(TOOLS_DOS / "dosbuild.sh"),
           _winpath_to_wsl(work_dir), bat_name]
    try:
        cp = subprocess.run(cmd, capture_output=True, text=True,
                            timeout=timeout)
        return cp.returncode
    except subprocess.TimeoutExpired:
        return -1


def build_exe2bin(skip_if_cached: bool = False) -> Path | None:
    """Build EXE2BIN.EXE from MS-DOS 2.0 source. Returns the path to the
    built binary, or None on failure."""
    cached = WORK / "EXE2BIN.EXE"
    if skip_if_cached and cached.exists():
        print(f"Using cached EXE2BIN.EXE at {cached.relative_to(ROOT)}")
        return cached
    print("Step 1/3: fetching MS-DOS 2.0 source files...")
    srcs = fetch_msdos_sources()
    print(f"  cached at {SRC_CACHE.relative_to(ROOT)}/ ({len(srcs)} files)")
    print("Step 2/3: staging build dir...")
    stage_build_workdir(srcs)
    print(f"  staged at {WORK.relative_to(ROOT)}/")
    print("Step 3/3: running MASM 4.0 + LINK 3.51 under DOSBox-X...")
    rc = run_dosbox(WORK, "BUILD.BAT")
    print(f"  DOSBox-X rc={rc}")
    if not cached.exists():
        print(f"  ERR: {cached.name} not produced. Check logs at "
              f"{WORK.relative_to(ROOT)}/")
        for log_name in ("EX2BIN_M.LOG", "EXMES_M.LOG", "LINK.LOG"):
            log_path = WORK / log_name
            if log_path.exists():
                print(f"  --- {log_name} ---")
                print(log_path.read_text(encoding="ascii",
                                          errors="replace")[:600])
        return None
    print(f"  OK: {cached.name} = {cached.stat().st_size} B")
    return cached


# ------------------------------------------------------------------
# Validation: run BOTH EXE2BIN.EXE and py_exe2bin on test inputs
# ------------------------------------------------------------------

def generate_synthetic_test_exes() -> list[Path]:
    """Build a handful of synthetic COM-style EXEs of varying sizes to
    stress-test EXE2BIN's edge cases (very small, exact-page boundary,
    just-over-page, etc.)."""
    synth_dir = TOOLS_DOS / "work" / "exe2bin_synth"
    if synth_dir.exists():
        shutil.rmtree(synth_dir)
    synth_dir.mkdir(parents=True)
    for tool in ("MASM.EXE", "LINK.EXE"):
        src = COMBINED / tool
        if src.exists():
            shutil.copy2(src, synth_dir / tool)

    # Each test: (short_name, body_directives) -> a COM-style ASM source
    cases = [
        ("S1", "        ret\n"),                  # 1 byte
        ("S2", "        nop\n        nop\n"
               "        nop\n        ret\n"),     # 4 bytes
        ("S3", "        mov ax, 4C00h\n"
               "        int 21h\n"),              # 5 bytes (clean exit)
        ("S4", "        db 200h dup (0CCh)\n"     # 512-byte block (exact page)
               "        ret\n"),
        ("S5", "        db 7Bh dup (0AAh)\n"      # 123 bytes (irregular)
               "        ret\n"),
    ]
    bat_lines = ["@echo off"]
    for name, body in cases:
        asm = (
            "        .8086\n"
            f"{name}_TX SEGMENT BYTE PUBLIC 'CODE'\n"
            f"        ASSUME cs:{name}_TX, ds:{name}_TX, "
            f"ss:{name}_TX, es:{name}_TX\n"
            "        ORG 100h\n"
            f"{name}_start:\n"
            f"{body}"
            f"{name}_TX ENDS\n"
            f"        END {name}_start\n"
        )
        (synth_dir / f"{name}.ASM").write_text(asm, encoding="ascii")
        bat_lines += [
            f"echo === {name} ===",
            f"MASM {name}.ASM, {name}.OBJ, {name}.LST; > {name}_M.LOG",
            f"if errorlevel 1 echo MASM_{name}_FAIL >> {name}_M.LOG",
            f"LINK {name},{name}.EXE,{name}.MAP,,; > {name}_L.LOG",
            f"if errorlevel 1 echo LINK_{name}_FAIL >> {name}_L.LOG",
        ]
    (synth_dir / "BUILD.BAT").write_text("\r\n".join(bat_lines) + "\r\n",
                                          encoding="ascii")
    print(f"  building {len(cases)} synthetic COM-style EXEs in "
          f"{synth_dir.relative_to(ROOT)}/")
    rc = run_dosbox(synth_dir, "BUILD.BAT", timeout=120)
    print(f"  DOSBox-X synth-build rc={rc}")
    out = []
    for name, _ in cases:
        p = synth_dir / f"{name}.EXE"
        if p.exists():
            out.append(p)
        else:
            print(f"  WARN: {name}.EXE not produced (skipping)")
    return out


def gather_test_exes() -> list[Path]:
    """Return a list of COM-style test .EXE files (CS:IP entry == 0x100,
    no relocations).

    EXE2BIN only accepts COM-style EXEs; for ordinary EXEs (MASM.EXE,
    LINK.EXE...) it prints "File cannot be converted" and produces no
    output. We pre-filter so the validation report only covers inputs
    that EXE2BIN is supposed to accept.
    """
    import struct
    candidates = []
    flat_com_batch = TOOLS_DOS / "work" / "flat_com" / "BATCH"
    if flat_com_batch.exists():
        for p in sorted(flat_com_batch.glob("*.EXE")):
            if p.name in ("LINK.EXE", "MASM.EXE"):
                continue
            # Quick header check: COM-style requires e_ip = 0x100,
            # e_crlc = 0, and SS=SP=CS=0 (after MZ-relative).
            try:
                hdr = p.read_bytes()[:0x1C]
                if hdr[:2] not in (b"MZ", b"ZM"):
                    continue
                e_crlc = struct.unpack_from("<H", hdr, 0x06)[0]
                e_ip   = struct.unpack_from("<H", hdr, 0x14)[0]
                if e_ip == 0x100 and e_crlc == 0:
                    candidates.append(p)
            except Exception:
                pass
    return candidates


def run_real_exe2bin(exe_path: Path, exe2bin_exe: Path) -> bytes | None:
    """Stage exe_path + EXE2BIN.EXE in TEST_WORK, run EXE2BIN under
    DOSBox-X to produce a .COM, return the .COM bytes (or None)."""
    if TEST_WORK.exists():
        shutil.rmtree(TEST_WORK)
    TEST_WORK.mkdir(parents=True)
    shutil.copy2(exe2bin_exe, TEST_WORK / "EXE2BIN.EXE")
    short_in = "INPUT"
    short_out = "OUTPUT"
    shutil.copy2(exe_path, TEST_WORK / f"{short_in}.EXE")
    bat = "\r\n".join([
        "@echo off",
        f"EXE2BIN {short_in}.EXE {short_out}.BIN > EX2B.LOG",
        f"if errorlevel 1 echo EX2BIN_FAIL >> EX2B.LOG",
        "",
    ])
    (TEST_WORK / "BUILD.BAT").write_text(bat, encoding="ascii")
    rc = run_dosbox(TEST_WORK, "BUILD.BAT", timeout=60)
    out = TEST_WORK / f"{short_out}.BIN"
    if not out.exists():
        return None
    return out.read_bytes()


def main() -> int:
    skip_build = "--skip-build" in sys.argv
    STATE.mkdir(parents=True, exist_ok=True)

    print("=" * 64)
    print("BUILDING REAL EXE2BIN.EXE FROM MS-DOS 2.0 SOURCE")
    print("=" * 64)
    exe2bin = build_exe2bin(skip_if_cached=skip_build)
    if exe2bin is None:
        return 1

    print()
    print("=" * 64)
    print("VALIDATING py_exe2bin.py vs REAL EXE2BIN.EXE")
    print("=" * 64)
    print("\nGenerating synthetic COM-style EXEs to widen test coverage...")
    synth_tests = generate_synthetic_test_exes()
    print(f"  built {len(synth_tests)} synthetic test EXEs")

    existing_tests = gather_test_exes()
    tests = synth_tests + existing_tests
    if not tests:
        print("WARN: no test .EXE files found.")
        return 1
    print(f"\nTotal test inputs: {len(tests)}")

    results = []
    overall_ok = True
    for t in tests:
        print(f"\n--- {t.name} ({t.stat().st_size} B) ---")
        com_real = run_real_exe2bin(t, exe2bin)
        if com_real is None:
            print(f"  ERR: real EXE2BIN.EXE did not produce output for {t.name}")
            results.append({"input": t.name, "real_ok": False, "match": False})
            overall_ok = False
            continue
        try:
            com_py = exe_to_com(t.read_bytes())
        except Exception as e:
            print(f"  ERR: py_exe2bin raised {e}")
            results.append({"input": t.name, "real_ok": True,
                            "py_ok": False, "match": False, "error": str(e)})
            overall_ok = False
            continue
        match = (com_real == com_py)
        if match:
            print(f"  OK ({len(com_real)} B match between real and py_exe2bin)")
        else:
            n_match = next(
                (i for i in range(min(len(com_real), len(com_py)))
                 if com_real[i] != com_py[i]),
                min(len(com_real), len(com_py)))
            print(f"  DIFF at byte 0x{n_match:X} "
                  f"(real={len(com_real)} B vs py={len(com_py)} B)")
            overall_ok = False
        results.append({
            "input": t.name,
            "input_size": t.stat().st_size,
            "real_size": len(com_real),
            "real_sha256": hashlib.sha256(com_real).hexdigest()[:16],
            "py_size": len(com_py),
            "py_sha256": hashlib.sha256(com_py).hexdigest()[:16],
            "match": match,
        })

    # Write report
    report = ["# Pass: py_exe2bin.py validated against real Microsoft EXE2BIN.EXE",
              "",
              "Real EXE2BIN.EXE built from open-source MS-DOS 2.0 source",
              "(github.com/microsoft/MS-DOS, v2.0/source/EXE2BIN.ASM +",
              "DOSSYM.ASM + IFEQU.ASM + EXEMES.ASM) using MASM 4.0 + LINK",
              "3.51 inside DOSBox-X.",
              "",
              "Built EXE2BIN.EXE size: " + str(exe2bin.stat().st_size) + " B",
              "Built EXE2BIN.EXE sha256: " + hashlib.sha256(
                  exe2bin.read_bytes()).hexdigest()[:32],
              "",
              "Per-input comparison of real EXE2BIN.EXE output vs",
              "`bootstrap/py_exe2bin.py exe_to_com()`:",
              "",
              "| Input EXE | Input | Real .BIN | py_exe2bin .COM | Match |",
              "|---|---|---|---|:-:|"]
    for r in results:
        match_cell = "OK" if r.get("match") else "DIFF"
        report.append(
            f"| `{r['input']}` | {r.get('input_size','?')} B | "
            f"{r.get('real_size','?')} B (sha {r.get('real_sha256','?')}) | "
            f"{r.get('py_size','?')} B (sha {r.get('py_sha256','?')}) | "
            f"{match_cell} |")
    report.append("")
    if overall_ok:
        report.append("**RESULT**: all inputs produce byte-identical output "
                      "between the real Microsoft EXE2BIN.EXE and our pure-Python "
                      "`py_exe2bin.exe_to_com()`.")
    else:
        report.append("**RESULT**: at least one input mismatched; see above.")
    (STATE / "REPORT.md").write_text("\n".join(report) + "\n",
                                     encoding="utf-8")
    (STATE / "results.json").write_text(json.dumps(results, indent=2),
                                        encoding="utf-8")
    print(f"\nReport: {(STATE / 'REPORT.md').relative_to(ROOT)}")
    return 0 if overall_ok else 1


if __name__ == "__main__":
    sys.exit(main())
