# NOTEPAD.c — Reconstructed C scaffold

This directory contains the C scaffolding for `NOTEPAD.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `NOTEPAD.c` — function inventory of NOTEPAD.EXE in C-source form.

## Statistics

- Functions discovered: 47
- Total API call sites: 181
- Unique APIs called: 90

## Top APIs called

- `SENDMESSAGE`: 11 call(s) — `SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `LSTRCPY`: 8 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `LSTRLEN`: 8 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `GETDLGITEM`: 6 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`
- `OPENFILE`: 5 call(s) — `OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE`
- `ANSIUPPER`: 5 call(s) — `ANSIUPPER(LPSTR lpsz) -> LPSTR`
- `ENDDIALOG`: 5 call(s) — `ENDDIALOG(HWND hDlg, INT nResult) -> BOOL`
- `LOCALALLOC`: 4 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `ENABLEWINDOW`: 4 call(s)
- `ANSIPREV`: 4 call(s)
- `SETSCROLLPOS`: 3 call(s)
- `DESTROYWINDOW`: 3 call(s) — `DESTROYWINDOW(HWND hWnd) -> BOOL`
- `5`: 3 call(s)
- `6`: 3 call(s)
- `LOCALFREE`: 3 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`


## How to lift one function to real C

1. Pick a function from `NOTEPAD.c`.
2. Open `src/NOTEPAD/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
