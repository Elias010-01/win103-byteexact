/*
 * CALENDAR.c - Reconstructed C scaffold for Windows 1.x CALENDAR.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CALENDAR.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CALENDAR/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CALENDAR/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 207
 * Total API call sites: 306
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
 * sub_0000 (sub_0000)
 * segment: seg1.asm    offset: 0x0000    instructions: 46
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   TRANSLATEACCELERATOR(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_0070, L_03EF, L_0650
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0070 (sub_0070)
 * segment: seg1.asm    offset: 0x0070    instructions: 98
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETKEYSTATE(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_016F, L_03EF
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0070(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_016F (sub_016F)
 * segment: seg1.asm    offset: 0x016F    instructions: 117
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   FLASHWINDOW(?)
 *   ISICONIC(?)
 *   MESSAGEBEEP(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_02A6, L_036B, L_039C, L_0417
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_016F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A6 (sub_02A6)
 * segment: seg1.asm    offset: 0x02A6    instructions: 61
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETACTIVEWINDOW(?)
 *   MESSAGEBEEP(?)
 *
 * Internal calls: L_0348, L_036B, L_0417
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0348 (sub_0348)
 * segment: seg1.asm    offset: 0x0348    instructions: 12
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0417
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0348(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_036B (sub_036B)
 * segment: seg1.asm    offset: 0x036B    instructions: 21
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0417
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_036B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_039C (sub_039C)
 * segment: seg1.asm    offset: 0x039C    instructions: 29
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Internal calls: L_03D1
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_039C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D1 (sub_03D1)
 * segment: seg1.asm    offset: 0x03D1    instructions: 13
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D1(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03EF (sub_03EF)
 * segment: seg1.asm    offset: 0x03EF    instructions: 103
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_05BE, L_0650
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03EF(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04B5 (sub_04B5)
 * segment: seg1.asm    offset: 0x04B5    instructions: 130
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
 * Internal calls: L_0660
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04B5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05BE (sub_05BE)
 * segment: seg1.asm    offset: 0x05BE    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05BE(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0650 (sub_0650)
 * segment: seg1.asm    offset: 0x0650    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_066B, L_06A1
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0650(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0660 (sub_0660)
 * segment: seg1.asm    offset: 0x0660    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0660(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_066B (sub_066B)
 * segment: seg1.asm    offset: 0x066B    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_04B5, L_06B3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_066B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06A1 (sub_06A1)
 * segment: seg1.asm    offset: 0x06A1    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06B3 (sub_06B3)
 * segment: seg1.asm    offset: 0x06B3    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06B3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0141 (sub_0141)
 * segment: seg2.asm    offset: 0x0141    instructions: 203
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   DLGDIRLIST(?)
 *   DLGDIRSELECT(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISWINDOWENABLED(?)
 *   MESSAGEBEEP(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_03E8, L_04BD, L_04F9
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0141(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035F (sub_035F)
 * segment: seg2.asm    offset: 0x035F    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   DLGDIRLIST(?)
 *
 * Internal calls: L_039F
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_039F (sub_039F)
 * segment: seg2.asm    offset: 0x039F    instructions: 34
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_039F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03E8 (sub_03E8)
 * segment: seg2.asm    offset: 0x03E8    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04BD (sub_04BD)
 * segment: seg2.asm    offset: 0x04BD    instructions: 32
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04F9 (sub_04F9)
 * segment: seg2.asm    offset: 0x04F9    instructions: 20
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04F9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg3.asm    offset: 0x0000    instructions: 474
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CREATECARET(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DESTROYCARET(?)
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETFOCUS(?)
 *   HIDECARET(?)
 *   ISWINDOWENABLED(?)
 *   KILLTIMER(?)
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *   POSTQUITMESSAGE(?)
 *   SETCURSOR(?)
 *   SHOWCARET(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0501, L_054F, L_0598, L_05AD, L_06E0, L_074B ... +25
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0501 (sub_0501)
 * segment: seg3.asm    offset: 0x0501    instructions: 30
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0501(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054F (sub_054F)
 * segment: seg3.asm    offset: 0x054F    instructions: 28
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0598 (sub_0598)
 * segment: seg3.asm    offset: 0x0598    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETFOCUS(?)
 *
 * Internal calls: L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0598(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05AD (sub_05AD)
 * segment: seg3.asm    offset: 0x05AD    instructions: 113
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENUMCLIPBOARDFORMATS(?)
 *   GETMENU(?)
 *   OPENCLIPBOARD(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_43CA, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05AD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06E0 (sub_06E0)
 * segment: seg3.asm    offset: 0x06E0    instructions: 38
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06E0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_074B (sub_074B)
 * segment: seg3.asm    offset: 0x074B    instructions: 95
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_084E, L_0888, L_08AD, L_094E, L_0C8E, L_0E6E ... +3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_074B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_084E (sub_084E)
 * segment: seg3.asm    offset: 0x084E    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_084E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0888 (sub_0888)
 * segment: seg3.asm    offset: 0x0888    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0888(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08AD (sub_08AD)
 * segment: seg3.asm    offset: 0x08AD    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_08DE, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08AD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08DE (sub_08DE)
 * segment: seg3.asm    offset: 0x08DE    instructions: 18
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08DE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0909 (sub_0909)
 * segment: seg3.asm    offset: 0x0909    instructions: 17
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0909(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0930 (sub_0930)
 * segment: seg3.asm    offset: 0x0930    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0930(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_094E (sub_094E)
 * segment: seg3.asm    offset: 0x094E    instructions: 41
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_09B9, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_094E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09B9 (sub_09B9)
 * segment: seg3.asm    offset: 0x09B9    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09EE (sub_09EE)
 * segment: seg3.asm    offset: 0x09EE    instructions: 45
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A67 (sub_0A67)
 * segment: seg3.asm    offset: 0x0A67    instructions: 18
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A67(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A96 (sub_0A96)
 * segment: seg3.asm    offset: 0x0A96    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A96(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AC8 (sub_0AC8)
 * segment: seg3.asm    offset: 0x0AC8    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AC8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0ADF (sub_0ADF)
 * segment: seg3.asm    offset: 0x0ADF    instructions: 25
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0ADF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B1E (sub_0B1E)
 * segment: seg3.asm    offset: 0x0B1E    instructions: 46
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B1E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B92 (sub_0B92)
 * segment: seg3.asm    offset: 0x0B92    instructions: 22
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B92(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BC2 (sub_0BC2)
 * segment: seg3.asm    offset: 0x0BC2    instructions: 32
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BC2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C11 (sub_0C11)
 * segment: seg3.asm    offset: 0x0C11    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C11(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C47 (sub_0C47)
 * segment: seg3.asm    offset: 0x0C47    instructions: 19
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C47(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C78 (sub_0C78)
 * segment: seg3.asm    offset: 0x0C78    instructions: 9
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *
 * Internal calls: L_0C8E, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C78(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C8E (sub_0C8E)
 * segment: seg3.asm    offset: 0x0C8E    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C8E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CC6 (sub_0CC6)
 * segment: seg3.asm    offset: 0x0CC6    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CC6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D00 (sub_0D00)
 * segment: seg3.asm    offset: 0x0D00    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_12D6, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D00(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D19 (sub_0D19)
 * segment: seg3.asm    offset: 0x0D19    instructions: 19
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D19(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D45 (sub_0D45)
 * segment: seg3.asm    offset: 0x0D45    instructions: 56
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_09EE, L_0D00, L_0D19, L_132D, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D45(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DD9 (sub_0DD9)
 * segment: seg3.asm    offset: 0x0DD9    instructions: 51
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DD9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E6E (sub_0E6E)
 * segment: seg3.asm    offset: 0x0E6E    instructions: 31
 * classification (pass8): unclear
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Internal calls: L_0DD9, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E6E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EC3 (sub_0EC3)
 * segment: seg3.asm    offset: 0x0EC3    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EC3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EF1 (sub_0EF1)
 * segment: seg3.asm    offset: 0x0EF1    instructions: 167
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Internal calls: L_0909, L_10BC, L_11A1, L_11E4, L_1201, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EF1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10BC (sub_10BC)
 * segment: seg3.asm    offset: 0x10BC    instructions: 87
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10BC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11A1 (sub_11A1)
 * segment: seg3.asm    offset: 0x11A1    instructions: 27
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11E4 (sub_11E4)
 * segment: seg3.asm    offset: 0x11E4    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVERTRECT(?)
 *
 * Internal calls: L_1237, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1201 (sub_1201)
 * segment: seg3.asm    offset: 0x1201    instructions: 21
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETCARETPOS(?)
 *
 * Internal calls: L_1237, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1201(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1237 (sub_1237)
 * segment: seg3.asm    offset: 0x1237    instructions: 36
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1237(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_129C (sub_129C)
 * segment: seg3.asm    offset: 0x129C    instructions: 23
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_129C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12D6 (sub_12D6)
 * segment: seg3.asm    offset: 0x12D6    instructions: 34
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_132D (sub_132D)
 * segment: seg3.asm    offset: 0x132D    instructions: 47
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_12D6, L_3490, L_3695, L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_132D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13A5 (sub_13A5)
 * segment: seg3.asm    offset: 0x13A5    instructions: 55
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0598, L_14A1, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13A5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_142E (sub_142E)
 * segment: seg3.asm    offset: 0x142E    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_142E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1459 (sub_1459)
 * segment: seg3.asm    offset: 0x1459    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1459(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1484 (sub_1484)
 * segment: seg3.asm    offset: 0x1484    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_142E, L_1459, L_14A1, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1484(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14A1 (sub_14A1)
 * segment: seg3.asm    offset: 0x14A1    instructions: 41
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0D19, L_0D45, L_17A6, L_17BD, L_261E, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14A1(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1506 (sub_1506)
 * segment: seg3.asm    offset: 0x1506    instructions: 52
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETFOCUS(?)
 *
 * Internal calls: L_0598, L_129C, L_170B, L_17E1, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1506(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1583 (sub_1583)
 * segment: seg3.asm    offset: 0x1583    instructions: 52
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_1484, L_14A1, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1583(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15FE (sub_15FE)
 * segment: seg3.asm    offset: 0x15FE    instructions: 114
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0598, L_0D19, L_142E, L_1459, L_1484, L_170B ... +3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15FE(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_170B (sub_170B)
 * segment: seg3.asm    offset: 0x170B    instructions: 27
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0C78, L_11E4, L_1201, L_17BD, L_261E, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_170B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1754 (sub_1754)
 * segment: seg3.asm    offset: 0x1754    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_14A1, L_17BD, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1754(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1772 (sub_1772)
 * segment: seg3.asm    offset: 0x1772    instructions: 26
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_170B, L_1754, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1772(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17A6 (sub_17A6)
 * segment: seg3.asm    offset: 0x17A6    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17BD (sub_17BD)
 * segment: seg3.asm    offset: 0x17BD    instructions: 18
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETFOCUS(?)
 *
 * Internal calls: L_0598, L_12D6, L_3944, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17E1 (sub_17E1)
 * segment: seg3.asm    offset: 0x17E1    instructions: 47
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0598, L_0B92, L_0C78, L_1864, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1864 (sub_1864)
 * segment: seg3.asm    offset: 0x1864    instructions: 72
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0598, L_0D45, L_12D6, L_1A48, L_1FB8, L_2066 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1864(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_190A (sub_190A)
 * segment: seg3.asm    offset: 0x190A    instructions: 127
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   DRAWTEXT(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_08DE, L_0CC6, L_1F6D, L_24E7, L_2503, L_43CA ... +1
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_190A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A48 (sub_1A48)
 * segment: seg3.asm    offset: 0x1A48    instructions: 53
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_1ACA, L_1B10, L_1B87, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A48(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1ACA (sub_1ACA)
 * segment: seg3.asm    offset: 0x1ACA    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_35FF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1ACA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AED (sub_1AED)
 * segment: seg3.asm    offset: 0x1AED    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_35FF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B10 (sub_1B10)
 * segment: seg3.asm    offset: 0x1B10    instructions: 44
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_21E7, L_220A, L_24F6, L_2503, L_2538, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B10(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B87 (sub_1B87)
 * segment: seg3.asm    offset: 0x1B87    instructions: 49
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_220A, L_24E7, L_2503, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B87(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C0E (sub_1C0E)
 * segment: seg3.asm    offset: 0x1C0E    instructions: 66
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *
 * Internal calls: L_0598, L_1A48, L_1C9F, L_1DCD, L_1FB8, L_20C2 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C0E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C9F (sub_1C9F)
 * segment: seg3.asm    offset: 0x1C9F    instructions: 119
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   ANYPOPUP(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SCROLLWINDOW(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0598, L_0C78, L_1ACA, L_1B87, L_1F16, L_1FB8 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C9F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DCD (sub_1DCD)
 * segment: seg3.asm    offset: 0x1DCD    instructions: 127
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ANYPOPUP(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SCROLLWINDOW(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0598, L_0C78, L_1AED, L_1B10, L_1F16, L_1FB8 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DCD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F16 (sub_1F16)
 * segment: seg3.asm    offset: 0x1F16    instructions: 33
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   OFFSETRECT(?)
 *
 * Internal calls: L_1F6D, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F16(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F6D (sub_1F6D)
 * segment: seg3.asm    offset: 0x1F6D    instructions: 6
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F6D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F7E (sub_1F7E)
 * segment: seg3.asm    offset: 0x1F7E    instructions: 25
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F7E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1FB8 (sub_1FB8)
 * segment: seg3.asm    offset: 0x1FB8    instructions: 71
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_0598, L_0B92, L_1F6D, L_24E7, L_2503, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1FB8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2066 (sub_2066)
 * segment: seg3.asm    offset: 0x2066    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETSCROLLRANGE(?)
 *
 * Internal calls: L_2102, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2066(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_208B (sub_208B)
 * segment: seg3.asm    offset: 0x208B    instructions: 24
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETSCROLLRANGE(?)
 *   SETSCROLLRANGE(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_208B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20C2 (sub_20C2)
 * segment: seg3.asm    offset: 0x20C2    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_2102, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20C2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20E8 (sub_20E8)
 * segment: seg3.asm    offset: 0x20E8    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETSCROLLPOS(?)
 *
 * Internal calls: L_20C2, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2102 (sub_2102)
 * segment: seg3.asm    offset: 0x2102    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_212F, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2102(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_211B (sub_211B)
 * segment: seg3.asm    offset: 0x211B    instructions: 9
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_212F, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_211B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_212F (sub_212F)
 * segment: seg3.asm    offset: 0x212F    instructions: 62
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_21C7, L_21E7, L_24F6, L_2503, L_2538, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_212F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_21C7 (sub_21C7)
 * segment: seg3.asm    offset: 0x21C7    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_21C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_21E7 (sub_21E7)
 * segment: seg3.asm    offset: 0x21E7    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_21E7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_220A (sub_220A)
 * segment: seg3.asm    offset: 0x220A    instructions: 60
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2503, L_2538, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_220A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_22AE (sub_22AE)
 * segment: seg3.asm    offset: 0x22AE    instructions: 129
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_0930, L_220A, L_23FE, L_2426, L_246B, L_24E7 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_22AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_23FE (sub_23FE)
 * segment: seg3.asm    offset: 0x23FE    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_23FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2426 (sub_2426)
 * segment: seg3.asm    offset: 0x2426    instructions: 28
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2503, L_2538, L_35FF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2426(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_246B (sub_246B)
 * segment: seg3.asm    offset: 0x246B    instructions: 52
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2503, L_2538, L_31D5, L_35FF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_246B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_24E7 (sub_24E7)
 * segment: seg3.asm    offset: 0x24E7    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_24F6, L_2538, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_24E7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_24F6 (sub_24F6)
 * segment: seg3.asm    offset: 0x24F6    instructions: 5
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2510, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_24F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2503 (sub_2503)
 * segment: seg3.asm    offset: 0x2503    instructions: 5
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2524, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2503(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2510 (sub_2510)
 * segment: seg3.asm    offset: 0x2510    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALLOCK(HANDLE hMem) -> PSTR
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2510(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2524 (sub_2524)
 * segment: seg3.asm    offset: 0x2524    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2524(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2538 (sub_2538)
 * segment: seg3.asm    offset: 0x2538    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2538(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2549 (sub_2549)
 * segment: seg3.asm    offset: 0x2549    instructions: 86
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_24F6, L_2503, L_2538, L_35FF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2549(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_261E (sub_261E)
 * segment: seg3.asm    offset: 0x261E    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0B92, L_24F6, L_2503, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_261E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2642 (sub_2642)
 * segment: seg3.asm    offset: 0x2642    instructions: 89
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_22AE, L_24F6, L_2503, L_2538, L_2549, L_272F ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2642(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_272F (sub_272F)
 * segment: seg3.asm    offset: 0x272F    instructions: 84
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ANSINEXT(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0B92, L_2811, L_31D5, L_57CD, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_272F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2811 (sub_2811)
 * segment: seg3.asm    offset: 0x2811    instructions: 80
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *
 * Internal calls: L_0930, L_0ADF, L_12D6, L_31D5, L_3490, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2811(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_28C3 (sub_28C3)
 * segment: seg3.asm    offset: 0x28C3    instructions: 66
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0598, L_14A1, L_1864, L_2510, L_2524, L_2951 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_28C3(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2951 (sub_2951)
 * segment: seg3.asm    offset: 0x2951    instructions: 11
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETCURSOR(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2951(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2971 (sub_2971)
 * segment: seg3.asm    offset: 0x2971    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SETCURSOR(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2971(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2986 (sub_2986)
 * segment: seg3.asm    offset: 0x2986    instructions: 125
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   GETFOCUS(?)
 *   GETKEYSTATE(?)
 *   GETMENU(?)
 *   HILITEMENUITEM(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *
 * Internal calls: L_28C3, L_2C30, L_32E8, L_3BFF, L_416C, L_41F6 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2986(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2ABE (sub_2ABE)
 * segment: seg3.asm    offset: 0x2ABE    instructions: 149
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETFOCUS(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_08AD, L_0B1E, L_0C78, L_12D6, L_13A5, L_1484 ... +8
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2ABE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2C30 (sub_2C30)
 * segment: seg3.asm    offset: 0x2C30    instructions: 48
 * classification (pass8): unclear
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *
 * Internal calls: L_57CD, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2C30(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2CAF (sub_2CAF)
 * segment: seg3.asm    offset: 0x2CAF    instructions: 69
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISWINDOWENABLED(?)
 *
 * Internal calls: L_31D5, L_3256, L_3BFF
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2CAF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D5D (sub_2D5D)
 * segment: seg3.asm    offset: 0x2D5D    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D5D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D73 (sub_2D73)
 * segment: seg3.asm    offset: 0x2D73    instructions: 32
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_32AE, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D73(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2DC1 (sub_2DC1)
 * segment: seg3.asm    offset: 0x2DC1    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMINT(?)
 *
 * Internal calls: L_0ADF, L_3362, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2DC1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E68 (sub_2E68)
 * segment: seg3.asm    offset: 0x2E68    instructions: 33
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMINT(?)
 *
 * Internal calls: L_31D5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E68(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2EBB (sub_2EBB)
 * segment: seg3.asm    offset: 0x2EBB    instructions: 79
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ISDLGBUTTONCHECKED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_08DE, L_32AE, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2EBB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2F80 (sub_2F80)
 * segment: seg3.asm    offset: 0x2F80    instructions: 59
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *
 * Internal calls: L_0A96, L_220A, L_31D5, L_32AE, L_3362
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2F80(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3018 (sub_3018)
 * segment: seg3.asm    offset: 0x3018    instructions: 171
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0598, L_08DE, L_0A96, L_3362, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3018(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_31D5 (sub_31D5)
 * segment: seg3.asm    offset: 0x31D5    instructions: 23
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_320B, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_31D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_320B (sub_320B)
 * segment: seg3.asm    offset: 0x320B    instructions: 35
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_320B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3256 (sub_3256)
 * segment: seg3.asm    offset: 0x3256    instructions: 40
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3256(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_32AE (sub_32AE)
 * segment: seg3.asm    offset: 0x32AE    instructions: 23
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_32AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_32E8 (sub_32E8)
 * segment: seg3.asm    offset: 0x32E8    instructions: 36
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2C30, L_31D5, L_3341, L_3BFF, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_32E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3341 (sub_3341)
 * segment: seg3.asm    offset: 0x3341    instructions: 12
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETFOCUS(?)
 *
 * Internal calls: L_22AE, L_2549, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3341(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3362 (sub_3362)
 * segment: seg3.asm    offset: 0x3362    instructions: 57
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_08DE, L_31D5, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3362(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33FF (sub_33FF)
 * segment: seg3.asm    offset: 0x33FF    instructions: 42
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *
 * Internal calls: L_1237, L_12D6, L_3490, L_3695, L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_346F (sub_346F)
 * segment: seg3.asm    offset: 0x346F    instructions: 13
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_346F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3490 (sub_3490)
 * segment: seg3.asm    offset: 0x3490    instructions: 55
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3490(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3519 (sub_3519)
 * segment: seg3.asm    offset: 0x3519    instructions: 52
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Internal calls: L_31D5, L_35FF, L_3695, L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3519(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_359F (sub_359F)
 * segment: seg3.asm    offset: 0x359F    instructions: 37
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Internal calls: L_35FF, L_3695, L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_359F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_35FF (sub_35FF)
 * segment: seg3.asm    offset: 0x35FF    instructions: 34
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_35FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3656 (sub_3656)
 * segment: seg3.asm    offset: 0x3656    instructions: 25
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_359F, L_3695, L_36A4, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3656(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3695 (sub_3695)
 * segment: seg3.asm    offset: 0x3695    instructions: 5
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALLOCK(HANDLE hMem) -> PSTR
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3695(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36A4 (sub_36A4)
 * segment: seg3.asm    offset: 0x36A4    instructions: 5
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36A4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36B3 (sub_36B3)
 * segment: seg3.asm    offset: 0x36B3    instructions: 19
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_31D5, L_36E1, L_36FB, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36B3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36E1 (sub_36E1)
 * segment: seg3.asm    offset: 0x36E1    instructions: 9
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_4091, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36FB (sub_36FB)
 * segment: seg3.asm    offset: 0x36FB    instructions: 37
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36FB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_374E (sub_374E)
 * segment: seg3.asm    offset: 0x374E    instructions: 47
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_31D5, L_37C6, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_374E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_37C6 (sub_37C6)
 * segment: seg3.asm    offset: 0x37C6    instructions: 70
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *
 * Internal calls: L_4061, L_40C6, L_414F, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_37C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3879 (sub_3879)
 * segment: seg3.asm    offset: 0x3879    instructions: 80
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Internal calls: L_40C6, L_414F, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3879(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3944 (sub_3944)
 * segment: seg3.asm    offset: 0x3944    instructions: 169
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETFOCUS(?)
 *
 * Internal calls: L_0598, L_2510, L_2524, L_3490, L_3519, L_3656 ... +6
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3944(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B1F (sub_3B1F)
 * segment: seg3.asm    offset: 0x3B1F    instructions: 12
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B1F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B44 (sub_3B44)
 * segment: seg3.asm    offset: 0x3B44    instructions: 74
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_37C6, L_3879, L_3F13, L_40C6
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B44(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3BFF (sub_3BFF)
 * segment: seg3.asm    offset: 0x3BFF    instructions: 196
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LCREAT(LPSTR lpszPath, INT wAttribute) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *
 * Internal calls: L_2510, L_2524, L_2951, L_2971, L_31D5, L_3341 ... +17
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3BFF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3DF1 (sub_3DF1)
 * segment: seg3.asm    offset: 0x3DF1    instructions: 42
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETFOCUS(?)
 *
 * Internal calls: L_0598, L_12D6, L_2510, L_2524, L_3490, L_3695 ... +3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3DF1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3E56 (sub_3E56)
 * segment: seg3.asm    offset: 0x3E56    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0AC8, L_57C0, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3E56(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3E7A (sub_3E7A)
 * segment: seg3.asm    offset: 0x3E7A    instructions: 58
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2510, L_2524, L_3490, L_3656, L_3695, L_36A4 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3E7A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3F13 (sub_3F13)
 * segment: seg3.asm    offset: 0x3F13    instructions: 17
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3F13(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3F3F (sub_3F3F)
 * segment: seg3.asm    offset: 0x3F3F    instructions: 135
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *
 * Internal calls: L_09EE, L_35FF, L_3F13, L_4061, L_40C6, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3F3F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4061 (sub_4061)
 * segment: seg3.asm    offset: 0x4061    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Internal calls: L_31D5, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4061(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4091 (sub_4091)
 * segment: seg3.asm    offset: 0x4091    instructions: 23
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_3F13, L_40C6, L_5785, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4091(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_40C6 (sub_40C6)
 * segment: seg3.asm    offset: 0x40C6    instructions: 22
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_40C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_40F9 (sub_40F9)
 * segment: seg3.asm    offset: 0x40F9    instructions: 34
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0930, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_40F9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_414F (sub_414F)
 * segment: seg3.asm    offset: 0x414F    instructions: 12
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_3F13, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_414F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_416C (sub_416C)
 * segment: seg3.asm    offset: 0x416C    instructions: 45
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0598, L_17E1, L_2510, L_2524, L_2951, L_2971 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_416C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_41F6 (sub_41F6)
 * segment: seg3.asm    offset: 0x41F6    instructions: 29
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_4234, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_41F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4234 (sub_4234)
 * segment: seg3.asm    offset: 0x4234    instructions: 171
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Internal calls: L_17E1, L_2971, L_31D5, L_3519, L_35FF, L_3695 ... +7
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4234(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_43CA (sub_43CA)
 * segment: seg3.asm    offset: 0x43CA    instructions: 21
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_24E7, L_2503, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_43CA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4402 (sub_4402)
 * segment: seg3.asm    offset: 0x4402    instructions: 175
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1F6D, L_220A, L_23FE, L_2426, L_246B, L_24E7 ... +7
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4402(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_45D2 (sub_45D2)
 * segment: seg3.asm    offset: 0x45D2    instructions: 82
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *
 * Internal calls: L_2C30, L_31D5, L_46A7, L_482D, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_45D2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_46A7 (sub_46A7)
 * segment: seg3.asm    offset: 0x46A7    instructions: 125
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_08DE, L_0930, L_2510, L_2524, L_2538, L_2951 ... +7
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_46A7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_47EB (sub_47EB)
 * segment: seg3.asm    offset: 0x47EB    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2510, L_2524, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_47EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4809 (sub_4809)
 * segment: seg3.asm    offset: 0x4809    instructions: 14
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2510, L_2524, L_3879, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4809(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_482D (sub_482D)
 * segment: seg3.asm    offset: 0x482D    instructions: 11
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   FLASHWINDOW(?)
 *
 * Internal calls: L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_482D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_484B (sub_484B)
 * segment: seg3.asm    offset: 0x484B    instructions: 27
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0598, L_208B, L_246B, L_491C, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_484B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_488E (sub_488E)
 * segment: seg3.asm    offset: 0x488E    instructions: 58
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0598, L_208B, L_2426, L_24F6, L_2503, L_2538 ... +6
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_488E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_491C (sub_491C)
 * segment: seg3.asm    offset: 0x491C    instructions: 75
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0A67, L_1A48, L_1FB8, L_20C2, L_24F6, L_2503 ... +3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_491C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_49D0 (sub_49D0)
 * segment: seg3.asm    offset: 0x49D0    instructions: 94
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETTEXTMETRICS(?)
 *
 * Internal calls: L_3695, L_36A4, L_47EB, L_4809, L_4ACF, L_4D27 ... +3
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_49D0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4ACF (sub_4ACF)
 * segment: seg3.asm    offset: 0x4ACF    instructions: 152
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_08DE, L_0930, L_09EE, L_2510, L_2524, L_2538 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4ACF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4C66 (sub_4C66)
 * segment: seg3.asm    offset: 0x4C66    instructions: 31
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_09B9, L_0B1E, L_4CB3, L_4CDA, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4C66(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4CB3 (sub_4CB3)
 * segment: seg3.asm    offset: 0x4CB3    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_4CDA, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4CB3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4CDA (sub_4CDA)
 * segment: seg3.asm    offset: 0x4CDA    instructions: 30
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_4D27, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4CDA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4D27 (sub_4D27)
 * segment: seg3.asm    offset: 0x4D27    instructions: 103
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CREATEDIALOG(?)
 *   ENABLEWINDOW(?)
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *
 * Internal calls: L_2951, L_2971, L_4E28, L_4F4D, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4D27(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4E28 (sub_4E28)
 * segment: seg3.asm    offset: 0x4E28    instructions: 102
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETSYSTEMMENU(?)
 *   ISDIALOGMESSAGE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_0598, L_2971, L_4F2B, L_57CD, L_57F5
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4E28(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4F2B (sub_4F2B)
 * segment: seg3.asm    offset: 0x4F2B    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4F2B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4F4D (sub_4F4D)
 * segment: seg3.asm    offset: 0x4F4D    instructions: 723
 * classification (pass8): c_medium
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   GETOBJECT(?)
 *   GETTEXTMETRICS(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSTEMMENU(?)
 *   GETSYSTEMMETRICS(?)
 *   LOADACCELERATORS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   REGISTERCLASS(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETTIMER(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0501, L_054F, L_06E0, L_09EE, L_0BC2, L_12D6 ... +8
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4F4D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_56A7 (sub_56A7)
 * segment: seg3.asm    offset: 0x56A7    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_56A7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_56D5 (sub_56D5)
 * segment: seg3.asm    offset: 0x56D5    instructions: 35
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_56D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5727 (sub_5727)
 * segment: seg3.asm    offset: 0x5727    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Internal calls: L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5727(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_575D (sub_575D)
 * segment: seg3.asm    offset: 0x575D    instructions: 15
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Internal calls: L_0C11, L_5727, L_57CD
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_575D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5785 (sub_5785)
 * segment: seg3.asm    offset: 0x5785    instructions: 15
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5785(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_57A0 (sub_57A0)
 * segment: seg3.asm    offset: 0x57A0    instructions: 18
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_57A0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_57C0 (sub_57C0)
 * segment: seg3.asm    offset: 0x57C0    instructions: 9
 * classification (pass8): asm_medium
 * prologue: saves_regs    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_57C0(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_57CD (sub_57CD)
 * segment: seg3.asm    offset: 0x57CD    instructions: 97
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_57CD(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00E3 (sub_00E3)
 * segment: seg4.asm    offset: 0x00E3    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00E3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0104 (sub_0104)
 * segment: seg4.asm    offset: 0x0104    instructions: 50
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: unknown
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0104(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01C1 (sub_01C1)
 * segment: seg6.asm    offset: 0x01C1    instructions: 43
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01C1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01B9 (sub_01B9)
 * segment: seg7.asm    offset: 0x01B9    instructions: 20
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01EB (sub_01EB)
 * segment: seg7.asm    offset: 0x01EB    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ISTWOBYTECHARPREFIX(?)
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0254 (sub_0254)
 * segment: seg7.asm    offset: 0x0254    instructions: 82
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0254(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0113 (sub_0113)
 * segment: seg8.asm    offset: 0x0113    instructions: 18
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0113(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0193 (sub_0193)
 * segment: seg9.asm    offset: 0x0193    instructions: 29
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0193(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01D3 (sub_01D3)
 * segment: seg9.asm    offset: 0x01D3    instructions: 33
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FINDRESOURCE(?)
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   LOADRESOURCE(?)
 *
 * Reverse-engineering hints:
 *   See src/CALENDAR/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01D3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

