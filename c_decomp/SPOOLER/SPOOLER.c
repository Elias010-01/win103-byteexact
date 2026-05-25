/*
 * SPOOLER.c - Reconstructed C scaffold for Windows 1.x SPOOLER.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of SPOOLER.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/SPOOLER/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/SPOOLER/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 44
 * Total API call sites: 148
 *
 * To convert any function below to a real C implementation:
 *   1. Read the corresponding .asm at the offset noted in the function header.
 *   2. Identify control flow (loops, if/else) from the L_xxxx labels (pass 16).
 *   3. Identify locals/args from the [bp-N] / [bp+N] references.
 *   4. Replace the body, then verify byte-exactness via build_from_source.py
 *      compiled with MSC 4.0 and matching flags (long-running goal).
 */

#include <windows.h>
#include <kernel.h>
#include <user.h>
#include <gdi.h>

/*
 * sub_0036 (sub_0036)
 * segment: seg1.asm    offset: 0x0036    instructions: 294
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALSIZE(HANDLE hMem) -> DWORD
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   FLASHWINDOW(?)
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   KILLTIMER(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_07D5, L_0A97, L_0B77, L_0E43, L_0EE1, L_117B ... +9
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0036(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0330 (sub_0330)
 * segment: seg1.asm    offset: 0x0330    instructions: 214
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   FLASHWINDOW(?)
 *   KILLTIMER(?)
 *   MESSAGEBEEP(?)
 *   POSTQUITMESSAGE(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_0583, L_05B9, L_07D5, L_0E43, L_1484, L_15E9 ... +4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0330(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0583 (sub_0583)
 * segment: seg1.asm    offset: 0x0583    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETSCROLLRANGE(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0583(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05B9 (sub_05B9)
 * segment: seg1.asm    offset: 0x05B9    instructions: 204
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_07D5, L_0D3C, L_0E43, L_117B, L_122B, L_1281 ... +1
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07D5 (sub_07D5)
 * segment: seg1.asm    offset: 0x07D5    instructions: 271
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETSYSCOLOR(?)
 *   ISRECTEMPTY(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLRANGE(?)
 *
 * Internal calls: L_0B3A
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A97 (sub_0A97)
 * segment: seg1.asm    offset: 0x0A97    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0B3A
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A97(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B3A (sub_0B3A)
 * segment: seg1.asm    offset: 0x0B3A    instructions: 29
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B3A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B77 (sub_0B77)
 * segment: seg1.asm    offset: 0x0B77    instructions: 156
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETACTIVEWINDOW(?)
 *   MESSAGEBEEP(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETTIMER(?)
 *
 * Internal calls: L_16D3, L_185B, L_196D, L_19B9, L_1BC4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B77(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D1E (sub_0D1E)
 * segment: seg1.asm    offset: 0x0D1E    instructions: 15
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D1E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D3C (sub_0D3C)
 * segment: seg1.asm    offset: 0x0D3C    instructions: 53
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D3C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DCE (sub_0DCE)
 * segment: seg1.asm    offset: 0x0DCE    instructions: 51
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DCE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E43 (sub_0E43)
 * segment: seg1.asm    offset: 0x0E43    instructions: 66
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_146C, L_1FEB
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E43(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EE1 (sub_0EE1)
 * segment: seg1.asm    offset: 0x0EE1    instructions: 233
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *   DELETEPATHNAME(?)
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Internal calls: L_0DCE, L_13C6, L_19B9, L_1BC4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EE1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_117B (sub_117B)
 * segment: seg1.asm    offset: 0x117B    instructions: 53
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *   DELETEPATHNAME(?)
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_13C6
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_117B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1211 (sub_1211)
 * segment: seg1.asm    offset: 0x1211    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1211(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_122B (sub_122B)
 * segment: seg1.asm    offset: 0x122B    instructions: 33
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_122B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1281 (sub_1281)
 * segment: seg1.asm    offset: 0x1281    instructions: 115
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_0EE1, L_196D, L_1BC4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1281(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13C6 (sub_13C6)
 * segment: seg1.asm    offset: 0x13C6    instructions: 54
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_144B (sub_144B)
 * segment: seg1.asm    offset: 0x144B    instructions: 14
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_144B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_146C (sub_146C)
 * segment: seg1.asm    offset: 0x146C    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_146C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1484 (sub_1484)
 * segment: seg1.asm    offset: 0x1484    instructions: 149
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   GETMENU(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_07D5, L_0B3A
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1484(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15E9 (sub_15E9)
 * segment: seg1.asm    offset: 0x15E9    instructions: 95
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SETSCROLLPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15E9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_16D3 (sub_16D3)
 * segment: seg1.asm    offset: 0x16D3    instructions: 142
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
 *   FLUSHCOMM(?)
 *   GETCOMMERROR(?)
 *   GETCURRENTTIME(?)
 *   WRITECOMM(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_16D3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_185B (sub_185B)
 * segment: seg1.asm    offset: 0x185B    instructions: 120
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   _LCREAT(LPSTR lpszPath, INT wAttribute) -> HFILE
 *   GETCOMMSTATE(?)
 *   OPENCOMM(?)
 *   SETCOMMSTATE(?)
 *
 * Internal calls: L_0D1E, L_144B, L_19F0, L_1BC4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_185B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_196D (sub_196D)
 * segment: seg1.asm    offset: 0x196D    instructions: 31
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   CLOSECOMM(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_196D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19B9 (sub_19B9)
 * segment: seg1.asm    offset: 0x19B9    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ESCAPECOMMFUNCTION(?)
 *   FLUSHCOMM(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19F0 (sub_19F0)
 * segment: seg1.asm    offset: 0x19F0    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_1B8B
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B8B (sub_1B8B)
 * segment: seg1.asm    offset: 0x1B8B    instructions: 22
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B8B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BC4 (sub_1BC4)
 * segment: seg1.asm    offset: 0x1BC4    instructions: 40
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_0D3C
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BC4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C26 (sub_1C26)
 * segment: seg1.asm    offset: 0x1C26    instructions: 100
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETSYSTEMMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Internal calls: L_1CF8
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C26(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1CF8 (sub_1CF8)
 * segment: seg1.asm    offset: 0x1CF8    instructions: 59
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1CF8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D87 (sub_1D87)
 * segment: seg1.asm    offset: 0x1D87    instructions: 40
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *   GETTEXTMETRICS(?)
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0E43
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D87(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DED (sub_1DED)
 * segment: seg1.asm    offset: 0x1DED    instructions: 45
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *
 * Internal calls: L_1BC4
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E44 (sub_1E44)
 * segment: seg1.asm    offset: 0x1E44    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *
 * Internal calls: L_1BC4, L_1EE3
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E44(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1EE3 (sub_1EE3)
 * segment: seg1.asm    offset: 0x1EE3    instructions: 97
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSPOOLJOB(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_0D1E, L_1FEB
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1EE3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1FEB (sub_1FEB)
 * segment: seg1.asm    offset: 0x1FEB    instructions: 12
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1FEB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_200A (sub_200A)
 * segment: seg1.asm    offset: 0x200A    instructions: 148
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_0036, L_0E43, L_117B, L_1281, L_196D, L_19B9 ... +2
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_200A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2175 (sub_2175)
 * segment: seg1.asm    offset: 0x2175    instructions: 130
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALSIZE(HANDLE hMem) -> DWORD
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   LOCALSIZE(HANDLE hMem) -> WORD
 *
 * Internal calls: L_2320
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2175(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_227E (sub_227E)
 * segment: seg1.asm    offset: 0x227E    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_227E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2310 (sub_2310)
 * segment: seg1.asm    offset: 0x2310    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_232B, L_2361
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2310(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2320 (sub_2320)
 * segment: seg1.asm    offset: 0x2320    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2320(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_232B (sub_232B)
 * segment: seg1.asm    offset: 0x232B    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_2175, L_2373
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_232B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2361 (sub_2361)
 * segment: seg1.asm    offset: 0x2361    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2361(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2373 (sub_2373)
 * segment: seg1.asm    offset: 0x2373    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/SPOOLER/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2373(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

