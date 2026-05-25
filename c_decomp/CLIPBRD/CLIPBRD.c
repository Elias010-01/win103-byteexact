/*
 * CLIPBRD.c - Reconstructed C scaffold for Windows 1.x CLIPBRD.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CLIPBRD.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CLIPBRD/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CLIPBRD/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 26
 * Total API call sites: 114
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
 * segment: seg1.asm    offset: 0x0036    instructions: 544
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CHANGECLIPBOARDCHAIN(?)
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   GETSYSCOLOR(?)
 *   GETSYSTEMMENU(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   ISWINDOWENABLED(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   OPENCLIPBOARD(?)
 *   POSTQUITMESSAGE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCLIPBOARDVIEWER(?)
 *   SETFOCUS(?)
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_0578, L_05F8, L_0746, L_088E, L_134C, L_13C6
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0036(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0578 (sub_0578)
 * segment: seg1.asm    offset: 0x0578    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   GETSYSCOLOR(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0578(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05F8 (sub_05F8)
 * segment: seg1.asm    offset: 0x05F8    instructions: 144
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SCROLLWINDOW(?)
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1600, L_16A1, L_1705, L_1768
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05F8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0746 (sub_0746)
 * segment: seg1.asm    offset: 0x0746    instructions: 144
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SCROLLWINDOW(?)
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1600, L_16A1, L_1705, L_1768
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0746(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_088E (sub_088E)
 * segment: seg1.asm    offset: 0x088E    instructions: 329
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETTEXTEXTENT(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CLOSECLIPBOARD(?)
 *   COPYRECT(?)
 *   COUNTCLIPBOARDFORMATS(?)
 *   ENUMCLIPBOARDFORMATS(?)
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETCLIPBOARDFORMATNAME(?)
 *   INFLATERECT(?)
 *   INTERSECTRECT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_0C02, L_134C, L_13C6
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_088E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C02 (sub_0C02)
 * segment: seg1.asm    offset: 0x0C02    instructions: 82
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETCLIPBOARDDATA(?)
 *
 * Internal calls: L_0CD8, L_0DBF, L_1072, L_10C5
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C02(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CD8 (sub_0CD8)
 * segment: seg1.asm    offset: 0x0CD8    instructions: 84
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETOBJECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CD8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DBF (sub_0DBF)
 * segment: seg1.asm    offset: 0x0DBF    instructions: 65
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   SAVEDC(?)
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_0F92
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DBF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E60 (sub_0E60)
 * segment: seg1.asm    offset: 0x0E60    instructions: 101
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   INTERSECTCLIPRECT(?)
 *   PLAYMETAFILE(?)
 *   RESTOREDC(?)
 *   SETBRUSHORG(?)
 *   SETMAPMODE(HDC hDC, INT iMode) -> INT
 *   SETVIEWPORTEXT(?)
 *   SETVIEWPORTORG(?)
 *   SETWINDOWEXT(?)
 *
 * Internal calls: L_0F92
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E60(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F92 (sub_0F92)
 * segment: seg1.asm    offset: 0x0F92    instructions: 88
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1705, L_1768
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F92(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1072 (sub_1072)
 * segment: seg1.asm    offset: 0x1072    instructions: 33
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DRAWTEXT(?)
 *   FILLRECT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1072(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10C5 (sub_10C5)
 * segment: seg1.asm    offset: 0x10C5    instructions: 173
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_1072, L_12B3
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12B3 (sub_12B3)
 * segment: seg1.asm    offset: 0x12B3    instructions: 71
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12B3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_134C (sub_134C)
 * segment: seg1.asm    offset: 0x134C    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_13C6
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_134C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13C6 (sub_13C6)
 * segment: seg1.asm    offset: 0x13C6    instructions: 57
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   GETCLIPBOARDOWNER(?)
 *   INITAPP(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_0036, L_155E, L_15F0
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1455 (sub_1455)
 * segment: seg1.asm    offset: 0x1455    instructions: 130
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
 * Internal calls: L_178E
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1455(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_155E (sub_155E)
 * segment: seg1.asm    offset: 0x155E    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_155E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15F0 (sub_15F0)
 * segment: seg1.asm    offset: 0x15F0    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1799, L_17CF
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1600 (sub_1600)
 * segment: seg1.asm    offset: 0x1600    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1768
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1600(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_16A1 (sub_16A1)
 * segment: seg1.asm    offset: 0x16A1    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_16A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1705 (sub_1705)
 * segment: seg1.asm    offset: 0x1705    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1768
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1705(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1768 (sub_1768)
 * segment: seg1.asm    offset: 0x1768    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1768(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_178E (sub_178E)
 * segment: seg1.asm    offset: 0x178E    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_178E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1799 (sub_1799)
 * segment: seg1.asm    offset: 0x1799    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_1455, L_17E1
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1799(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17CF (sub_17CF)
 * segment: seg1.asm    offset: 0x17CF    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17CF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17E1 (sub_17E1)
 * segment: seg1.asm    offset: 0x17E1    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CLIPBRD/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

