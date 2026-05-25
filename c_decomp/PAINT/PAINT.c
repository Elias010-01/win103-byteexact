/*
 * PAINT.c - Reconstructed C scaffold for Windows 1.x PAINT.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of PAINT.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/PAINT/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/PAINT/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 234
 * Total API call sites: 841
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
 * segment: seg1.asm    offset: 0x0000    instructions: 111
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   MULDIV(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   CHANGEMENU(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETSYSTEMMENU(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1086
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0129 (sub_0129)
 * segment: seg1.asm    offset: 0x0129    instructions: 31
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0129(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0182 (sub_0182)
 * segment: seg1.asm    offset: 0x0182    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETMODULEUSAGE(HANDLE hModule) -> INT
 *
 * Internal calls: L_11E2
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0182(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01CE (sub_01CE)
 * segment: seg1.asm    offset: 0x01CE    instructions: 202
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01CE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03C4 (sub_03C4)
 * segment: seg1.asm    offset: 0x03C4    instructions: 99
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03C4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04C9 (sub_04C9)
 * segment: seg1.asm    offset: 0x04C9    instructions: 116
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *
 * Internal calls: L_0B90, L_1817, L_189A
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04C9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0635 (sub_0635)
 * segment: seg1.asm    offset: 0x0635    instructions: 71
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_03C4
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0635(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06F8 (sub_06F8)
 * segment: seg1.asm    offset: 0x06F8    instructions: 359
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   HIDECARET(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SHOWCARET(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0635, L_0AE2, L_0B19, L_0B50, L_0B90, L_113E ... +10
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06F8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AE2 (sub_0AE2)
 * segment: seg1.asm    offset: 0x0AE2    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AE2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B19 (sub_0B19)
 * segment: seg1.asm    offset: 0x0B19    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B19(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B50 (sub_0B50)
 * segment: seg1.asm    offset: 0x0B50    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B50(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B90 (sub_0B90)
 * segment: seg1.asm    offset: 0x0B90    instructions: 50
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0C1E, L_2891
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B90(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C1E (sub_0C1E)
 * segment: seg1.asm    offset: 0x0C1E    instructions: 22
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C1E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C54 (sub_0C54)
 * segment: seg1.asm    offset: 0x0C54    instructions: 115
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C54(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D63 (sub_0D63)
 * segment: seg1.asm    offset: 0x0D63    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D63(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DA6 (sub_0DA6)
 * segment: seg1.asm    offset: 0x0DA6    instructions: 266
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   ENUMCLIPBOARDFORMATS(?)
 *   GETMENU(?)
 *   ISICONIC(?)
 *   OPENCLIPBOARD(?)
 *   POSTQUITMESSAGE(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_0129, L_0182, L_01CE, L_03C4, L_04C9, L_06F8 ... +3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DA6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1086 (sub_1086)
 * segment: seg1.asm    offset: 0x1086    instructions: 61
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *
 * Internal calls: L_113E, L_11FE, L_135D, L_1445, L_14BB
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1086(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_113E (sub_113E)
 * segment: seg1.asm    offset: 0x113E    instructions: 39
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATEFONTINDIRECT(?)
 *   GETTEXTMETRICS(?)
 *
 * Internal calls: L_1196, L_11BA
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_113E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1196 (sub_1196)
 * segment: seg1.asm    offset: 0x1196    instructions: 18
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1196(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11BA (sub_11BA)
 * segment: seg1.asm    offset: 0x11BA    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11BA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11E2 (sub_11E2)
 * segment: seg1.asm    offset: 0x11E2    instructions: 16
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11E2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11FE (sub_11FE)
 * segment: seg1.asm    offset: 0x11FE    instructions: 142
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETATOMNAME(?)
 *   CHANGEMENU(?)
 *   CREATEMENU(void) -> HMENU
 *   GETMENU(?)
 *
 * Internal calls: L_1746
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_135D (sub_135D)
 * segment: seg1.asm    offset: 0x135D    instructions: 27
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_135D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13A3 (sub_13A3)
 * segment: seg1.asm    offset: 0x13A3    instructions: 62
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13A3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1445 (sub_1445)
 * segment: seg1.asm    offset: 0x1445    instructions: 51
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETATOMNAME(?)
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1445(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14BB (sub_14BB)
 * segment: seg1.asm    offset: 0x14BB    instructions: 121
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Internal calls: L_15D7, L_165F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14BB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15D7 (sub_15D7)
 * segment: seg1.asm    offset: 0x15D7    instructions: 49
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ADDATOM(?)
 *   FINDATOM(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15D7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_165F (sub_165F)
 * segment: seg1.asm    offset: 0x165F    instructions: 89
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_165F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1746 (sub_1746)
 * segment: seg1.asm    offset: 0x1746    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCKSEGMENT(?)
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   UNLOCKSEGMENT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1746(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1817 (sub_1817)
 * segment: seg1.asm    offset: 0x1817    instructions: 26
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *
 * Internal calls: L_19D0
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1817(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1857 (sub_1857)
 * segment: seg1.asm    offset: 0x1857    instructions: 26
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1914, L_2891
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1857(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_189A (sub_189A)
 * segment: seg1.asm    offset: 0x189A    instructions: 30
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_19D0
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_189A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_18E8 (sub_18E8)
 * segment: seg1.asm    offset: 0x18E8    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_1914, L_2891
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_18E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1914 (sub_1914)
 * segment: seg1.asm    offset: 0x1914    instructions: 75
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   GETPARENT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1914(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19D0 (sub_19D0)
 * segment: seg1.asm    offset: 0x19D0    instructions: 77
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   GETPARENT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19D0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A8A (sub_1A8A)
 * segment: seg1.asm    offset: 0x1A8A    instructions: 106
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A8A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B89 (sub_1B89)
 * segment: seg1.asm    offset: 0x1B89    instructions: 180
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B89(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D9E (sub_1D9E)
 * segment: seg1.asm    offset: 0x1D9E    instructions: 44
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D9E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E1F (sub_1E1F)
 * segment: seg1.asm    offset: 0x1E1F    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETPARENT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1B89
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E1F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1EBF (sub_1EBF)
 * segment: seg1.asm    offset: 0x1EBF    instructions: 32
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CLOSECLIPBOARD(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_1D9E, L_1F01, L_285E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1EBF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F01 (sub_1F01)
 * segment: seg1.asm    offset: 0x1F01    instructions: 122
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   MULDIV(?)
 *   SETBITMAPDIMENSION(?)
 *   CLOSECLIPBOARD(?)
 *   EMPTYCLIPBOARD(?)
 *   GETDC(HWND hWnd) -> HDC
 *   OPENCLIPBOARD(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCLIPBOARDDATA(?)
 *
 * Internal calls: L_285E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F01(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2067 (sub_2067)
 * segment: seg1.asm    offset: 0x2067    instructions: 533
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETBITMAPDIMENSION(?)
 *   GETOBJECT(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   MULDIV(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   PLAYMETAFILE(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETMAPMODE(HDC hDC, INT iMode) -> INT
 *   SETVIEWPORTEXT(?)
 *   SETWINDOWEXT(?)
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   COPYRECT(?)
 *   GETCLIPBOARDDATA(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETPARENT(?)
 *   OPENCLIPBOARD(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1A8A, L_261F, L_26FE, L_285E, L_2891
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2067(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2603 (sub_2603)
 * segment: seg1.asm    offset: 0x2603    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CLOSECLIPBOARD(?)
 *
 * Internal calls: L_285E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2603(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_261F (sub_261F)
 * segment: seg1.asm    offset: 0x261F    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_261F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26FE (sub_26FE)
 * segment: seg1.asm    offset: 0x26FE    instructions: 43
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Internal calls: L_276F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_276F (sub_276F)
 * segment: seg1.asm    offset: 0x276F    instructions: 95
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_276F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_285E (sub_285E)
 * segment: seg1.asm    offset: 0x285E    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_285E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2891 (sub_2891)
 * segment: seg1.asm    offset: 0x2891    instructions: 41
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2891(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_28F7 (sub_28F7)
 * segment: seg1.asm    offset: 0x28F7    instructions: 222
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_28F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg10.asm    offset: 0x0000    instructions: 340
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   SETCURSOR(?)
 *
 * Internal calls: L_142F, L_16DF
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035A (sub_035A)
 * segment: seg10.asm    offset: 0x035A    instructions: 318
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETPARENT(?)
 *   HIDECARET(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SHOWCARET(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_142F, L_16DF
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06B3 (sub_06B3)
 * segment: seg10.asm    offset: 0x06B3    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   GETPARENT(?)
 *   SETCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06B3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_072E (sub_072E)
 * segment: seg10.asm    offset: 0x072E    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *
 * Internal calls: L_0899, L_21D9
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_072E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0899 (sub_0899)
 * segment: seg10.asm    offset: 0x0899    instructions: 297
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   GETDC(HWND hWnd) -> HDC
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *
 * Internal calls: L_0BF2, L_12DA, L_1935, L_2158
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0899(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BF2 (sub_0BF2)
 * segment: seg10.asm    offset: 0x0BF2    instructions: 147
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0D7D, L_1102
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BF2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D7D (sub_0D7D)
 * segment: seg10.asm    offset: 0x0D7D    instructions: 74
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_197F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D7D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E50 (sub_0E50)
 * segment: seg10.asm    offset: 0x0E50    instructions: 23
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E50(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E76 (sub_0E76)
 * segment: seg10.asm    offset: 0x0E76    instructions: 68
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_1CDB, L_1D48
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E76(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F23 (sub_0F23)
 * segment: seg10.asm    offset: 0x0F23    instructions: 182
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_12DA, L_2186
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F23(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10C0 (sub_10C0)
 * segment: seg10.asm    offset: 0x10C0    instructions: 30
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10C0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1102 (sub_1102)
 * segment: seg10.asm    offset: 0x1102    instructions: 180
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   MULDIV(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1102(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12DA (sub_12DA)
 * segment: seg10.asm    offset: 0x12DA    instructions: 125
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12DA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_142F (sub_142F)
 * segment: seg10.asm    offset: 0x142F    instructions: 262
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETBITMAPBITS(?)
 *   SETBITMAPBITS(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_0E50
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_142F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_16DF (sub_16DF)
 * segment: seg10.asm    offset: 0x16DF    instructions: 217
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   SETBITMAPBITS(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_0E50
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_16DF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1913 (sub_1913)
 * segment: seg10.asm    offset: 0x1913    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1913(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1935 (sub_1935)
 * segment: seg10.asm    offset: 0x1935    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1913
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1935(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_195C (sub_195C)
 * segment: seg10.asm    offset: 0x195C    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_195C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_197F (sub_197F)
 * segment: seg10.asm    offset: 0x197F    instructions: 159
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   GETPARENT(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_072E, L_0E76, L_195C, L_1D48
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_197F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AF9 (sub_1AF9)
 * segment: seg10.asm    offset: 0x1AF9    instructions: 87
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_0F23, L_10C0, L_1BB2, L_1D48, L_1F96, L_1FF3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AF9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BB2 (sub_1BB2)
 * segment: seg10.asm    offset: 0x1BB2    instructions: 124
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: ret_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Internal calls: L_0F23, L_21D9
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BB2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1CDB (sub_1CDB)
 * segment: seg10.asm    offset: 0x1CDB    instructions: 48
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0F23, L_1AF9, L_1D48, L_21D9
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1CDB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D48 (sub_1D48)
 * segment: seg10.asm    offset: 0x1D48    instructions: 230
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   ENUMWINDOWS(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETPARENT(?)
 *   GETPROP(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_035A, L_1FF3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D48(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F96 (sub_1F96)
 * segment: seg10.asm    offset: 0x1F96    instructions: 38
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   GETPARENT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F96(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1FF3 (sub_1FF3)
 * segment: seg10.asm    offset: 0x1FF3    instructions: 159
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1FF3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2158 (sub_2158)
 * segment: seg10.asm    offset: 0x2158    instructions: 25
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2158(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2186 (sub_2186)
 * segment: seg10.asm    offset: 0x2186    instructions: 39
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSINEXT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2186(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_21D9 (sub_21D9)
 * segment: seg10.asm    offset: 0x21D9    instructions: 56
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   GETPARENT(?)
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_2186
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_21D9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0041 (sub_0041)
 * segment: seg11.asm    offset: 0x0041    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISWINDOWENABLED(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0041(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_005A (sub_005A)
 * segment: seg11.asm    offset: 0x005A    instructions: 83
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   DLGDIRLIST(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   MESSAGEBEEP(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_02EF, L_03C1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_005A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0129 (sub_0129)
 * segment: seg11.asm    offset: 0x0129    instructions: 27
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0129(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_016D (sub_016D)
 * segment: seg11.asm    offset: 0x016D    instructions: 94
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   DLGDIRSELECT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_016D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_025C (sub_025C)
 * segment: seg11.asm    offset: 0x025C    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DLGDIRLIST(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_025C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_027C (sub_027C)
 * segment: seg11.asm    offset: 0x027C    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   DLGDIRLIST(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_06D1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_027C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02EF (sub_02EF)
 * segment: seg11.asm    offset: 0x02EF    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03C1 (sub_03C1)
 * segment: seg11.asm    offset: 0x03C1    instructions: 41
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03C1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0419 (sub_0419)
 * segment: seg11.asm    offset: 0x0419    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISWINDOWENABLED(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0419(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0432 (sub_0432)
 * segment: seg11.asm    offset: 0x0432    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0432(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0470 (sub_0470)
 * segment: seg11.asm    offset: 0x0470    instructions: 46
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DLGDIRLIST(?)
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0470(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04EF (sub_04EF)
 * segment: seg11.asm    offset: 0x04EF    instructions: 58
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSINEXT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_05CD
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_059C (sub_059C)
 * segment: seg11.asm    offset: 0x059C    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Internal calls: L_06D1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_059C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05CD (sub_05CD)
 * segment: seg11.asm    offset: 0x05CD    instructions: 109
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *
 * Internal calls: L_06D1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05CD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06D1 (sub_06D1)
 * segment: seg11.asm    offset: 0x06D1    instructions: 61
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETPARENT(?)
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_075A
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06D1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_075A (sub_075A)
 * segment: seg11.asm    offset: 0x075A    instructions: 112
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETDC(HWND hWnd) -> HDC
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   ISICONIC(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg11.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_075A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0181 (sub_0181)
 * segment: seg12.asm    offset: 0x0181    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
 *   CREATEIC(?)
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   ANSINEXT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0181(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02EC (sub_02EC)
 * segment: seg12.asm    offset: 0x02EC    instructions: 227
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CREATEDIALOG(?)
 *   ENABLEWINDOW(?)
 *
 * Internal calls: L_0181, L_02EC, L_073C
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_052F (sub_052F)
 * segment: seg12.asm    offset: 0x052F    instructions: 167
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   MULDIV(?)
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *
 * Internal calls: L_073C, L_07D1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_052F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06FF (sub_06FF)
 * segment: seg12.asm    offset: 0x06FF    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_073C (sub_073C)
 * segment: seg12.asm    offset: 0x073C    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_073C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07D1 (sub_07D1)
 * segment: seg12.asm    offset: 0x07D1    instructions: 240
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   MULDIV(?)
 *   SETBITMAPBITS(?)
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07D1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0273 (sub_0273)
 * segment: seg13.asm    offset: 0x0273    instructions: 115
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_03D1, L_0463, L_04F6, L_058E, L_0627, L_0649
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0273(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D1 (sub_03D1)
 * segment: seg13.asm    offset: 0x03D1    instructions: 54
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MULDIV(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0463 (sub_0463)
 * segment: seg13.asm    offset: 0x0463    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MULDIV(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0463(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04F6 (sub_04F6)
 * segment: seg13.asm    offset: 0x04F6    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MULDIV(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_058E (sub_058E)
 * segment: seg13.asm    offset: 0x058E    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MULDIV(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_058E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0627 (sub_0627)
 * segment: seg13.asm    offset: 0x0627    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0627(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0649 (sub_0649)
 * segment: seg13.asm    offset: 0x0649    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0649(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg17.asm    offset: 0x004F    instructions: 18
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0082 (sub_0082)
 * segment: seg17.asm    offset: 0x0082    instructions: 99
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETBKMODE(?)
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETROP2(?)
 *   GETKEYSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0082(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A1 (sub_01A1)
 * segment: seg17.asm    offset: 0x01A1    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg18.asm    offset: 0x004F    instructions: 59
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   MULDIV(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0113 (sub_0113)
 * segment: seg18.asm    offset: 0x0113    instructions: 109
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   GETBKMODE(?)
 *   MULDIV(?)
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETROP2(?)
 *   GETKEYSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0113(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0272 (sub_0272)
 * segment: seg18.asm    offset: 0x0272    instructions: 77
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   MULDIV(?)
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0272(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg19.asm    offset: 0x004F    instructions: 18
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0082 (sub_0082)
 * segment: seg19.asm    offset: 0x0082    instructions: 100
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   GETBKMODE(?)
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETROP2(?)
 *   GETKEYSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0082(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A4 (sub_01A4)
 * segment: seg19.asm    offset: 0x01A4    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0058 (sub_0058)
 * segment: seg2.asm    offset: 0x0058    instructions: 49
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0058(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00DF (sub_00DF)
 * segment: seg2.asm    offset: 0x00DF    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00DF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0157 (sub_0157)
 * segment: seg2.asm    offset: 0x0157    instructions: 43
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0157(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01CE (sub_01CE)
 * segment: seg2.asm    offset: 0x01CE    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01CE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0246 (sub_0246)
 * segment: seg2.asm    offset: 0x0246    instructions: 43
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0246(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02BD (sub_02BD)
 * segment: seg2.asm    offset: 0x02BD    instructions: 38
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg21.asm    offset: 0x004F    instructions: 18
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0082 (sub_0082)
 * segment: seg21.asm    offset: 0x0082    instructions: 99
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETBKMODE(?)
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETROP2(?)
 *   GETKEYSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0082(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A1 (sub_01A1)
 * segment: seg21.asm    offset: 0x01A1    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00CB (sub_00CB)
 * segment: seg24.asm    offset: 0x00CB    instructions: 92
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Internal calls: L_01F0
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00CB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01F0 (sub_01F0)
 * segment: seg24.asm    offset: 0x01F0    instructions: 318
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   FLOODFILL(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETWINDOWORG(?)
 *   COPYRECT(?)
 *   GETPARENT(?)
 *
 * Internal calls: L_054A, L_0913
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054A (sub_054A)
 * segment: seg24.asm    offset: 0x054A    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SCANLR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0622 (sub_0622)
 * segment: seg24.asm    offset: 0x0622    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETKEYSTATE(?)
 *
 * Internal calls: L_0979
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0622(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06F3 (sub_06F3)
 * segment: seg24.asm    offset: 0x06F3    instructions: 191
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   COPYRECT(?)
 *   OFFSETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0913 (sub_0913)
 * segment: seg24.asm    offset: 0x0913    instructions: 40
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0913(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0979 (sub_0979)
 * segment: seg24.asm    offset: 0x0979    instructions: 169
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   COPYRECT(?)
 *
 * Internal calls: L_0913, L_0979
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0979(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0083 (sub_0083)
 * segment: seg26.asm    offset: 0x0083    instructions: 76
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETKEYSTATE(?)
 *   SETRECT(?)
 *
 * Internal calls: L_0A3E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0083(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0166 (sub_0166)
 * segment: seg26.asm    offset: 0x0166    instructions: 142
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   COPYRECT(?)
 *   GETPARENT(?)
 *   SETRECT(?)
 *
 * Internal calls: L_02D8
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0166(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02D8 (sub_02D8)
 * segment: seg26.asm    offset: 0x02D8    instructions: 105
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D5 (sub_03D5)
 * segment: seg26.asm    offset: 0x03D5    instructions: 636
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   COPYRECT(?)
 *   INVERTRECT(?)
 *   SETRECT(?)
 *
 * Internal calls: L_02D8, L_0A3E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A3E (sub_0A3E)
 * segment: seg26.asm    offset: 0x0A3E    instructions: 87
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   COPYRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A3E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0051 (sub_0051)
 * segment: seg28.asm    offset: 0x0051    instructions: 64
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SETPIXEL(?)
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg28.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0051(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_008B (sub_008B)
 * segment: seg29.asm    offset: 0x008B    instructions: 105
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   POLYLINE(?)
 *   SETROP2(?)
 *
 * Internal calls: L_01C8, L_0293
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg29.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_008B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01C8 (sub_01C8)
 * segment: seg29.asm    offset: 0x01C8    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_01C8, L_0293
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg29.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01C8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0293 (sub_0293)
 * segment: seg29.asm    offset: 0x0293    instructions: 96
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg29.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0293(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00DB (sub_00DB)
 * segment: seg3.asm    offset: 0x00DB    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00DB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0181 (sub_0181)
 * segment: seg3.asm    offset: 0x0181    instructions: 266
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETOBJECT(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0181(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_042C (sub_042C)
 * segment: seg3.asm    offset: 0x042C    instructions: 115
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_042C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054B (sub_054B)
 * segment: seg3.asm    offset: 0x054B    instructions: 52
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05DB (sub_05DB)
 * segment: seg3.asm    offset: 0x05DB    instructions: 87
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_068B
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05DB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_068B (sub_068B)
 * segment: seg3.asm    offset: 0x068B    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_068B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06E3 (sub_06E3)
 * segment: seg3.asm    offset: 0x06E3    instructions: 53
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06E3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0768 (sub_0768)
 * segment: seg3.asm    offset: 0x0768    instructions: 349
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   CREATEPATTERNBRUSH(?)
 *   CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0768(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01FC (sub_01FC)
 * segment: seg31.asm    offset: 0x01FC    instructions: 40
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0493, L_07A5
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01FC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0262 (sub_0262)
 * segment: seg31.asm    offset: 0x0262    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0262(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02E1 (sub_02E1)
 * segment: seg31.asm    offset: 0x02E1    instructions: 154
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   HIDECARET(?)
 *   SETCARETPOS(?)
 *   SHOWCARET(?)
 *
 * Internal calls: L_0262, L_02E1, L_0493
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0493 (sub_0493)
 * segment: seg31.asm    offset: 0x0493    instructions: 95
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETTEXTEXTENT(?)
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *
 * Internal calls: L_07F3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0493(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05AA (sub_05AA)
 * segment: seg31.asm    offset: 0x05AA    instructions: 172
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETBKMODE(?)
 *   GETTEXTCOLOR(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETCARETPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05AA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07A5 (sub_07A5)
 * segment: seg31.asm    offset: 0x07A5    instructions: 30
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07A5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07F3 (sub_07F3)
 * segment: seg31.asm    offset: 0x07F3    instructions: 366
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTCOLOR(?)
 *   GETTEXTEXTENT(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_0262, L_02E1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BEB (sub_0BEB)
 * segment: seg31.asm    offset: 0x0BEB    instructions: 219
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   COPYRECT(?)
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg31.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BEB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg32.asm    offset: 0x0000    instructions: 163
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   CATCH(?)
 *   GETMODULEUSAGE(HANDLE hModule) -> INT
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   THROW(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   LOADACCELERATORS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01AE (sub_01AE)
 * segment: seg32.asm    offset: 0x01AE    instructions: 160
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETINSTANCEDATA(?)
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETCURSORPOS(?)
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   SETCURSORPOS(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   TRANSLATEACCELERATOR(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0355
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0355 (sub_0355)
 * segment: seg32.asm    offset: 0x0355    instructions: 315
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_06CE, L_0760, L_0770, L_0811
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0355(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C5 (sub_05C5)
 * segment: seg32.asm    offset: 0x05C5    instructions: 130
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
 * Internal calls: L_0875
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06CE (sub_06CE)
 * segment: seg32.asm    offset: 0x06CE    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06CE(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0760 (sub_0760)
 * segment: seg32.asm    offset: 0x0760    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0880, L_08B6
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0760(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0770 (sub_0770)
 * segment: seg32.asm    offset: 0x0770    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_08C8
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0770(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0811 (sub_0811)
 * segment: seg32.asm    offset: 0x0811    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0811(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0875 (sub_0875)
 * segment: seg32.asm    offset: 0x0875    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0875(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0880 (sub_0880)
 * segment: seg32.asm    offset: 0x0880    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_05C5, L_08EE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0880(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08B6 (sub_08B6)
 * segment: seg32.asm    offset: 0x08B6    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08B6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08C8 (sub_08C8)
 * segment: seg32.asm    offset: 0x08C8    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08C8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08EE (sub_08EE)
 * segment: seg32.asm    offset: 0x08EE    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0234 (sub_0234)
 * segment: seg4.asm    offset: 0x0234    instructions: 72
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SETCURSORPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0234(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02E0 (sub_02E0)
 * segment: seg4.asm    offset: 0x02E0    instructions: 169
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETPIXEL(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02E0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04A2 (sub_04A2)
 * segment: seg4.asm    offset: 0x04A2    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *
 * Internal calls: L_0A04, L_0A4A, L_0B5E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04A2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0591 (sub_0591)
 * segment: seg4.asm    offset: 0x0591    instructions: 26
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETCURSORPOS(?)
 *   SCREENTOCLIENT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0591(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05D9 (sub_05D9)
 * segment: seg4.asm    offset: 0x05D9    instructions: 144
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETFOCUS(?)
 *   SETCURSORPOS(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_04A2, L_084D
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05D9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_077C (sub_077C)
 * segment: seg4.asm    offset: 0x077C    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETCURSORPOS(?)
 *   GETSYSTEMMETRICS(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_077C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_084D (sub_084D)
 * segment: seg4.asm    offset: 0x084D    instructions: 158
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETPARENT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETACTIVEWINDOW(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_0234, L_02E0, L_04A2, L_0591, L_077C, L_084D ... +1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_084D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A04 (sub_0A04)
 * segment: seg4.asm    offset: 0x0A04    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A04(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A4A (sub_0A4A)
 * segment: seg4.asm    offset: 0x0A4A    instructions: 98
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATEPATTERNBRUSH(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBITMAPBITS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A4A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B5E (sub_0B5E)
 * segment: seg4.asm    offset: 0x0B5E    instructions: 26
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B5E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BA1 (sub_0BA1)
 * segment: seg4.asm    offset: 0x0BA1    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0BD3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BA1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BBA (sub_0BBA)
 * segment: seg4.asm    offset: 0x0BBA    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0BD3
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BBA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BD3 (sub_0BD3)
 * segment: seg4.asm    offset: 0x0BD3    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BD3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg5.asm    offset: 0x0000    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0026 (sub_0026)
 * segment: seg5.asm    offset: 0x0026    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0026(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004E (sub_004E)
 * segment: seg5.asm    offset: 0x004E    instructions: 33
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDCORG(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBRUSHORG(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00A1 (sub_00A1)
 * segment: seg5.asm    offset: 0x00A1    instructions: 50
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   UNREALIZEOBJECT(?)
 *   THROW(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_010B (sub_010B)
 * segment: seg5.asm    offset: 0x010B    instructions: 79
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_01DD
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_010B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01DD (sub_01DD)
 * segment: seg5.asm    offset: 0x01DD    instructions: 24
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01DD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0216 (sub_0216)
 * segment: seg5.asm    offset: 0x0216    instructions: 20
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_010B
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0216(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0239 (sub_0239)
 * segment: seg5.asm    offset: 0x0239    instructions: 139
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETBKMODE(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   POLYGON(?)
 *   POLYLINE(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   GETKEYSTATE(?)
 *
 * Internal calls: L_0026, L_004E, L_00A1, L_01DD, L_0216, L_0239
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0239(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_038C (sub_038C)
 * segment: seg5.asm    offset: 0x038C    instructions: 51
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_038C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03F7 (sub_03F7)
 * segment: seg5.asm    offset: 0x03F7    instructions: 90
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_050B, L_052E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04CC (sub_04CC)
 * segment: seg5.asm    offset: 0x04CC    instructions: 29
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_050B, L_052E
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04CC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_050B (sub_050B)
 * segment: seg5.asm    offset: 0x050B    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_050B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_052E (sub_052E)
 * segment: seg5.asm    offset: 0x052E    instructions: 470
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   POLYGON(?)
 *   ROUNDRECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Internal calls: L_038C
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_052E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg6.asm    offset: 0x0000    instructions: 9
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0015 (sub_0015)
 * segment: seg6.asm    offset: 0x0015    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0015(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00CB (sub_00CB)
 * segment: seg6.asm    offset: 0x00CB    instructions: 397
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETPIXEL(?)
 *   SETROP2(?)
 *   ANYPOPUP(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETFOCUS(?)
 *   PTINRECT(?)
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00CB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_059E (sub_059E)
 * segment: seg6.asm    offset: 0x059E    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_059E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05E9 (sub_05E9)
 * segment: seg6.asm    offset: 0x05E9    instructions: 65
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   DESTROYCARET(?)
 *   GETCURSORPOS(?)
 *   GETSYSTEMMETRICS(?)
 *   HIDECARET(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05E9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0699 (sub_0699)
 * segment: seg6.asm    offset: 0x0699    instructions: 97
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0699(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07BE (sub_07BE)
 * segment: seg6.asm    offset: 0x07BE    instructions: 408
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CLIENTTOSCREEN(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETCURSORPOS(?)
 *   GETKEYSTATE(?)
 *   GETPARENT(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *
 * Internal calls: L_0015, L_00CB, L_059E, L_05E9, L_0699, L_07BE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07BE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0263 (sub_0263)
 * segment: seg7.asm    offset: 0x0263    instructions: 103
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   OFFSETRECT(?)
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_063F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0263(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03A4 (sub_03A4)
 * segment: seg7.asm    offset: 0x03A4    instructions: 168
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETCURSORPOS(?)
 *   GETKEYSTATE(?)
 *   GETPARENT(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *
 * Internal calls: L_0263
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03A4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05A1 (sub_05A1)
 * segment: seg7.asm    offset: 0x05A1    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETCURSORPOS(?)
 *   GETSYSTEMMETRICS(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_063F (sub_063F)
 * segment: seg7.asm    offset: 0x063F    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_063F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0690 (sub_0690)
 * segment: seg7.asm    offset: 0x0690    instructions: 303
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBITMAPBITS(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETCURSOR(?)
 *
 * Internal calls: L_063F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0690(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09C7 (sub_09C7)
 * segment: seg7.asm    offset: 0x09C7    instructions: 232
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0174 (sub_0174)
 * segment: seg8.asm    offset: 0x0174    instructions: 37
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0174(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01CF (sub_01CF)
 * segment: seg8.asm    offset: 0x01CF    instructions: 106
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01CF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02D7 (sub_02D7)
 * segment: seg8.asm    offset: 0x02D7    instructions: 96
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETPIXEL(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02D7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D8 (sub_03D8)
 * segment: seg8.asm    offset: 0x03D8    instructions: 112
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Internal calls: L_01CF
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_051F (sub_051F)
 * segment: seg8.asm    offset: 0x051F    instructions: 205
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   GETPARENT(?)
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *
 * Internal calls: L_02D7, L_03D8, L_0BFF
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_051F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0762 (sub_0762)
 * segment: seg8.asm    offset: 0x0762    instructions: 153
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETCURSORPOS(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSOR(?)
 *   SETCURSORPOS(?)
 *
 * Internal calls: L_051F
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0762(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0926 (sub_0926)
 * segment: seg8.asm    offset: 0x0926    instructions: 278
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CLIENTTOSCREEN(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETCURSORPOS(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSTEMMETRICS(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0174, L_01CF, L_051F, L_0762, L_0926
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0926(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BFF (sub_0BFF)
 * segment: seg8.asm    offset: 0x0BFF    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BFF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0173 (sub_0173)
 * segment: seg9.asm    offset: 0x0173    instructions: 56
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PTINRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0173(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01F6 (sub_01F6)
 * segment: seg9.asm    offset: 0x01F6    instructions: 29
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0173, L_0231
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0231 (sub_0231)
 * segment: seg9.asm    offset: 0x0231    instructions: 50
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_02A1
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0231(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A1 (sub_02A1)
 * segment: seg9.asm    offset: 0x02A1    instructions: 135
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03E2 (sub_03E2)
 * segment: seg9.asm    offset: 0x03E2    instructions: 35
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03E2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_042D (sub_042D)
 * segment: seg9.asm    offset: 0x042D    instructions: 43
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATEPATTERNBRUSH(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_042D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_048E (sub_048E)
 * segment: seg9.asm    offset: 0x048E    instructions: 146
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   ENABLEWINDOW(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSTEMMETRICS(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETACTIVEWINDOW(?)
 *
 * Internal calls: L_02A1, L_0EC7
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_048E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05E4 (sub_05E4)
 * segment: seg9.asm    offset: 0x05E4    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   SETCURSORPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0659 (sub_0659)
 * segment: seg9.asm    offset: 0x0659    instructions: 147
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETPARENT(?)
 *   PTINRECT(?)
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETACTIVEWINDOW(?)
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *
 * Internal calls: L_01F6, L_0231, L_02A1, L_03E2, L_042D, L_048E ... +2
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0659(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07F1 (sub_07F1)
 * segment: seg9.asm    offset: 0x07F1    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_088D (sub_088D)
 * segment: seg9.asm    offset: 0x088D    instructions: 91
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATEPATTERNBRUSH(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBITMAPBITS(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_088D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_097B (sub_097B)
 * segment: seg9.asm    offset: 0x097B    instructions: 69
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   POLYGON(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Internal calls: L_0A40
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_097B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A40 (sub_0A40)
 * segment: seg9.asm    offset: 0x0A40    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A40(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A66 (sub_0A66)
 * segment: seg9.asm    offset: 0x0A66    instructions: 64
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *
 * Internal calls: L_02A1, L_07F1, L_097B
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A66(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B09 (sub_0B09)
 * segment: seg9.asm    offset: 0x0B09    instructions: 175
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   GETCURSORPOS(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *
 * Internal calls: L_0659
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B09(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D01 (sub_0D01)
 * segment: seg9.asm    offset: 0x0D01    instructions: 177
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CLIENTTOSCREEN(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETCURSORPOS(?)
 *   GETSYSTEMMETRICS(?)
 *   SCREENTOCLIENT(?)
 *   SETCURSORPOS(?)
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_05E4, L_0659, L_0A66, L_0B09, L_0D01
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D01(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EC7 (sub_0EC7)
 * segment: seg9.asm    offset: 0x0EC7    instructions: 65
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EC7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F61 (sub_0F61)
 * segment: seg9.asm    offset: 0x0F61    instructions: 225
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETROP2(?)
 *
 * Reverse-engineering hints:
 *   See src/PAINT/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F61(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

