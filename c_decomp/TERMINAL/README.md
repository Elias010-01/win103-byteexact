# TERMINAL.c — Reconstructed C scaffold

This directory contains the C scaffolding for `TERMINAL.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `TERMINAL.c` — function inventory of TERMINAL.EXE in C-source form.

## Statistics

- Functions discovered: 214
- Total API call sites: 326
- Unique APIs called: 133

## Top APIs called

- `OPENFILE`: 11 call(s) — `OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE`
- `LSTRCPY`: 11 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `RELEASEDC`: 11 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `GETMENU`: 8 call(s)
- `CHECKMENUITEM`: 7 call(s) — `CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL`
- `ENABLEWINDOW`: 7 call(s)
- `ENDDIALOG`: 7 call(s) — `ENDDIALOG(HWND hDlg, INT nResult) -> BOOL`
- `GETDLGITEM`: 7 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`
- `INTERSECTRECT`: 6 call(s)
- `UPDATEWINDOW`: 6 call(s) — `UPDATEWINDOW(HWND hWnd) -> BOOL`
- `LSTRLEN`: 6 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `_LCLOSE`: 6 call(s) — `_LCLOSE(HFILE hFile) -> HFILE`
- `ANSIPREV`: 5 call(s)
- `READCOMM`: 4 call(s)
- `LOCALFREE`: 4 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`


## How to lift one function to real C

1. Pick a function from `TERMINAL.c`.
2. Open `src/TERMINAL/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
