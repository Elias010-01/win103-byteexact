/*
 * REVERSI.c - Reconstructed C scaffold for Windows 1.x REVERSI.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of REVERSI.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/REVERSI/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/REVERSI/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 46
 * Total API call sites: 110
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
 * sub_006C (sub_006C)
 * segment: seg1.asm    offset: 0x006C    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_03F2, L_0B27
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_006C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0115 (sub_0115)
 * segment: seg1.asm    offset: 0x0115    instructions: 109
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_08DD, L_120D
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0115(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0231 (sub_0231)
 * segment: seg1.asm    offset: 0x0231    instructions: 23
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_160A
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0231(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0270 (sub_0270)
 * segment: seg1.asm    offset: 0x0270    instructions: 130
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_03F2, L_0429, L_064B, L_08DD, L_0B27, L_1349 ... +1
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0270(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03F2 (sub_03F2)
 * segment: seg1.asm    offset: 0x03F2    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0429 (sub_0429)
 * segment: seg1.asm    offset: 0x0429    instructions: 106
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0BE0, L_2082
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0429(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0537 (sub_0537)
 * segment: seg1.asm    offset: 0x0537    instructions: 43
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEACCELERATOR(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_223E
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0537(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0598 (sub_0598)
 * segment: seg1.asm    offset: 0x0598    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0598(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_064B (sub_064B)
 * segment: seg1.asm    offset: 0x064B    instructions: 166
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_0812
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_064B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0812 (sub_0812)
 * segment: seg1.asm    offset: 0x0812    instructions: 67
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0812(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08DD (sub_08DD)
 * segment: seg1.asm    offset: 0x08DD    instructions: 194
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_0598
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08DD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B27 (sub_0B27)
 * segment: seg1.asm    offset: 0x0B27    instructions: 64
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B27(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BE0 (sub_0BE0)
 * segment: seg1.asm    offset: 0x0BE0    instructions: 62
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_120D, L_12B8
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BE0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C7A (sub_0C7A)
 * segment: seg1.asm    offset: 0x0C7A    instructions: 228
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATEPATTERNBRUSH(?)
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   GETDC(HWND hWnd) -> HDC
 *   LOADACCELERATORS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C7A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EBA (sub_0EBA)
 * segment: seg1.asm    offset: 0x0EBA    instructions: 45
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EBA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F41 (sub_0F41)
 * segment: seg1.asm    offset: 0x0F41    instructions: 18
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_0C7A
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F41(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F70 (sub_0F70)
 * segment: seg1.asm    offset: 0x0F70    instructions: 258
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETINSTANCEDATA(?)
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETSYSTEMMENU(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0537
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F70(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_120D (sub_120D)
 * segment: seg1.asm    offset: 0x120D    instructions: 67
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTEXTENT(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Internal calls: L_1349, L_1398
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_120D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12B8 (sub_12B8)
 * segment: seg1.asm    offset: 0x12B8    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETTIMER(?)
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12B8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1332 (sub_1332)
 * segment: seg1.asm    offset: 0x1332    instructions: 10
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   KILLTIMER(?)
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1332(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1349 (sub_1349)
 * segment: seg1.asm    offset: 0x1349    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1349(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1398 (sub_1398)
 * segment: seg1.asm    offset: 0x1398    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1398(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13BA (sub_13BA)
 * segment: seg1.asm    offset: 0x13BA    instructions: 70
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETCURSOR(?)
 *
 * Internal calls: L_2082
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13BA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1479 (sub_1479)
 * segment: seg1.asm    offset: 0x1479    instructions: 142
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *
 * Internal calls: L_0429, L_064B, L_1349, L_1E2A, L_2082, L_20A6
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1479(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_160A (sub_160A)
 * segment: seg1.asm    offset: 0x160A    instructions: 154
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0812, L_13BA, L_1B6E, L_1E2A, L_2082
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_160A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17BD (sub_17BD)
 * segment: seg1.asm    offset: 0x17BD    instructions: 89
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_13BA, L_18B3, L_18DC, L_1B6E, L_2082
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_18B3 (sub_18B3)
 * segment: seg1.asm    offset: 0x18B3    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_18B3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_18DC (sub_18DC)
 * segment: seg1.asm    offset: 0x18DC    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_18DC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1905 (sub_1905)
 * segment: seg1.asm    offset: 0x1905    instructions: 230
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETKEYSTATE(?)
 *
 * Internal calls: L_13BA, L_1479, L_17BD, L_1B6E
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1905(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B6E (sub_1B6E)
 * segment: seg1.asm    offset: 0x1B6E    instructions: 244
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETMODULEUSAGE(HANDLE hModule) -> INT
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CLIENTTOSCREEN(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETMENU(?)
 *   GETSYSTEMMETRICS(?)
 *   ISICONIC(?)
 *   POSTQUITMESSAGE(?)
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *   SETCURSORPOS(?)
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_006C, L_0115, L_0231, L_13BA, L_1479, L_1905
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B6E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E2A (sub_1E2A)
 * segment: seg1.asm    offset: 0x1E2A    instructions: 136
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0537, L_064B, L_1E2A, L_1F72, L_1F9B, L_1FDA ... +1
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E2A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F72 (sub_1F72)
 * segment: seg1.asm    offset: 0x1F72    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F72(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F78 (sub_1F78)
 * segment: seg1.asm    offset: 0x1F78    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F78(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F9B (sub_1F9B)
 * segment: seg1.asm    offset: 0x1F9B    instructions: 6
 * classification (pass8): unclear
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F9B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1FAC (sub_1FAC)
 * segment: seg1.asm    offset: 0x1FAC    instructions: 24
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1FAC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1FDA (sub_1FDA)
 * segment: seg1.asm    offset: 0x1FDA    instructions: 45
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1FDA(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2046 (sub_2046)
 * segment: seg1.asm    offset: 0x2046    instructions: 29
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2046(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2082 (sub_2082)
 * segment: seg1.asm    offset: 0x2082    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1F78
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2082(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20A6 (sub_20A6)
 * segment: seg1.asm    offset: 0x20A6    instructions: 58
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_0F41, L_1FAC, L_2274, L_2306
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2135 (sub_2135)
 * segment: seg1.asm    offset: 0x2135    instructions: 130
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
 * Internal calls: L_2316
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2135(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_223E (sub_223E)
 * segment: seg1.asm    offset: 0x223E    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_2135, L_2333
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_223E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2274 (sub_2274)
 * segment: seg1.asm    offset: 0x2274    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2274(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2306 (sub_2306)
 * segment: seg1.asm    offset: 0x2306    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_223E, L_2321
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2306(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2316 (sub_2316)
 * segment: seg1.asm    offset: 0x2316    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2316(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2321 (sub_2321)
 * segment: seg1.asm    offset: 0x2321    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2321(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2333 (sub_2333)
 * segment: seg1.asm    offset: 0x2333    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/REVERSI/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2333(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

