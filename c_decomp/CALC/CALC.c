/*
 * CALC.c - Reconstructed C scaffold for Windows 1.x CALC.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CALC.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CALC/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CALC/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 132
 * Total API call sites: 138
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
 * segment: seg1.asm    offset: 0x0000    instructions: 171
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_13C9
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_019E (sub_019E)
 * segment: seg1.asm    offset: 0x019E    instructions: 100
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_029F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_019E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_029F (sub_029F)
 * segment: seg1.asm    offset: 0x029F    instructions: 92
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ROUNDRECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_029F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_037C (sub_037C)
 * segment: seg1.asm    offset: 0x037C    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETCURSOR(?)
 *
 * Internal calls: L_217D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_037C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_038F (sub_038F)
 * segment: seg1.asm    offset: 0x038F    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_038F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0403 (sub_0403)
 * segment: seg1.asm    offset: 0x0403    instructions: 352
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   POLYGON(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBRUSHORG(?)
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   UNREALIZEOBJECT(?)
 *   CLIENTTOSCREEN(?)
 *   FRAMERECT(?)
 *   INFLATERECT(?)
 *
 * Internal calls: L_0D7F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0403(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0799 (sub_0799)
 * segment: seg1.asm    offset: 0x0799    instructions: 101
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   ROUNDRECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   UNREALIZEOBJECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0799(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08A2 (sub_08A2)
 * segment: seg1.asm    offset: 0x08A2    instructions: 264
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   UNREALIZEOBJECT(?)
 *   GETMODULEUSAGE(HANDLE hModule) -> INT
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CLOSECLIPBOARD(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   GETMENU(?)
 *   ISCLIPBOARDFORMATAVAILABLE(?)
 *   OPENCLIPBOARD(?)
 *   POSTQUITMESSAGE(?)
 *   PTINRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_029F, L_037C, L_038F, L_0403, L_0D20, L_1BCB ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08A2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B8C (sub_0B8C)
 * segment: seg1.asm    offset: 0x0B8C    instructions: 137
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   HILITEMENUITEM(?)
 *   ISICONIC(?)
 *
 * Internal calls: L_08A2, L_1BCB, L_1CAA, L_21B9
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B8C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D01 (sub_0D01)
 * segment: seg1.asm    offset: 0x0D01    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D01(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D20 (sub_0D20)
 * segment: seg1.asm    offset: 0x0D20    instructions: 42
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DPTOLP(HDC hDC, LPPOINT lpPoints, INT nCount) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_019E, L_0D01, L_1F51
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D20(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D7F (sub_0D7F)
 * segment: seg1.asm    offset: 0x0D7F    instructions: 87
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ROUNDRECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Internal calls: L_0799
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D7F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E51 (sub_0E51)
 * segment: seg1.asm    offset: 0x0E51    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_108F, L_1128
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E51(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E83 (sub_0E83)
 * segment: seg1.asm    offset: 0x0E83    instructions: 215
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETINSTANCEDATA(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   GETSYSTEMMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E83(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_108F (sub_108F)
 * segment: seg1.asm    offset: 0x108F    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Internal calls: L_1176, L_11EB
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_108F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1128 (sub_1128)
 * segment: seg1.asm    offset: 0x1128    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATECOMPATIBLEBITMAP(?)
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1128(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1176 (sub_1176)
 * segment: seg1.asm    offset: 0x1176    instructions: 48
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETTEXTMETRICS(?)
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1176(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11EB (sub_11EB)
 * segment: seg1.asm    offset: 0x11EB    instructions: 150
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATEPATTERNBRUSH(?)
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_135F (sub_135F)
 * segment: seg1.asm    offset: 0x135F    instructions: 29
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_135F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_139D (sub_139D)
 * segment: seg1.asm    offset: 0x139D    instructions: 26
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_419E
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_139D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13C9 (sub_13C9)
 * segment: seg1.asm    offset: 0x13C9    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13C9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1400 (sub_1400)
 * segment: seg1.asm    offset: 0x1400    instructions: 133
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_135F, L_13C9, L_240E, L_245B, L_2548, L_25A0 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1400(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1558 (sub_1558)
 * segment: seg1.asm    offset: 0x1558    instructions: 37
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1558(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15AC (sub_15AC)
 * segment: seg1.asm    offset: 0x15AC    instructions: 46
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_13C9
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15AC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1614 (sub_1614)
 * segment: seg1.asm    offset: 0x1614    instructions: 33
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_13C9, L_1558, L_15AC
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1614(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_165C (sub_165C)
 * segment: seg1.asm    offset: 0x165C    instructions: 331
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_139D, L_1400, L_1B38, L_240E, L_2548, L_25A0 ... +8
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_165C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19E8 (sub_19E8)
 * segment: seg1.asm    offset: 0x19E8    instructions: 99
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_139D, L_1400, L_1B38, L_240E, L_275B, L_27CA ... +1
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AC0 (sub_1AC0)
 * segment: seg1.asm    offset: 0x1AC0    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_165C
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AC0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AEE (sub_1AEE)
 * segment: seg1.asm    offset: 0x1AEE    instructions: 27
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AEE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B38 (sub_1B38)
 * segment: seg1.asm    offset: 0x1B38    instructions: 66
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_13C9, L_1400, L_240E, L_275B
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B38(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BCB (sub_1BCB)
 * segment: seg1.asm    offset: 0x1BCB    instructions: 88
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   GETCLIPBOARDDATA(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_08A2
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BCB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1CAA (sub_1CAA)
 * segment: seg1.asm    offset: 0x1CAA    instructions: 42
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CLOSECLIPBOARD(?)
 *   EMPTYCLIPBOARD(?)
 *   OPENCLIPBOARD(?)
 *   SETCLIPBOARDDATA(?)
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1CAA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D10 (sub_1D10)
 * segment: seg1.asm    offset: 0x1D10    instructions: 112
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_139D, L_1400, L_240E, L_2548, L_26BE, L_271E ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D10(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E23 (sub_1E23)
 * segment: seg1.asm    offset: 0x1E23    instructions: 12
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_41F3
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E23(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E3E (sub_1E3E)
 * segment: seg1.asm    offset: 0x1E3E    instructions: 112
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_139D, L_1400, L_240E, L_2548, L_26A6, L_271E ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E3E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F51 (sub_1F51)
 * segment: seg1.asm    offset: 0x1F51    instructions: 117
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_1614, L_165C, L_19E8, L_1AC0, L_1AEE, L_1B38 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F51(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2084 (sub_2084)
 * segment: seg1.asm    offset: 0x2084    instructions: 101
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_139D, L_1400, L_1B38, L_240E, L_2548, L_25A0 ... +4
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2084(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_217D (sub_217D)
 * segment: seg1.asm    offset: 0x217D    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_217D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_21B9 (sub_21B9)
 * segment: seg1.asm    offset: 0x21B9    instructions: 51
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_1400, L_240E, L_2575, L_419E
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_21B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2230 (sub_2230)
 * segment: seg1.asm    offset: 0x2230    instructions: 40
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_0E51, L_407B, L_410D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2230(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2295 (sub_2295)
 * segment: seg1.asm    offset: 0x2295    instructions: 11
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2295(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_22A6 (sub_22A6)
 * segment: seg1.asm    offset: 0x22A6    instructions: 177
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
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
 * Internal calls: L_422F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_22A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_240E (sub_240E)
 * segment: seg1.asm    offset: 0x240E    instructions: 36
 * classification (pass8): asm_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_240E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_245B (sub_245B)
 * segment: seg1.asm    offset: 0x245B    instructions: 75
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2E4E, L_31B9
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_245B(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_24FA (sub_24FA)
 * segment: seg1.asm    offset: 0x24FA    instructions: 16
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_24FA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_251A (sub_251A)
 * segment: seg1.asm    offset: 0x251A    instructions: 22
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_2926
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_251A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2548 (sub_2548)
 * segment: seg1.asm    offset: 0x2548    instructions: 23
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_28A3
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2548(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2575 (sub_2575)
 * segment: seg1.asm    offset: 0x2575    instructions: 21
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: ret
 *
 * Internal calls: L_2A4A, L_2A4F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2575(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_25A0 (sub_25A0)
 * segment: seg1.asm    offset: 0x25A0    instructions: 145
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_2869, L_287F, L_28A6
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_25A0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26A6 (sub_26A6)
 * segment: seg1.asm    offset: 0x26A6    instructions: 14
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_287F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26BE (sub_26BE)
 * segment: seg1.asm    offset: 0x26BE    instructions: 14
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_287F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26BE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26D6 (sub_26D6)
 * segment: seg1.asm    offset: 0x26D6    instructions: 14
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_287F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26EE (sub_26EE)
 * segment: seg1.asm    offset: 0x26EE    instructions: 28
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_287F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_271E (sub_271E)
 * segment: seg1.asm    offset: 0x271E    instructions: 20
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_2897
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_271E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_274C (sub_274C)
 * segment: seg1.asm    offset: 0x274C    instructions: 4
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_274C(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2756 (sub_2756)
 * segment: seg1.asm    offset: 0x2756    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2756(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_275B (sub_275B)
 * segment: seg1.asm    offset: 0x275B    instructions: 45
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2897
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_275B(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_27CA (sub_27CA)
 * segment: seg1.asm    offset: 0x27CA    instructions: 80
 * classification (pass8): asm_high
 * prologue: none    epilogue: retf
 *
 * Internal calls: L_3FD7
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_27CA(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2869 (sub_2869)
 * segment: seg1.asm    offset: 0x2869    instructions: 12
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2869(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_287F (sub_287F)
 * segment: seg1.asm    offset: 0x287F    instructions: 14
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_287F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2897 (sub_2897)
 * segment: seg1.asm    offset: 0x2897    instructions: 4
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2897(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_28A3 (sub_28A3)
 * segment: seg1.asm    offset: 0x28A3    instructions: 1
 * classification (pass8): tiny
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_28A3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_28A6 (sub_28A6)
 * segment: seg1.asm    offset: 0x28A6    instructions: 54
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_28A6(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2926 (sub_2926)
 * segment: seg1.asm    offset: 0x2926    instructions: 131
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2A40, L_2A45, L_2A4A, L_2A4F, L_2A6F, L_2A74 ... +2
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2926(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A40 (sub_2A40)
 * segment: seg1.asm    offset: 0x2A40    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2A6F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A40(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A45 (sub_2A45)
 * segment: seg1.asm    offset: 0x2A45    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2A74
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A45(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A4A (sub_2A4A)
 * segment: seg1.asm    offset: 0x2A4A    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2AC5
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A4A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A4F (sub_2A4F)
 * segment: seg1.asm    offset: 0x2A4F    instructions: 15
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2A90
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A4F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A6F (sub_2A6F)
 * segment: seg1.asm    offset: 0x2A6F    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2AC5
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A6F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A74 (sub_2A74)
 * segment: seg1.asm    offset: 0x2A74    instructions: 13
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2A90
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A74(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A90 (sub_2A90)
 * segment: seg1.asm    offset: 0x2A90    instructions: 27
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A90(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2AC5 (sub_2AC5)
 * segment: seg1.asm    offset: 0x2AC5    instructions: 98
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2BAD, L_2BF4, L_2C7F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2AC5(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2BAD (sub_2BAD)
 * segment: seg1.asm    offset: 0x2BAD    instructions: 30
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2BAD(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2BF4 (sub_2BF4)
 * segment: seg1.asm    offset: 0x2BF4    instructions: 61
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2BF4(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2C7F (sub_2C7F)
 * segment: seg1.asm    offset: 0x2C7F    instructions: 208
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2C7F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E4E (sub_2E4E)
 * segment: seg1.asm    offset: 0x2E4E    instructions: 22
 * classification (pass8): asm_medium
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E4E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E7C (sub_2E7C)
 * segment: seg1.asm    offset: 0x2E7C    instructions: 147
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_2FCD, L_2FD1
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E7C(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2FCD (sub_2FCD)
 * segment: seg1.asm    offset: 0x2FCD    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2FCD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2FD1 (sub_2FD1)
 * segment: seg1.asm    offset: 0x2FD1    instructions: 84
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_2E4E, L_2E7C
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2FD1(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3089 (sub_3089)
 * segment: seg1.asm    offset: 0x3089    instructions: 142
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3089(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_31B9 (sub_31B9)
 * segment: seg1.asm    offset: 0x31B9    instructions: 40
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_31B9(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_320F (sub_320F)
 * segment: seg1.asm    offset: 0x320F    instructions: 55
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_320F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_328D (sub_328D)
 * segment: seg1.asm    offset: 0x328D    instructions: 42
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_3443
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_328D(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_32F0 (sub_32F0)
 * segment: seg1.asm    offset: 0x32F0    instructions: 106
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_33BF
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_32F0(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33BF (sub_33BF)
 * segment: seg1.asm    offset: 0x33BF    instructions: 60
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33BF(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3443 (sub_3443)
 * segment: seg1.asm    offset: 0x3443    instructions: 242
 * classification (pass8): asm_high
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_31B9, L_320F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3443(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_363A (sub_363A)
 * segment: seg1.asm    offset: 0x363A    instructions: 87
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_36F5, L_3B97
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_363A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36F5 (sub_36F5)
 * segment: seg1.asm    offset: 0x36F5    instructions: 109
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_3089, L_32F0, L_423A
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36F5(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_37DA (sub_37DA)
 * segment: seg1.asm    offset: 0x37DA    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_37DA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3813 (sub_3813)
 * segment: seg1.asm    offset: 0x3813    instructions: 44
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3813(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3867 (sub_3867)
 * segment: seg1.asm    offset: 0x3867    instructions: 49
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1400, L_240E, L_24FA, L_275B
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3867(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_38CC (sub_38CC)
 * segment: seg1.asm    offset: 0x38CC    instructions: 114
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3B53, L_400D, L_41F3
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_38CC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_39BC (sub_39BC)
 * segment: seg1.asm    offset: 0x39BC    instructions: 91
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3B31, L_3B53, L_400D, L_416F
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_39BC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3A84 (sub_3A84)
 * segment: seg1.asm    offset: 0x3A84    instructions: 44
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_38CC, L_39BC, L_3B53
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3A84(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3AE4 (sub_3AE4)
 * segment: seg1.asm    offset: 0x3AE4    instructions: 29
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_38CC, L_39BC, L_3A84
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3AE4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B31 (sub_3B31)
 * segment: seg1.asm    offset: 0x3B31    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_411D, L_4216
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B31(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B53 (sub_3B53)
 * segment: seg1.asm    offset: 0x3B53    instructions: 36
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3D4D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B53(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B97 (sub_3B97)
 * segment: seg1.asm    offset: 0x3B97    instructions: 141
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3089, L_328D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B97(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3CC8 (sub_3CC8)
 * segment: seg1.asm    offset: 0x3CC8    instructions: 18
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3CC8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3CF1 (sub_3CF1)
 * segment: seg1.asm    offset: 0x3CF1    instructions: 55
 * classification (pass8): asm_medium
 * prologue: saves_regs    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3CF1(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3D4D (sub_3D4D)
 * segment: seg1.asm    offset: 0x3D4D    instructions: 136
 * classification (pass8): asm_medium
 * prologue: saves_regs    epilogue: ret
 *
 * Internal calls: L_3CC8, L_3CF1, L_3E4D, L_3FB3
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3D4D(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3E4D (sub_3E4D)
 * segment: seg1.asm    offset: 0x3E4D    instructions: 197
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_3E4D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3E4D(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3FD7 (sub_3FD7)
 * segment: seg1.asm    offset: 0x3FD7    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_2295, L_441B
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3FD7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_400D (sub_400D)
 * segment: seg1.asm    offset: 0x400D    instructions: 50
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_41F3
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_400D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_407B (sub_407B)
 * segment: seg1.asm    offset: 0x407B    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_407B(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_410D (sub_410D)
 * segment: seg1.asm    offset: 0x410D    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3FD7, L_4409
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_410D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_411D (sub_411D)
 * segment: seg1.asm    offset: 0x411D    instructions: 47
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_411D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_416F (sub_416F)
 * segment: seg1.asm    offset: 0x416F    instructions: 26
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_416F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_419E (sub_419E)
 * segment: seg1.asm    offset: 0x419E    instructions: 39
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_430D, L_4475
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_419E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_41F3 (sub_41F3)
 * segment: seg1.asm    offset: 0x41F3    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_41F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4216 (sub_4216)
 * segment: seg1.asm    offset: 0x4216    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4216(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_422F (sub_422F)
 * segment: seg1.asm    offset: 0x422F    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_422F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_423A (sub_423A)
 * segment: seg1.asm    offset: 0x423A    instructions: 102
 * classification (pass8): asm_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_423A(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_430D (sub_430D)
 * segment: seg1.asm    offset: 0x430D    instructions: 101
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_22A6, L_423A, L_4B62
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_430D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4409 (sub_4409)
 * segment: seg1.asm    offset: 0x4409    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4409(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_441B (sub_441B)
 * segment: seg1.asm    offset: 0x441B    instructions: 24
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_4447
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_441B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4447 (sub_4447)
 * segment: seg1.asm    offset: 0x4447    instructions: 22
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4447(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4475 (sub_4475)
 * segment: seg1.asm    offset: 0x4475    instructions: 182
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_4644, L_4772, L_47FE, L_4954, L_4AD2 ... +1
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4475(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4644 (sub_4644)
 * segment: seg1.asm    offset: 0x4644    instructions: 111
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_4216, L_49BE, L_4B82
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4644(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4772 (sub_4772)
 * segment: seg1.asm    offset: 0x4772    instructions: 51
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_4216, L_48EB, L_4954
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4772(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_47FE (sub_47FE)
 * segment: seg1.asm    offset: 0x47FE    instructions: 52
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_37DA, L_3813, L_3867, L_3AE4, L_49BE
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_47FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_489E (sub_489E)
 * segment: seg1.asm    offset: 0x489E    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_430D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_489E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_48EB (sub_48EB)
 * segment: seg1.asm    offset: 0x48EB    instructions: 43
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_430D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_48EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4954 (sub_4954)
 * segment: seg1.asm    offset: 0x4954    instructions: 46
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_430D
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4954(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_49BE (sub_49BE)
 * segment: seg1.asm    offset: 0x49BE    instructions: 72
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_4216, L_489E, L_48EB, L_4954, L_4A80 ... +1
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_49BE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4A80 (sub_4A80)
 * segment: seg1.asm    offset: 0x4A80    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_489E
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4A80(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4A9F (sub_4A9F)
 * segment: seg1.asm    offset: 0x4A9F    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230, L_489E
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4A9F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4AD2 (sub_4AD2)
 * segment: seg1.asm    offset: 0x4AD2    instructions: 46
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4AD2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4B3A (sub_4B3A)
 * segment: seg1.asm    offset: 0x4B3A    instructions: 20
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_2230
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4B3A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4B62 (sub_4B62)
 * segment: seg1.asm    offset: 0x4B62    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4B62(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4B82 (sub_4B82)
 * segment: seg1.asm    offset: 0x4B82    instructions: 84
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_4C1B
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4B82(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4C1B (sub_4C1B)
 * segment: seg1.asm    offset: 0x4C1B    instructions: 44
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_423A
 *
 * Reverse-engineering hints:
 *   See src/CALC/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4C1B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

