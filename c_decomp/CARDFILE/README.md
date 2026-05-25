# CARDFILE.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CARDFILE.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CARDFILE.c` — function inventory of CARDFILE.EXE in C-source form.

## Statistics

- Functions discovered: 87
- Total API call sites: 429
- Unique APIs called: 137

## Top APIs called

- `GLOBALUNLOCK`: 16 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `GLOBALLOCK`: 15 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `LSTRLEN`: 13 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `LSTRCPY`: 12 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `SETRECT`: 12 call(s)
- `GETDC`: 10 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 10 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `SENDMESSAGE`: 10 call(s) — `SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `GLOBALFREE`: 9 call(s) — `GLOBALFREE(HANDLE hMem) -> HANDLE`
- `GETCLIENTRECT`: 9 call(s) — `GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID`
- `GLOBALALLOC`: 8 call(s) — `GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE`
- `DELETEOBJECT`: 8 call(s) — `DELETEOBJECT(HANDLE hObj) -> BOOL`
- `INVALIDATERECT`: 8 call(s) — `INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID`
- `SETDLGITEMTEXT`: 8 call(s) — `SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID`
- `GETDLGITEM`: 8 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`


## How to lift one function to real C

1. Pick a function from `CARDFILE.c`.
2. Open `src/CARDFILE/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
