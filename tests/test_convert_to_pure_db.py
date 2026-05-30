"""Tests for `build_from_source.convert_to_pure_db()`.

The contract of `convert_to_pure_db` is:

  For every well-formed mixed/db `.asm` source we ship in `src/<MOD>/`,
  the rewritten source must (a) parse_db_bytes() to the *exact same*
  byte stream as the original, and (b) contain only MASM-4.00-friendly
  syntax: comments, segment plumbing, and `db` directives.

Property (a) is the invariant that gives us 92/92 via real MASM 4.00
without changing any byte: MASM only sees `db` directives and will
emit those bytes verbatim, so the Python parser and MASM agree by
construction.

This test does not run MASM (MASM 4.00 requires DOSBox-X and is slow);
instead it exercises the pre-transform purely in Python and proves the
invariant on a representative sample of modules + on a small
synthetic input.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

import pytest

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / "src"
sys.path.insert(0, str(ROOT / "bootstrap"))

from build_from_source import convert_to_pure_db, parse_db_bytes  # noqa: E402


SYNTHETIC_MIXED = """\
; sample header comment
TEST_SEG SEGMENT BYTE PUBLIC 'CODE'

L_0000:
        push    bp                       ; 55
        mov     bp, sp                   ; 8B EC
        db      0FFh                     ; FF
        jmp     L_DOES_NOT_EXIST         ; EB 02
        db      0CCh, 0CCh               ; CC CC
        pop     bp                       ; 5D
        ret                              ; C3

TEST_SEG ENDS
        END
"""

EXPECTED_BYTES = bytes.fromhex("558BECFFEB02CCCC5DC3")


def test_synthetic_round_trip_bytes_preserved() -> None:
    """convert_to_pure_db must preserve every byte parse_db_bytes sees."""
    original_bytes = parse_db_bytes(SYNTHETIC_MIXED)
    assert original_bytes == EXPECTED_BYTES, (
        "sanity check: parse_db_bytes on synthetic source already wrong "
        f"(got {original_bytes.hex()}, expected {EXPECTED_BYTES.hex()})"
    )
    rewritten = convert_to_pure_db(SYNTHETIC_MIXED)
    rewritten_bytes = parse_db_bytes(rewritten)
    assert rewritten_bytes == original_bytes


def test_synthetic_emits_only_db_and_structure() -> None:
    """The rewritten source must not contain instruction mnemonics."""
    rewritten = convert_to_pure_db(SYNTHETIC_MIXED)
    # Allowed structural lines: comments, blank, SEGMENT/ENDS/END/ASSUME,
    # `db` directives.
    bad_lines = []
    for line in rewritten.splitlines():
        stripped = line.strip()
        if not stripped or stripped.startswith(";"):
            continue
        upper = stripped.upper()
        if "SEGMENT" in upper or upper.endswith(" ENDS") or upper == "END":
            continue
        if upper.startswith("END "):
            continue
        if upper.startswith("ASSUME"):
            continue
        if re.match(r"db\s", stripped, re.IGNORECASE):
            continue
        bad_lines.append(line)
    assert not bad_lines, (
        "convert_to_pure_db emitted non-db / non-structural lines:\n"
        + "\n".join(bad_lines)
    )


def test_labels_are_dropped_from_code() -> None:
    """Bare labels must be removed so MASM never sees `jmp L_FAKE`.

    The label name may still appear inside a comment (we preserve a
    cosmetic ``; ^ <first instruction>`` hint after each db row), but
    no code line may reference it -- that is what would have triggered
    MASM's A2009 'Symbol not defined'.
    """
    rewritten = convert_to_pure_db(SYNTHETIC_MIXED)
    for line in rewritten.splitlines():
        # Strip inline comment first so we only assert on the code part.
        code = line.split(";", 1)[0]
        assert "L_0000:" not in code, f"label leak in code: {line!r}"
        assert "L_DOES_NOT_EXIST" not in code, (
            f"orphan-ref leak in code: {line!r}"
        )


def test_pure_db_input_unchanged_bytes() -> None:
    """If the input is already pure-db, the bytes must stay identical."""
    pure_db = """\
SEG SEGMENT BYTE PUBLIC 'CODE'
    db 055h, 08bh, 0ech
    db 03 dup(0)
    db 'AB'
SEG ENDS
END
"""
    rewritten = convert_to_pure_db(pure_db)
    assert parse_db_bytes(rewritten) == parse_db_bytes(pure_db)


# ---------------------------------------------------------------------------
# Property test on a representative sample of real src/<MOD>/seg*.asm.
# Running the full 92 modules takes ~10 s on this repo; restricting to
# small modules keeps the test suite fast while still exercising every
# code path (pure-db, mixed, orphan refs).
# ---------------------------------------------------------------------------

REPRESENTATIVE_MODULES = [
    "KERNEL",      # mixed with 23 orphan refs
    "GDI",         # mixed with 11 orphan refs (32 segments)
    "WIN100",      # pure-db
    "WINOLDAP",    # pure-db
    "MSDOS",       # mixed, 0 orphans
    "COMM",        # mixed, 0 orphans, small
    "SYSTEM",      # mixed, 0 orphans, very small
    "USA",         # tiny regional driver
    "SETUP",       # 528 orphans -- stress test
]


@pytest.mark.parametrize("module", REPRESENTATIVE_MODULES)
def test_real_module_bytes_preserved(module: str) -> None:
    mod_dir = SRC / module
    if not mod_dir.is_dir():
        pytest.skip(f"src/{module}/ not present (skip on partial checkouts)")
    seg_files = sorted(mod_dir.glob("seg*.asm"))
    if not seg_files:
        pytest.skip(f"src/{module}/ has no seg*.asm (resource-only module)")
    for sp in seg_files:
        asm = sp.read_text(encoding="ascii", errors="replace")
        original = parse_db_bytes(asm)
        rewritten = convert_to_pure_db(asm)
        rebuilt = parse_db_bytes(rewritten)
        assert rebuilt == original, (
            f"{module}/{sp.name}: pure-db rewrite lost bytes "
            f"(orig={len(original)} rebuilt={len(rebuilt)})"
        )
