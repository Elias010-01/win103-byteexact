# REVERSI.c — Reconstructed C scaffold

This directory contains the C scaffolding for `REVERSI.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `REVERSI.c` — function inventory of REVERSI.EXE in C-source form.

## Statistics

- Functions discovered: 46
- Total API call sites: 110
- Unique APIs called: 68

## Top APIs called

- `SELECTOBJECT`: 7 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `GETDC`: 7 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 7 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `SETCURSOR`: 6 call(s)
- `PATBLT`: 5 call(s) — `PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL`
- `GETSTOCKOBJECT`: 4 call(s) — `GETSTOCKOBJECT(INT iObject) -> HANDLE`
- `SETBKMODE`: 4 call(s) — `SETBKMODE(HDC hDC, INT iMode) -> INT`
- `DIALOGBOX`: 3 call(s) — `DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT`
- `ELLIPSE`: 3 call(s) — `ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL`
- `SETWINDOWTEXT`: 2 call(s) — `SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID`
- `GETMENU`: 2 call(s)
- `DELETEOBJECT`: 2 call(s) — `DELETEOBJECT(HANDLE hObj) -> BOOL`
- `LOCALALLOC`: 2 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `LOCALFREE`: 2 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `GETTEXTMETRICS`: 1 call(s)


## How to lift one function to real C

1. Pick a function from `REVERSI.c`.
2. Open `src/REVERSI/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
