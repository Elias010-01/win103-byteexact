# MSDOS.c — Reconstructed C scaffold

This directory contains the C scaffolding for `MSDOS.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `MSDOS.c` — function inventory of MSDOS.EXE in C-source form.

## Statistics

- Functions discovered: 143
- Total API call sites: 390
- Unique APIs called: 127

## Top APIs called

- `LSTRLEN`: 20 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `LSTRCPY`: 19 call(s) — `LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `6`: 14 call(s)
- `LOCALALLOC`: 12 call(s) — `LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE`
- `LOCALFREE`: 12 call(s) — `LOCALFREE(HANDLE hMem) -> HANDLE`
- `GETLASTDISKCHANGE`: 11 call(s)
- `ANSIUPPER`: 10 call(s) — `ANSIUPPER(LPSTR lpsz) -> LPSTR`
- `5`: 9 call(s)
- `GETPROFILESTRING`: 7 call(s)
- `LSTRCMP`: 7 call(s) — `LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT`
- `POSTMESSAGE`: 7 call(s) — `POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL`
- `TEXTOUT`: 7 call(s) — `TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL`
- `LSTRCAT`: 7 call(s) — `LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR`
- `GETCLIENTRECT`: 6 call(s) — `GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID`
- `SETFOCUS`: 6 call(s)


## How to lift one function to real C

1. Pick a function from `MSDOS.c`.
2. Open `src/MSDOS/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
