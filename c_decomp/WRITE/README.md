# WRITE.c — Reconstructed C scaffold

This directory contains the C scaffolding for `WRITE.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `WRITE.c` — function inventory of WRITE.EXE in C-source form.

## Statistics

- Functions discovered: 387
- Total API call sites: 543
- Unique APIs called: 159

## Top APIs called

- `LOCALFREE`: 29 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `SETDLGITEMTEXT`: 18 call(s) — `SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID`
- `GETDLGITEM`: 16 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`
- `ENABLEWINDOW`: 15 call(s)
- `SHOWCURSOR`: 14 call(s)
- `SELECTOBJECT`: 13 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `CHECKDLGBUTTON`: 11 call(s)
- `GETDEVICECAPS`: 11 call(s) — `GETDEVICECAPS(HDC hDC, INT iCap) -> INT`
- `DELETEOBJECT`: 9 call(s) — `DELETEOBJECT(HANDLE hObj) -> BOOL`
- `GLOBALLOCK`: 9 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `GLOBALUNLOCK`: 9 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `SENDDLGITEMMESSAGE`: 9 call(s) — `SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `GLOBALFREE`: 8 call(s) — `GLOBALFREE(HANDLE hMem) -> HANDLE`
- `SETFOCUS`: 8 call(s)
- `GETDC`: 8 call(s) — `GETDC(HWND hWnd) -> HDC`


## How to lift one function to real C

1. Pick a function from `WRITE.c`.
2. Open `src/WRITE/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
