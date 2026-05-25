# CLIPBRD.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CLIPBRD.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CLIPBRD.c` — function inventory of CLIPBRD.EXE in C-source form.

## Statistics

- Functions discovered: 26
- Total API call sites: 114
- Unique APIs called: 84

## Top APIs called

- `GLOBALLOCK`: 4 call(s) — `GLOBALLOCK(HANDLE hMem) -> LPVOID`
- `GLOBALUNLOCK`: 4 call(s) — `GLOBALUNLOCK(HANDLE hMem) -> BOOL`
- `FILLRECT`: 3 call(s)
- `INVALIDATERECT`: 3 call(s) — `INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID`
- `LOADSTRING`: 3 call(s) — `LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT`
- `SETSCROLLPOS`: 3 call(s)
- `GLOBALALLOC`: 3 call(s) — `GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE`
- `GLOBALFREE`: 3 call(s) — `GLOBALFREE(HANDLE hMem) -> HANDLE`
- `CREATESOLIDBRUSH`: 2 call(s) — `CREATESOLIDBRUSH(DWORD clr) -> HBRUSH`
- `SELECTOBJECT`: 2 call(s) — `SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE`
- `LOCALALLOC`: 2 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `LOCALFREE`: 2 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `GETCLIENTRECT`: 2 call(s) — `GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID`
- `GETSYSCOLOR`: 2 call(s)
- `SENDMESSAGE`: 2 call(s) — `SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`


## How to lift one function to real C

1. Pick a function from `CLIPBRD.c`.
2. Open `src/CLIPBRD/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
