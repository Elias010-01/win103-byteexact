# CALENDAR.c — Reconstructed C scaffold

This directory contains the C scaffolding for `CALENDAR.EXE` from
Windows 1.03. The `.c` file is auto-generated documentation, not a real
decompilation.

## Contents

- `CALENDAR.c` — function inventory of CALENDAR.EXE in C-source form.

## Statistics

- Functions discovered: 207
- Total API call sites: 306
- Unique APIs called: 131

## Top APIs called

- `SENDMESSAGE`: 13 call(s) — `SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT`
- `INVALIDATERECT`: 11 call(s) — `INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID`
- `LSTRLEN`: 9 call(s) — `LSTRLEN(LPSTR lpsz) -> INT`
- `ENDDIALOG`: 9 call(s) — `ENDDIALOG(HWND hDlg, INT nResult) -> BOOL`
- `GETFOCUS`: 8 call(s)
- `TEXTOUT`: 8 call(s) — `TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL`
- `RELEASEDC`: 7 call(s) — `RELEASEDC(HWND hWnd, HDC hDC) -> INT`
- `SETDLGITEMTEXT`: 7 call(s) — `SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID`
- `UPDATEWINDOW`: 7 call(s) — `UPDATEWINDOW(HWND hWnd) -> BOOL`
- `GETCLIENTRECT`: 7 call(s) — `GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID`
- `OPENFILE`: 6 call(s) — `OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE`
- `GETDLGITEM`: 6 call(s) — `GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND`
- `GETDLGITEMTEXT`: 6 call(s) — `GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT`
- `LOCALREALLOC`: 5 call(s) — `LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE`
- `ENABLEWINDOW`: 5 call(s)


## How to lift one function to real C

1. Pick a function from `CALENDAR.c`.
2. Open `src/CALENDAR/seg<N>.asm` at the offset noted in the function header.
3. Identify locals/args from `[bp-N]` and `[bp+N]` references (use pass 15
   annotations to see which push corresponds to which API arg).
4. Identify control-flow role of each `L_XXXX:` label (pass 16 annotations).
5. Rewrite the body in C with the same observable behavior.
6. Verify with `python bootstrap/build_from_source.py` once a MASM
   round-trip is set up (long-term goal: MSC 4.0 byte-exact recompilation).

## Status

Scaffold generated. Bodies are placeholders. No function has been
lifted yet.
