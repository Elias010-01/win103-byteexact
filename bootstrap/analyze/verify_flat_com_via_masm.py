#!/usr/bin/env python3
"""verify_flat_com_via_masm.py

Round-trip verifier for any "raw bytes" module in the byte-exact pipeline:
flat .COM (WIN.COM), full-segment NE binaries that pass24 doesn't yet
cover (WIN100.BIN, WINOLDAP.MOD), or any other src/<MOD>/seg1.asm whose
contents are pure `db` directives.

Pipeline per module:
  1. Take src/<MOD>/seg1.asm (raw `db` bytes wrapped in a SEGMENT).
  2. Add minimal MASM 4.0 directives to make a complete `.ASM` source.
  3. Assemble with MASM 4.0 inside DOSBox-X (using tools/dos/dosbuild.sh,
     same mechanism as pass24).
  4. Parse the OBJ file's LEDATA records; bytes must match the original
     bytes embedded in the `db` body exactly.

This is the MASM 4.00 "via compilador" demonstration: the original 1985
Microsoft assembler, run on our reconstructed source, produces bytes
byte-identical to the bytes that shipped on the floppies in 1986.

(Optional --with-link flag also runs LINK + py_exe2bin to demonstrate
the full historical MASM->LINK->EXE2BIN->COM chain. Skipped by default
because LINK 3.6 sometimes hangs under DOSBox-X on unusual sources, and
the OBJ path is sufficient for the byte-exact claim.)

Result -> state/analyze/verify_flat_com/REPORT.md.

Usage:
    python bootstrap/analyze/verify_flat_com_via_masm.py [MOD ...]
    python bootstrap/analyze/verify_flat_com_via_masm.py --with-link WIN

Default modules: WIN, WIN100, WINOLDAP.
"""
from __future__ import annotations

import hashlib
import json
import shutil
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
SRC = REPO / "src"
ORIG = REPO / "original"
TOOLS_DOS = REPO / "tools" / "dos"
COMBINED = TOOLS_DOS / "combined"
WORK_ROOT = TOOLS_DOS / "work" / "flat_com"
STATE = REPO / "state" / "analyze" / "verify_flat_com"
STATE.mkdir(parents=True, exist_ok=True)
WORK_ROOT.mkdir(parents=True, exist_ok=True)

# Re-use the OMF LEDATA parser already in build_from_source.py
sys.path.insert(0, str(REPO / "bootstrap"))
from build_from_source import parse_obj_ledata  # noqa: E402

# Re-use the Python EXE2BIN equivalent
from py_exe2bin import exe_to_com  # noqa: E402


# ---------------------------------------------------------------------------
# 1. Build a MASM-friendly .ASM from src/<MOD>/seg1.asm
# ---------------------------------------------------------------------------

def make_masm_source(mod_name: str, seg_index: int, raw_seg_asm: str,
                     com_style: bool = False) -> str:
    """Wrap the raw `db ...` body of seg<N>.asm in proper MASM 4.0 directives.

    raw_seg_asm is the contents of src/<MOD>/seg<seg_index>.asm. The body
    (db lines) is extracted between the existing SEGMENT/ENDS lines and
    re-wrapped with a clean MASM 4.0 preamble.

    com_style=True only used for WIN.COM-style sources (single seg, ORG
    100h). For ordinary segment-level verification leave it False.
    """
    # Extract the body (everything between SEGMENT line and ENDS line).
    target_seg_prefix = f"{mod_name.upper()}_SEG{seg_index} SEGMENT"
    target_ends_prefix = f"{mod_name.upper()}_SEG{seg_index} ENDS"
    lines = raw_seg_asm.splitlines()
    body = []
    in_seg = False
    for ln in lines:
        s = ln.strip()
        if s.upper().startswith(target_seg_prefix):
            in_seg = True
            continue
        if s.upper().startswith(target_ends_prefix):
            in_seg = False
            break
        if in_seg:
            body.append(ln)
    if not body:
        raise RuntimeError(
            f"could not extract db body from seg{seg_index}.asm of {mod_name} "
            f"(looked for prefix '{target_seg_prefix}')")

    seg_name = f"{mod_name.upper()}_TX{seg_index}"
    out = []
    out.append(f"; AUTO-GENERATED for byte-exact MASM 4.0 verification "
               f"of {mod_name} segment {seg_index}")
    out.append("        .8086")
    if com_style:
        out.append(f"{seg_name} SEGMENT BYTE PUBLIC 'CODE'")
        out.append(f"        ASSUME cs:{seg_name}, ds:{seg_name}, "
                   f"ss:{seg_name}, es:{seg_name}")
        out.append("        ORG 100h")
        out.append(f"{mod_name.lower()}_start:")
    else:
        out.append(f"{seg_name} SEGMENT BYTE PUBLIC 'CODE'")
    out.extend(body)
    out.append(f"{seg_name} ENDS")
    if com_style:
        out.append(f"        END {mod_name.lower()}_start")
    else:
        out.append("        END")
    out.append("")
    return "\n".join(out)


# ---------------------------------------------------------------------------
# 2. Run MASM (and optionally LINK) inside DOSBox-X via tools/dos/dosbuild.sh
# ---------------------------------------------------------------------------

def _winpath_to_wsl(p: Path) -> str:
    s = str(p).replace("\\", "/")
    if len(s) >= 2 and s[1] == ":":
        s = "/mnt/" + s[0].lower() + s[2:]
    return s


def run_dos_batch(work_dir: Path, bat_name: str) -> int:
    """Invoke tools/dos/dosbuild.sh under WSL on (work_dir, bat_name).

    Returns the dosbox-x exit status (always 0 because dosbuild.sh wraps
    in `|| true`; check tool .LOG / output files for actual results).
    """
    dosbuild = TOOLS_DOS / "dosbuild.sh"
    cmd = ["wsl", "--", "bash",
           _winpath_to_wsl(dosbuild),
           _winpath_to_wsl(work_dir),
           bat_name]
    try:
        cp = subprocess.run(cmd, capture_output=True, text=True,
                            timeout=480)
        return cp.returncode
    except subprocess.TimeoutExpired:
        return -1


def stage_combined_workdir(jobs: list[dict]) -> Path:
    """Set up ONE work dir for ALL build jobs and write a single BUILD.BAT
    that processes them sequentially under a single DOSBox-X session.

    Each job in `jobs` is a dict {short, asm_text, link_step:bool}.
    Returns the path to the work dir.
    """
    wdir = WORK_ROOT / "BATCH"
    if wdir.exists():
        shutil.rmtree(wdir)
    wdir.mkdir(parents=True)

    for tool in ("MASM.EXE", "LINK.EXE"):
        src = COMBINED / tool
        if src.exists():
            shutil.copy2(src, wdir / tool)

    bat_lines = ["@echo off"]
    for job in jobs:
        short = job["short"]
        (wdir / f"{short}.ASM").write_text(job["asm_text"], encoding="ascii")
        bat_lines.append(f"echo === {short} ===")
        # CRITICAL: trailing ';' tells MASM 4.0 to skip all prompts. Without
        # it MASM blocks waiting for stdin (e.g. "Cross-reference [NUL.CRF]:"),
        # which under DOSBox-X causes the whole batch to hang.
        bat_lines.append(
            f"MASM {short}, {short}.OBJ, {short}.LST; > {short}_M.LOG")
        bat_lines.append(
            f"if errorlevel 1 echo MASM_FAIL >> {short}_M.LOG")
        if job.get("link_step"):
            # LINK 3.6 also prompts; use ';' to take defaults for remaining
            # fields. Provide all 5 positional args followed by ';'.
            bat_lines.append(
                f"LINK {short},{short}.EXE,{short}.MAP,,; > {short}_L.LOG")
            bat_lines.append(
                f"if errorlevel 1 echo LINK_FAIL >> {short}_L.LOG")
    bat_lines.append("")
    (wdir / "BUILD.BAT").write_text("\r\n".join(bat_lines), encoding="ascii")
    return wdir


# ---------------------------------------------------------------------------
# 3. Per-module verification
# ---------------------------------------------------------------------------

def plan_jobs_for_module(mod_name: str, with_link: bool):
    """Read src/<mod_name>/layout.json and return (jobs, ctx). On error,
    returns ([], ctx) with ctx['errors'] populated.

    Each `job` is a dict ready to feed `stage_combined_workdir`:
      {short, asm_text, link_step, mod_name, seg_index, target_bytes,
       is_com_full}.

    `ctx` is a partially-filled result dict; verify pass populates segments.
    """
    layout_path = SRC / mod_name / "layout.json"
    if not layout_path.exists():
        return [], {"module": mod_name, "errors": [f"missing {layout_path}"]}
    layout = json.loads(layout_path.read_text())
    original_basename = layout["original_name"]
    orig_path = ORIG / original_basename
    if not orig_path.exists():
        return [], {"module": mod_name,
                    "errors": [f"missing {orig_path}"]}
    orig_bytes = orig_path.read_bytes()

    ctx = {
        "module": mod_name,
        "original": original_basename,
        "kind": layout.get("kind", "ne"),
        "original_size": len(orig_bytes),
        "original_sha256": hashlib.sha256(orig_bytes).hexdigest(),
        "segments": [],
        "all_segments_match": True,
        "exe2bin_path_match": None,
        "orig_bytes": orig_bytes,  # consumed by verify pass; stripped before serialization
        "errors": [],
    }

    jobs = []
    # OBJ-path jobs
    for seg in layout["segments"]:
        idx = seg["index"]
        fo = seg["file_off"]
        sz = seg["data_len"]
        seg_path = SRC / mod_name / f"seg{idx}.asm"
        if not seg_path.exists():
            ctx["errors"].append(f"missing {seg_path}")
            ctx["all_segments_match"] = False
            continue
        raw_seg = seg_path.read_text(encoding="ascii", errors="replace")
        try:
            asm_text = make_masm_source(mod_name, idx, raw_seg,
                                        com_style=False)
        except Exception as e:
            ctx["errors"].append(f"seg{idx} src build error: {e}")
            ctx["all_segments_match"] = False
            continue
        short = (mod_name.upper()[:6] + f"S{idx}")[:8]
        jobs.append({
            "short": short, "asm_text": asm_text, "link_step": False,
            "mod_name": mod_name, "seg_index": idx,
            "target_bytes": orig_bytes[fo:fo + sz],
            "target_off": fo, "target_size": sz,
            "is_com_full": False,
        })

    # Optional EXE2BIN-path job (single-segment .COM only)
    if with_link and original_basename.upper().endswith(".COM") and \
       len(layout["segments"]) == 1:
        seg = layout["segments"][0]
        seg_path = SRC / mod_name / f"seg{seg['index']}.asm"
        raw_seg = seg_path.read_text(encoding="ascii", errors="replace")
        try:
            asm_text = make_masm_source(mod_name, seg["index"], raw_seg,
                                        com_style=True)
            short = (mod_name.upper()[:6] + "C")[:8]
            jobs.append({
                "short": short, "asm_text": asm_text, "link_step": True,
                "mod_name": mod_name, "seg_index": seg["index"],
                "target_bytes": orig_bytes,
                "target_off": 0, "target_size": len(orig_bytes),
                "is_com_full": True,
            })
        except Exception as e:
            ctx["errors"].append(f"COM-path build error: {e}")

    return jobs, ctx


def verify_jobs(wdir: Path, jobs: list, contexts: dict) -> None:
    """For each completed job, read the OBJ (or EXE for COM jobs) from
    `wdir`, parse bytes, compare to job['target_bytes'], and populate
    contexts[mod_name] segment / exe2bin results.
    """
    for job in jobs:
        ctx = contexts[job["mod_name"]]
        short = job["short"]
        target = job["target_bytes"]
        if job["is_com_full"]:
            exe_path = wdir / f"{short}.EXE"
            if not exe_path.exists():
                ctx["errors"].append(f"LINK did not produce {short}.EXE")
                ctx["exe2bin_path_match"] = False
                print(f"[{job['mod_name']}] EXE2BIN: LINK failed (no {short}.EXE)")
                continue
            try:
                com_bytes = exe_to_com(exe_path.read_bytes())
            except Exception as e:
                ctx["errors"].append(f"exe_to_com: {e}")
                ctx["exe2bin_path_match"] = False
                continue
            if com_bytes == target:
                ctx["exe2bin_path_match"] = True
                print(f"[{job['mod_name']}] EXE2BIN: OK ({len(com_bytes)}B match)")
            else:
                ctx["exe2bin_path_match"] = False
                first_diff = next(
                    (i for i in range(min(len(com_bytes), len(target)))
                     if com_bytes[i] != target[i]), len(com_bytes))
                print(f"[{job['mod_name']}] EXE2BIN: DIFF at 0x{first_diff:X}"
                      f" (com={len(com_bytes)}B vs target={len(target)}B)")
            continue

        # OBJ path
        obj_path = wdir / f"{short}.OBJ"
        seg_res = {"index": job["seg_index"], "size": job["target_size"],
                   "file_off": job["target_off"], "match": False}
        if not obj_path.exists():
            ctx["errors"].append(f"seg{job['seg_index']}: no {short}.OBJ")
            ctx["all_segments_match"] = False
            ctx["segments"].append(seg_res)
            print(f"[{job['mod_name']}] seg{job['seg_index']}: MASM failed")
            continue
        try:
            obj_bytes = parse_obj_ledata(obj_path.read_bytes())
        except Exception as e:
            ctx["errors"].append(f"seg{job['seg_index']}: OBJ parse: {e}")
            ctx["all_segments_match"] = False
            ctx["segments"].append(seg_res)
            continue
        seg_res["obj_size"] = len(obj_bytes)
        if obj_bytes == target:
            seg_res["match"] = True
            print(f"[{job['mod_name']}] seg{job['seg_index']}: OK "
                  f"({len(obj_bytes)}B match)")
        else:
            first_diff = next(
                (i for i in range(min(len(obj_bytes), len(target)))
                 if obj_bytes[i] != target[i]), len(obj_bytes))
            seg_res["first_diff"] = first_diff
            ctx["all_segments_match"] = False
            print(f"[{job['mod_name']}] seg{job['seg_index']}: DIFF at "
                  f"0x{first_diff:X} (obj={len(obj_bytes)}B vs "
                  f"target={len(target)}B)")
        ctx["segments"].append(seg_res)


# ---------------------------------------------------------------------------
# 4. CLI entry point
# ---------------------------------------------------------------------------

DEFAULT_MODULES = ["WIN", "WIN100", "WINOLDAP"]


def main():
    import os
    args = sys.argv[1:]
    with_link = False
    if "--with-link" in args:
        with_link = True
        args.remove("--with-link")
    targets = args or DEFAULT_MODULES

    # Phase flags (used by run_verify_flat_com.sh):
    #   WIN103_VERIFY_DRYRUN     : plan + stage files only; skip DOSBox-X
    #                              and skip OBJ verification.
    #   WIN103_VERIFY_BUILDDONE  : skip plan + DOSBox-X; assume the work
    #                              dir already has fresh OBJ/EXE outputs
    #                              (DOSBox-X was invoked externally).
    dryrun = bool(os.environ.get("WIN103_VERIFY_DRYRUN"))
    builddone = bool(os.environ.get("WIN103_VERIFY_BUILDDONE"))

    # ----- Plan: collect all jobs across all modules -----
    all_jobs = []
    contexts = {}
    for t in targets:
        if not (SRC / t / "layout.json").exists():
            print(f"!! {t}: no src/{t}/layout.json")
            continue
        jobs, ctx = plan_jobs_for_module(t, with_link)
        contexts[t] = ctx
        all_jobs.extend(jobs)
    if not all_jobs:
        print("No jobs to run.")
        return 1

    if not builddone:
        # Build: stage files, optionally invoke DOSBox-X
        print(f"Planned {len(all_jobs)} MASM jobs across {len(contexts)} modules.")
        wdir = stage_combined_workdir(all_jobs)
        print(f"Staged work dir: {wdir.relative_to(REPO)}/")
        if dryrun:
            print("DRYRUN: skipping DOSBox-X (run dosbuild.sh externally, "
                  "then re-invoke with WIN103_VERIFY_BUILDDONE=1).")
            return 0
        print(f"Running DOSBox-X (single session) on {wdir.name}/...")
        rc = run_dos_batch(wdir, "BUILD.BAT")
        print(f"DOSBox-X returned (rc={rc}).")
    else:
        wdir = WORK_ROOT / "BATCH"
        if not wdir.exists():
            print(f"!! BUILDDONE but {wdir} does not exist")
            return 1
        print(f"BUILDDONE: skipping plan + DOSBox-X; using {wdir.name}/")

    # ----- Verify: parse OBJ/EXE outputs and compare -----
    verify_jobs(wdir, all_jobs, contexts)

    # ----- Convert contexts to result list (drop transient fields) -----
    results = []
    for t in targets:
        if t not in contexts:
            continue
        ctx = contexts[t]
        ctx.pop("orig_bytes", None)
        results.append(ctx)

    # Write report
    report_lines = [
        "# Pass: byte-exact verification via MASM 4.00 (flat / multi-segment)",
        "",
        "Each module's segments are reassembled by MASM 4.0 inside DOSBox-X.",
        "For each segment of `src/<MOD>/seg<N>.asm`, MASM produces an OBJ;",
        "the OBJ's OMF LEDATA bytes must match the corresponding slice of the",
        "shipping original binary in `original/`. A module passes only if",
        "EVERY segment matches.",
        "",
        "(Optional --with-link: also runs LINK + py_exe2bin to demonstrate",
        "the full MASM->LINK->EXE2BIN->COM chain for single-segment .COM",
        "modules.)",
        "",
        "| Module | Original | Segs | OBJ-path | EXE2BIN | Notes |",
        "|---|---|:-:|:-:|:-:|---|",
    ]
    all_ok = True
    for r in results:
        nseg = len(r["segments"])
        nok = sum(1 for s in r["segments"] if s.get("match"))
        obj = "OK" if r["all_segments_match"] else f"{nok}/{nseg}"
        if r.get("exe2bin_path_match") is None:
            ex = "n/a"
        else:
            ex = "OK" if r["exe2bin_path_match"] else "DIFF"
        notes = "; ".join(r["errors"][:2]) if r["errors"] else ""
        report_lines.append(
            f"| `{r['module']}` | `{r['original']}` "
            f"({r.get('original_size', '?')}B) | {nseg} | {obj} | {ex} | {notes} |"
        )
        if not r["all_segments_match"]:
            all_ok = False
        if r.get("exe2bin_path_match") is False:
            all_ok = False

    (STATE / "REPORT.md").write_text("\n".join(report_lines) + "\n")
    (STATE / "results.json").write_text(json.dumps(results, indent=2))
    print(f"\nReport: {(STATE / 'REPORT.md').relative_to(REPO)}")

    return 0 if all_ok else 1


if __name__ == "__main__":
    sys.exit(main())
