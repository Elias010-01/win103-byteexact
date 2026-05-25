# CLOCK.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CLOCK.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CLOCK.c` — function inventory of CLOCK.EXE in C-source form.

## Statistics

- Functions discovered: 24
- Total API call sites: 62
- Unique APIs called: 47

## Top APIs called

- `LOADSTRING`: 3 call(s) — `LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT`
- `LOCALALLOC`: 3 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `GLOBALLOCK`: 2 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `GLOBALUNLOCK`: 2 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `GETDC`: 2 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 2 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `SETTIMER`: 2 call(s)
- `FILLRECT`: 2 call(s)
- `LINETO`: 2 call(s) — `LINETO(HDC hDC, INT x, INT y) -> BOOL`
- `MOVETO`: 2 call(s) — `MOVETO(HDC hDC, INT x, INT y) -> DWORD`
- `SELECTOBJECT`: 2 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `SETROP2`: 2 call(s)
- `LOCALFREE`: 2 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `CREATEPEN`: 1 call(s) — `CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN`
- `CREATESOLIDBRUSH`: 1 call(s) — `CREATESOLIDBRUSH(DWORD clr) -> HBRUSH`


## How to lift one function to real C

1. Pick a function from `CLOCK.c`.
2. Open `src/CLOCK/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
