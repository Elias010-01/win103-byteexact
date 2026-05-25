# SPOOLER.c — Reconstructed C scaffold

This directory contains the C scaffolding for `SPOOLER.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `SPOOLER.c` — function inventory of SPOOLER.EXE in C-source form.

## Statistics

- Functions discovered: 44
- Total API call sites: 148
- Unique APIs called: 82

## Top APIs called

- `GLOBALUNLOCK`: 8 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `GLOBALLOCK`: 7 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `GETSPOOLJOB`: 6 call(s)
- `LOADSTRING`: 5 call(s) — `LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT`
- `MESSAGEBOX`: 5 call(s) — `MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT`
- `GLOBALFREE`: 4 call(s) — `GLOBALFREE(HANDLE hMem) -> HANDLE`
- `GETMENU`: 4 call(s)
- `GETCLIENTRECT`: 4 call(s) — `GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID`
- `GETDC`: 4 call(s) — `GETDC(HWND hWnd) -> HDC`
- `RELEASEDC`: 4 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `LOCALALLOC`: 4 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `LOCALFREE`: 4 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `LSTRLEN`: 3 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `ENABLEMENUITEM`: 3 call(s) — `ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL`
- `_LCLOSE`: 3 call(s) — `_LCLOSE(HFILE hFile) -> HFILE`


## How to lift one function to real C

1. Pick a function from `SPOOLER.c`.
2. Open `src/SPOOLER/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
