# CONTROL.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CONTROL.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CONTROL.c` — function inventory of CONTROL.EXE in C-source form.

## Statistics

- Functions discovered: 154
- Total API call sites: 516
- Unique APIs called: 121

## Top APIs called

- `LOADSTRING`: 28 call(s) — `LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT`
- `SENDMESSAGE`: 27 call(s) — `SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `LSTRCPY`: 24 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `LSTRCAT`: 23 call(s) — `LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `MESSAGEBOX`: 18 call(s) — `MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT`
- `SENDDLGITEMMESSAGE`: 18 call(s) — `SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `ENDDIALOG`: 16 call(s) — `ENDDIALOG(HWND hDlg, INT nResult) -> BOOL`
- `GETPROFILESTRING`: 15 call(s)
- `SETDLGITEMTEXT`: 15 call(s) — `SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID`
- `ANSIUPPER`: 13 call(s) — `ANSIUPPER(LPSTR lpsz) -> LPSTR`
- `SHOWWINDOW`: 12 call(s) — `SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL`
- `SHOWCURSOR`: 11 call(s)
- `WRITEPROFILESTRING`: 11 call(s)
- `GETDLGITEM`: 11 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`
- `LSTRLEN`: 11 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`


## How to lift one function to real C

1. Pick a function from `CONTROL.c`.
2. Open `src/CONTROL/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
