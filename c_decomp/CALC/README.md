# CALC.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CALC.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CALC.c` — function inventory of CALC.EXE in C-source form.

## Statistics

- Functions discovered: 132
- Total API call sites: 138
- Unique APIs called: 83

## Top APIs called

- `LSTRCPY`: 11 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `LSTRLEN`: 9 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `GETDC`: 5 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 5 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `SELECTOBJECT`: 4 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `PATBLT`: 3 call(s) — `PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL`
- `TEXTOUT`: 3 call(s) — `TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL`
- `ROUNDRECT`: 3 call(s)
- `UNREALIZEOBJECT`: 3 call(s)
- `CLOSECLIPBOARD`: 3 call(s)
- `OPENCLIPBOARD`: 3 call(s)
- `SETCURSOR`: 2 call(s)
- `CREATECOMPATIBLEDC`: 2 call(s) — `CREATECOMPATIBLEDC(HDC hDC) -> HDC`
- `DELETEDC`: 2 call(s) — `DELETEDC(HDC hDC) -> BOOL`
- `GETSTOCKOBJECT`: 2 call(s) — `GETSTOCKOBJECT(INT iObject) -> HANDLE`


## How to lift one function to real C

1. Pick a function from `CALC.c`.
2. Open `src/CALC/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
