# PAINT.c — Reconstructed C scaffold

This directory contains the C scaffolding for `PAINT.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `PAINT.c` — function inventory of PAINT.EXE in C-source form.

## Statistics

- Functions discovered: 234
- Total API call sites: 841
- Unique APIs called: 163

## Top APIs called

- `DELETEDC`: 48 call(s) — `DELETEDC(HDC hDC) -> BOOL`
- `GETSTOCKOBJECT`: 39 call(s) — `GETSTOCKOBJECT(INT iObject) -> HANDLE`
- `SELECTOBJECT`: 39 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `BITBLT`: 34 call(s) — `BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL`
- `GETDC`: 27 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 26 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `PATBLT`: 19 call(s) — `PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL`
- `GETPARENT`: 18 call(s)
- `GETMENU`: 15 call(s)
- `GLOBALUNLOCK`: 15 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `SETROP2`: 15 call(s)
- `CREATEBITMAP`: 14 call(s) — `CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP`
- `MULDIV`: 13 call(s)
- `GLOBALLOCK`: 13 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `LSTRCPY`: 13 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`


## How to lift one function to real C

1. Pick a function from `PAINT.c`.
2. Open `src/PAINT/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
