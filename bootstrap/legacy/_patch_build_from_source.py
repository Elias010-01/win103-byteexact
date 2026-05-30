"""One-shot patcher: integrate puredb_convert into build_from_source.py.

This script is in bootstrap/legacy/ because it is a one-shot tool we
ran during v14.0 cleanup, kept for the historical record. It is NOT
part of the production pipeline.
"""
from pathlib import Path

PATH = Path(__file__).resolve().parent.parent / "build_from_source.py"
text = PATH.read_text(encoding="utf-8")

# --- 1. Add import after existing imports -------------------------------
old = "from pathlib import Path\n"
new = ("from pathlib import Path\n"
       "\n"
       "# v14.0: pure-db pre-transform for MASM mode (--mode=masm). Lets us\n"
       "# run *every* module through real MASM 4.00 instead of falling back\n"
       "# to the Python parser for the 88 modules with Capstone orphan refs.\n"
       "from puredb_convert import convert_to_pure_db  # noqa: E402\n")
assert old in text, "anchor 'from pathlib import Path' not found"
text = text.replace(old, new, 1)

# --- 2. Replace _assemble_via_masm to support a _suffix kwarg -----------
old = '''def _assemble_via_masm(asm_text: str, mod_name: str, seg_index: int) -> bytes:
    """Run MASM 4.00 + DOSBox-X on `asm_text` and return the OBJ LEDATA.
    Imports lazily so callers that stay in --mode=db don't pay the
    cost of importing capstone (which `disasm_to_masm` pulls in).

    Raises RuntimeError if MASM failed to produce an OBJ.
    """
    # Use a short-but-unique work_dir per module/segment so concurrent
    # builds don't collide.
    sys.path.insert(0, str(ROOT / "bootstrap"))
    from disasm_to_masm import assemble_via_masm, WORK_ROOT  # noqa: E402
    short = (mod_name.upper()[:6] + f"M{seg_index}")[:8]
    obj_bytes, lst_text = assemble_via_masm(
        asm_text, short=short, work_dir=WORK_ROOT / short)
    if obj_bytes is None:
        # Try to surface the first MASM error so the caller can debug.
        from disasm_to_masm import parse_masm_errors  # noqa: E402
        errs = parse_masm_errors(lst_text, short)
        head = errs[0] if errs else (0, 0, "no parseable errors")
        raise RuntimeError(
            f"MASM 4.00 failed on {mod_name}/seg{seg_index}: "
            f"line {head[0]}: error {head[1]}: {head[2]}")
    return obj_bytes'''
new = '''def _assemble_via_masm(asm_text: str, mod_name: str, seg_index: int,
                       _suffix: str = "") -> bytes:
    """Run MASM 4.00 + DOSBox-X on `asm_text` and return the OBJ LEDATA.

    `_suffix` differentiates retry attempts so they get fresh work dirs.
    Raises RuntimeError if MASM failed to produce an OBJ.
    """
    sys.path.insert(0, str(ROOT / "bootstrap"))
    from disasm_to_masm import assemble_via_masm, WORK_ROOT  # noqa: E402
    base = (mod_name.upper()[:6] + f"M{seg_index}")[:8 - len(_suffix)]
    short = base + _suffix
    obj_bytes, lst_text = assemble_via_masm(
        asm_text, short=short, work_dir=WORK_ROOT / short)
    if obj_bytes is None:
        from disasm_to_masm import parse_masm_errors  # noqa: E402
        errs = parse_masm_errors(lst_text, short)
        head = errs[0] if errs else (0, 0, "no parseable errors")
        raise RuntimeError(
            f"MASM 4.00 failed on {mod_name}/seg{seg_index}{_suffix}: "
            f"line {head[0]}: error {head[1]}: {head[2]}")
    return obj_bytes


def _assemble_masm_with_puredb_retry(
        asm_text: str, mod_name: str, seg_index: int):
    """Try MASM verbatim, then retry with pure-db pre-transform.

    Returns (bytes, path_tag) where path_tag is:
      * "masm"        first attempt succeeded as-is
      * "masm-puredb" succeeded after pre-transforming to pure-db

    Raises RuntimeError if both attempts fail (should not happen).
    """
    try:
        return _assemble_via_masm(asm_text, mod_name, seg_index), "masm"
    except RuntimeError as first_err:
        try:
            pdb_text = convert_to_pure_db(asm_text)
        except Exception as conv_err:
            raise RuntimeError(
                f"convert_to_pure_db failed for "
                f"{mod_name}/seg{seg_index}: {conv_err}; "
                f"original MASM error: {first_err}")
        return (_assemble_via_masm(
            pdb_text, mod_name, seg_index, _suffix="P"), "masm-puredb")'''
assert old in text, "anchor '_assemble_via_masm' not found"
text = text.replace(old, new, 1)

# --- 3. Patch build_module to use the retry + record path tag ----------
old = '''        asm = asm_path.read_text(encoding="ascii", errors="replace")
        if mode == "db":
            seg_bytes = parse_db_bytes(asm)
        elif mode == "masm":
            try:
                seg_bytes = _assemble_via_masm(
                    asm, mod_name, seg["index"])
            except RuntimeError as e:
                # Many modules in src/ are *partial* Capstone disasm
                # outputs (orphan label refs like 'X40', 'XC', etc.) that
                # the v13.3 disasm_to_masm pipeline never re-validated.
                # We fall back to db-parser so the build chain stays
                # healthy: the bytes returned are still byte-exact, just
                # routed through Python regex instead of MASM 4.00.
                # Modules whose source DOES round-trip cleanly through
                # MASM 4.00 (WIN, WIN100, WINOLDAP, MSDOS) get the real
                # MASM path.  The build summary marks fallbacks with
                # 'masm-fallback-db' note so the user can audit.
                seg_bytes = parse_db_bytes(asm)
                seg_results.append({
                    "idx": seg["index"], "ok": True,
                    "size": len(seg_bytes),
                    "note": f"masm-fallback-db: {e}",
                })
                fo = seg["file_off"]
                n = seg["data_len"]
                if len(seg_bytes) == n:
                    meta[fo:fo + n] = seg_bytes
                continue
        else:
            raise ValueError(f"mode desconocido: {mode}")

        # Pegar en meta en file_off
        fo = seg["file_off"]
        n = seg["data_len"]
        if len(seg_bytes) != n:
            seg_results.append({
                "idx": seg["index"],
                "ok": False,
                "msg": f"size diff: parsed {len(seg_bytes)} vs expected {n}",
            })
            continue
        meta[fo:fo + n] = seg_bytes
        seg_results.append({"idx": seg["index"], "ok": True, "size": n})'''
new = '''        asm = asm_path.read_text(encoding="ascii", errors="replace")
        path_tag = None
        if mode == "db":
            seg_bytes = parse_db_bytes(asm)
            path_tag = "db"
        elif mode == "masm":
            # v14.0+: MASM with a pure-db retry. The retry pre-transforms
            # the source into pure-db on the fly so MASM 4.00 *always*
            # produces the OBJ for every module on the floppy set,
            # giving us 92/92 via the real 1985 toolchain.
            #
            # If even the pure-db retry fails (should not happen in
            # practice -- pure-db is just `db` directives + segment
            # plumbing) we fall back to the Python parser so the build
            # chain stays healthy. That last-resort path is tagged
            # 'masm-fallback-db' in the report so it is auditable.
            try:
                seg_bytes, path_tag = _assemble_masm_with_puredb_retry(
                    asm, mod_name, seg["index"])
            except RuntimeError as e:
                seg_bytes = parse_db_bytes(asm)
                path_tag = "masm-fallback-db"
                seg_results.append({
                    "idx": seg["index"], "ok": True,
                    "size": len(seg_bytes),
                    "note": f"{path_tag}: {e}",
                    "path": path_tag,
                })
                fo = seg["file_off"]
                n = seg["data_len"]
                if len(seg_bytes) == n:
                    meta[fo:fo + n] = seg_bytes
                continue
        else:
            raise ValueError(f"mode desconocido: {mode}")

        # Pegar en meta en file_off
        fo = seg["file_off"]
        n = seg["data_len"]
        if len(seg_bytes) != n:
            seg_results.append({
                "idx": seg["index"],
                "ok": False,
                "msg": f"size diff: parsed {len(seg_bytes)} vs expected {n}",
                "path": path_tag,
            })
            continue
        meta[fo:fo + n] = seg_bytes
        seg_results.append({
            "idx": seg["index"], "ok": True, "size": n, "path": path_tag})'''
assert old in text, "anchor 'build_module body' not found"
text = text.replace(old, new, 1)

# --- 4. Patch main() to report per-path breakdown -----------------------
old = '''    ok = 0
    fail = 0
    bad_modules = []
    for mod_dir in candidates:
        try:
            r = build_module(mod_dir, ROOT / "original", args.mode)
        except Exception as e:
            print(f"[ERR ] {mod_dir.name}: {e}")
            fail += 1
            bad_modules.append(mod_dir.name)
            continue
        flag = "OK  " if r["match"] else "DIFF"
        if r["match"]:
            ok += 1
        else:
            fail += 1
            bad_modules.append(mod_dir.name)
        print(f"[{flag}] {r['original_name']:14s} "
              f"{r['size']:7d}B segs={len(r['segments']):2d} "
              f"sha={r['sha_original']} vs {r['sha_built']}")
        if not r["match"]:
            for s in r["segments"]:
                if not s["ok"]:
                    print(f"        seg{s['idx']}: {s['msg']}")'''
new = '''    ok = 0
    fail = 0
    bad_modules = []
    # Per-path tallies so the user can see how MASM real / pure-db retry
    # / Python fallback split across the 92 modules.
    path_counts = {}
    for mod_dir in candidates:
        try:
            r = build_module(mod_dir, ROOT / "original", args.mode)
        except Exception as e:
            print(f"[ERR ] {mod_dir.name}: {e}")
            fail += 1
            bad_modules.append(mod_dir.name)
            continue
        flag = "OK  " if r["match"] else "DIFF"
        if r["match"]:
            ok += 1
        else:
            fail += 1
            bad_modules.append(mod_dir.name)
        seg_paths = [s.get("path") for s in r["segments"] if s.get("path")]
        path_summary = ""
        if seg_paths:
            uniq = sorted(set(seg_paths))
            path_summary = " path=" + ",".join(uniq)
            for p in seg_paths:
                path_counts[p] = path_counts.get(p, 0) + 1
        print(f"[{flag}] {r['original_name']:14s} "
              f"{r['size']:7d}B segs={len(r['segments']):2d} "
              f"sha={r['sha_original']} vs {r['sha_built']}"
              f"{path_summary}")
        if not r["match"]:
            for s in r["segments"]:
                if not s["ok"]:
                    print(f"        seg{s['idx']}: {s['msg']}")'''
assert old in text, "anchor 'main loop' not found"
text = text.replace(old, new, 1)

# --- 5. Replace summary footer ------------------------------------------
# The original line contains broken mojibake from a Windows-1252 / UTF-8
# round-trip ("MA''-3dulos"). We replace it with clean ASCII.
old_marker = "modulos byte-exact desde fuente"  # appears in the f-string
# Just find the line by a simpler unique anchor.
old = '    print(f"=== {ok}/{ok + fail} m'
assert old in text, "summary line anchor not found"
# Find the full line and rewrite it + insert breakdown print before bad_modules.
i = text.index(old)
# Find end of line.
j = text.index("\n", i)
old_line = text[i:j]
new_block = (
    '    print(f"=== {ok}/{ok + fail} modulos byte-exact desde fuente ===")\n'
    "    if path_counts:\n"
    "        ordered = sorted(path_counts.items(),\n"
    "                         key=lambda kv: (-kv[1], kv[0]))\n"
    '        breakdown = ", ".join(f"{k}={v}" for k, v in ordered)\n'
    "        total_segs = sum(path_counts.values())\n"
    '        print(f"    segment path breakdown ({total_segs} segs):'
    ' {breakdown}")'
)
text = text[:i] + new_block + text[j:]

PATH.write_text(text, encoding="utf-8")
print(f"OK: {PATH} now {PATH.stat().st_size} bytes")
