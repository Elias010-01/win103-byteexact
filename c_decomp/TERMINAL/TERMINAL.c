/*
 * TERMINAL.c - Reconstructed C scaffold for Windows 1.x TERMINAL.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of TERMINAL.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/TERMINAL/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/TERMINAL/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 214
 * Total API call sites: 326
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
 * sub_0048 (sub_0048)
 * segment: seg1.asm    offset: 0x0048    instructions: 69
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEACCELERATOR(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_0100
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0048(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0100 (sub_0100)
 * segment: seg1.asm    offset: 0x0100    instructions: 91
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   GETCOMMERROR(?)
 *   INITAPP(?)
 *   READCOMM(?)
 *
 * Internal calls: L_0048, L_02EE, L_0380
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0100(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01E5 (sub_01E5)
 * segment: seg1.asm    offset: 0x01E5    instructions: 130
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
 * Internal calls: L_0495
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01E5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02EE (sub_02EE)
 * segment: seg1.asm    offset: 0x02EE    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02EE(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0380 (sub_0380)
 * segment: seg1.asm    offset: 0x0380    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_04A0, L_04D6
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0380(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0390 (sub_0390)
 * segment: seg1.asm    offset: 0x0390    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_04E8
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0390(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0431 (sub_0431)
 * segment: seg1.asm    offset: 0x0431    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0431(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0495 (sub_0495)
 * segment: seg1.asm    offset: 0x0495    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0495(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04A0 (sub_04A0)
 * segment: seg1.asm    offset: 0x04A0    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_01E5, L_050E
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04A0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04D6 (sub_04D6)
 * segment: seg1.asm    offset: 0x04D6    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04E8 (sub_04E8)
 * segment: seg1.asm    offset: 0x04E8    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_050E (sub_050E)
 * segment: seg1.asm    offset: 0x050E    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_050E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg2.asm    offset: 0x0000    instructions: 44
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_00EC, L_3452, L_45B1
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_005A (sub_005A)
 * segment: seg2.asm    offset: 0x005A    instructions: 31
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *
 * Internal calls: L_3B9D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_005A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00A3 (sub_00A3)
 * segment: seg2.asm    offset: 0x00A3    instructions: 35
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3EB9, L_4604
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00A3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00EC (sub_00EC)
 * segment: seg2.asm    offset: 0x00EC    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_3452, L_397F, L_466B, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_018F (sub_018F)
 * segment: seg2.asm    offset: 0x018F    instructions: 120
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_04AA, L_2ACA, L_3452, L_3EB9, L_4754, L_4BE2 ... +1
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_018F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A6 (sub_02A6)
 * segment: seg2.asm    offset: 0x02A6    instructions: 36
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_00EC, L_018F
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0305 (sub_0305)
 * segment: seg2.asm    offset: 0x0305    instructions: 166
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Internal calls: L_00A3, L_00EC, L_04AA, L_397F, L_3B32, L_3C89 ... +6
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0305(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04AA (sub_04AA)
 * segment: seg2.asm    offset: 0x04AA    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04AA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_055F (sub_055F)
 * segment: seg2.asm    offset: 0x055F    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *
 * Internal calls: L_5C30, L_5C64, L_5CA6
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_055F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05AF (sub_05AF)
 * segment: seg2.asm    offset: 0x05AF    instructions: 82
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_3452, L_3EB9, L_4754, L_4BE2, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0663 (sub_0663)
 * segment: seg2.asm    offset: 0x0663    instructions: 149
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *   GETSYSTEMMETRICS(?)
 *
 * Internal calls: L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0663(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07DA (sub_07DA)
 * segment: seg2.asm    offset: 0x07DA    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07DA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_080A (sub_080A)
 * segment: seg2.asm    offset: 0x080A    instructions: 62
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATEFONTINDIRECT(?)
 *   ENUMFONTS(?)
 *   GETOBJECT(?)
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0663
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_080A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08AF (sub_08AF)
 * segment: seg2.asm    offset: 0x08AF    instructions: 17
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08E6 (sub_08E6)
 * segment: seg2.asm    offset: 0x08E6    instructions: 226
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETPROFILEINT(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   LOADACCELERATORS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_005A, L_07DA, L_08E6, L_19BA, L_3452, L_3588 ... +3
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08E6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B15 (sub_0B15)
 * segment: seg2.asm    offset: 0x0B15    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENUMCLIPBOARDFORMATS(?)
 *   GETMENU(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_50F9
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B15(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BE6 (sub_0BE6)
 * segment: seg2.asm    offset: 0x0BE6    instructions: 316
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CHANGEMENU(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   GETSYSTEMMENU(?)
 *   POSTQUITMESSAGE(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_005A, L_02A6, L_055F, L_05AF, L_08AF, L_0B15 ... +16
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BE6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F13 (sub_0F13)
 * segment: seg2.asm    offset: 0x0F13    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F13(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F32 (sub_0F32)
 * segment: seg2.asm    offset: 0x0F32    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F32(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F53 (sub_0F53)
 * segment: seg2.asm    offset: 0x0F53    instructions: 17
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F53(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F75 (sub_0F75)
 * segment: seg2.asm    offset: 0x0F75    instructions: 59
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0F32
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F75(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_100E (sub_100E)
 * segment: seg2.asm    offset: 0x100E    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0F32, L_0F53
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_100E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_108D (sub_108D)
 * segment: seg2.asm    offset: 0x108D    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_108D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10FA (sub_10FA)
 * segment: seg2.asm    offset: 0x10FA    instructions: 133
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_100E, L_108D, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10FA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1254 (sub_1254)
 * segment: seg2.asm    offset: 0x1254    instructions: 80
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_100E, L_605D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1254(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_132E (sub_132E)
 * segment: seg2.asm    offset: 0x132E    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1254
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_132E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13A6 (sub_13A6)
 * segment: seg2.asm    offset: 0x13A6    instructions: 79
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_148E
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_148E (sub_148E)
 * segment: seg2.asm    offset: 0x148E    instructions: 107
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1884, L_20ED, L_2182
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_148E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15BB (sub_15BB)
 * segment: seg2.asm    offset: 0x15BB    instructions: 144
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_132E, L_1D3B
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15BB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1736 (sub_1736)
 * segment: seg2.asm    offset: 0x1736    instructions: 86
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0F13, L_1254, L_13A6, L_20ED
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1736(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1826 (sub_1826)
 * segment: seg2.asm    offset: 0x1826    instructions: 33
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1C66, L_2808
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1826(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1884 (sub_1884)
 * segment: seg2.asm    offset: 0x1884    instructions: 83
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0F13, L_100E, L_1826, L_1954
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1884(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1954 (sub_1954)
 * segment: seg2.asm    offset: 0x1954    instructions: 40
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0F75, L_13A6, L_1826
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1954(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19BA (sub_19BA)
 * segment: seg2.asm    offset: 0x19BA    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_132E, L_272D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19BA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A20 (sub_1A20)
 * segment: seg2.asm    offset: 0x1A20    instructions: 6
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_27AA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A20(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A2A (sub_1A2A)
 * segment: seg2.asm    offset: 0x1A2A    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_100E, L_6074
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A2A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A9E (sub_1A9E)
 * segment: seg2.asm    offset: 0x1A9E    instructions: 99
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_100E, L_603D, L_6074
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A9E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BAB (sub_1BAB)
 * segment: seg2.asm    offset: 0x1BAB    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BAB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BDE (sub_1BDE)
 * segment: seg2.asm    offset: 0x1BDE    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BDE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C22 (sub_1C22)
 * segment: seg2.asm    offset: 0x1C22    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C22(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C66 (sub_1C66)
 * segment: seg2.asm    offset: 0x1C66    instructions: 79
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INTERSECTRECT(?)
 *
 * Internal calls: L_2078
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C66(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D3B (sub_1D3B)
 * segment: seg2.asm    offset: 0x1D3B    instructions: 31
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D3B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DA5 (sub_1DA5)
 * segment: seg2.asm    offset: 0x1DA5    instructions: 14
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DA5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DCA (sub_1DCA)
 * segment: seg2.asm    offset: 0x1DCA    instructions: 162
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETRECT(?)
 *
 * Internal calls: L_13A6, L_1BAB, L_1BDE, L_1C22, L_1C66
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DCA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F82 (sub_1F82)
 * segment: seg2.asm    offset: 0x1F82    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   HIDECARET(?)
 *   SCROLLWINDOW(?)
 *   SHOWCARET(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F82(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_200A (sub_200A)
 * segment: seg2.asm    offset: 0x200A    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETDC(HWND hWnd) -> HDC
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_200A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2049 (sub_2049)
 * segment: seg2.asm    offset: 0x2049    instructions: 18
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2049(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2078 (sub_2078)
 * segment: seg2.asm    offset: 0x2078    instructions: 52
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INTERSECTRECT(?)
 *   INVERTRECT(?)
 *
 * Internal calls: L_2CF4
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2078(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20ED (sub_20ED)
 * segment: seg2.asm    offset: 0x20ED    instructions: 58
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   FILLRECT(?)
 *   INTERSECTRECT(?)
 *
 * Internal calls: L_2CF4
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20ED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2182 (sub_2182)
 * segment: seg2.asm    offset: 0x2182    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INTERSECTRECT(?)
 *   SCROLLWINDOW(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_2CF4
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2182(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2240 (sub_2240)
 * segment: seg2.asm    offset: 0x2240    instructions: 6
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2240(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_224D (sub_224D)
 * segment: seg2.asm    offset: 0x224D    instructions: 113
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SCROLLWINDOW(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_224D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_238E (sub_238E)
 * segment: seg2.asm    offset: 0x238E    instructions: 85
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1884, L_200A, L_20ED, L_24F1, L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_238E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2460 (sub_2460)
 * segment: seg2.asm    offset: 0x2460    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETTEXTMETRICS(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_200A, L_24F1, L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2460(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_24F1 (sub_24F1)
 * segment: seg2.asm    offset: 0x24F1    instructions: 114
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SCROLLWINDOW(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_24F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_263D (sub_263D)
 * segment: seg2.asm    offset: 0x263D    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_224D, L_24F1, L_2ACA, L_5119
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_263D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_272D (sub_272D)
 * segment: seg2.asm    offset: 0x272D    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_24F1, L_27C1
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_272D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_27AA (sub_27AA)
 * segment: seg2.asm    offset: 0x27AA    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_27AA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_27C1 (sub_27C1)
 * segment: seg2.asm    offset: 0x27C1    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETSYSCOLOR(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_27C1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2808 (sub_2808)
 * segment: seg2.asm    offset: 0x2808    instructions: 134
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   FILLRECT(?)
 *   INTERSECTRECT(?)
 *   INVERTRECT(?)
 *
 * Internal calls: L_2CF4, L_60F0
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2808(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2970 (sub_2970)
 * segment: seg2.asm    offset: 0x2970    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   INTERSECTRECT(?)
 *
 * Internal calls: L_1884, L_20ED, L_2C98
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2970(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A5D (sub_2A5D)
 * segment: seg2.asm    offset: 0x2A5D    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   PTINRECT(?)
 *   SETCARETPOS(?)
 *
 * Internal calls: L_2D73
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A5D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2ACA (sub_2ACA)
 * segment: seg2.asm    offset: 0x2ACA    instructions: 151
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATECARET(?)
 *   DESTROYCARET(?)
 *   HIDECARET(?)
 *   SHOWCARET(?)
 *
 * Internal calls: L_2A5D, L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2ACA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2C98 (sub_2C98)
 * segment: seg2.asm    offset: 0x2C98    instructions: 34
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2C98(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2CF4 (sub_2CF4)
 * segment: seg2.asm    offset: 0x2CF4    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2CF4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D34 (sub_2D34)
 * segment: seg2.asm    offset: 0x2D34    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D34(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D73 (sub_2D73)
 * segment: seg2.asm    offset: 0x2D73    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D73(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D99 (sub_2D99)
 * segment: seg2.asm    offset: 0x2D99    instructions: 42
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2D34
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D99(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E0E (sub_2E0E)
 * segment: seg2.asm    offset: 0x2E0E    instructions: 27
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_2ACA, L_5BDB
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E0E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E47 (sub_2E47)
 * segment: seg2.asm    offset: 0x2E47    instructions: 75
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_15BB, L_1A2A, L_1A9E, L_2E47
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E47(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2F00 (sub_2F00)
 * segment: seg2.asm    offset: 0x2F00    instructions: 48
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_2E47
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2F00(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2F65 (sub_2F65)
 * segment: seg2.asm    offset: 0x2F65    instructions: 22
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2F65(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2F85 (sub_2F85)
 * segment: seg2.asm    offset: 0x2F85    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1954, L_200A, L_224D, L_2ACA, L_2E47
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2F85(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2FE5 (sub_2FE5)
 * segment: seg2.asm    offset: 0x2FE5    instructions: 47
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *
 * Internal calls: L_2970, L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2FE5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_303F (sub_303F)
 * segment: seg2.asm    offset: 0x303F    instructions: 51
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_108D, L_383C, L_60F0
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_303F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_30C0 (sub_30C0)
 * segment: seg2.asm    offset: 0x30C0    instructions: 277
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: ret
 *
 * API calls:
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_10FA, L_15BB, L_1736, L_1A2A, L_1A9E, L_200A ... +7
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_30C0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_336F (sub_336F)
 * segment: seg2.asm    offset: 0x336F    instructions: 16
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_336F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3396 (sub_3396)
 * segment: seg2.asm    offset: 0x3396    instructions: 9
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_3452
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3396(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33A8 (sub_33A8)
 * segment: seg2.asm    offset: 0x33A8    instructions: 8
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33A8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33BA (sub_33BA)
 * segment: seg2.asm    offset: 0x33BA    instructions: 40
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_33BA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33BA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33FF (sub_33FF)
 * segment: seg2.asm    offset: 0x33FF    instructions: 42
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3452 (sub_3452)
 * segment: seg2.asm    offset: 0x3452    instructions: 124
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_33FF
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3452(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3588 (sub_3588)
 * segment: seg2.asm    offset: 0x3588    instructions: 297
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3588(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_383C (sub_383C)
 * segment: seg2.asm    offset: 0x383C    instructions: 86
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   ENABLEWINDOW(?)
 *   GETACTIVEWINDOW(?)
 *   GETMENU(?)
 *   ISWINDOWENABLED(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_336F, L_397F
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_383C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3932 (sub_3932)
 * segment: seg2.asm    offset: 0x3932    instructions: 33
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3932(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_397F (sub_397F)
 * segment: seg2.asm    offset: 0x397F    instructions: 86
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_3932
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_397F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3A45 (sub_3A45)
 * segment: seg2.asm    offset: 0x3A45    instructions: 44
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_5D26
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3A45(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3AB9 (sub_3AB9)
 * segment: seg2.asm    offset: 0x3AB9    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   MESSAGEBEEP(?)
 *
 * Internal calls: L_3B32, L_4A18, L_62E4
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3AB9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B32 (sub_3B32)
 * segment: seg2.asm    offset: 0x3B32    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B32(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B64 (sub_3B64)
 * segment: seg2.asm    offset: 0x3B64    instructions: 28
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B64(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3B9D (sub_3B9D)
 * segment: seg2.asm    offset: 0x3B9D    instructions: 20
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3B9D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3BC3 (sub_3BC3)
 * segment: seg2.asm    offset: 0x3BC3    instructions: 92
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_3B64, L_3B9D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3BC3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3C89 (sub_3C89)
 * segment: seg2.asm    offset: 0x3C89    instructions: 166
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETTEXTMETRICS(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   ENABLEWINDOW(?)
 *   GETACTIVEWINDOW(?)
 *   GETMENU(?)
 *   ISWINDOWENABLED(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_2F00, L_303F, L_336F, L_3BC3
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3C89(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3E3A (sub_3E3A)
 * segment: seg2.asm    offset: 0x3E3A    instructions: 45
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Internal calls: L_3C89, L_4BE2
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3E3A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3EB9 (sub_3EB9)
 * segment: seg2.asm    offset: 0x3EB9    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3EB9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3F0A (sub_3F0A)
 * segment: seg2.asm    offset: 0x3F0A    instructions: 39
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   YIELD(void) -> VOID
 *   GETTICKCOUNT(?)
 *   GETTIMERRESOLUTION(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3F0A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3F6F (sub_3F6F)
 * segment: seg2.asm    offset: 0x3F6F    instructions: 39
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   READCOMM(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3F6F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3FD4 (sub_3FD4)
 * segment: seg2.asm    offset: 0x3FD4    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_33BA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3FD4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_408F (sub_408F)
 * segment: seg2.asm    offset: 0x408F    instructions: 75
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_33BA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_408F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4156 (sub_4156)
 * segment: seg2.asm    offset: 0x4156    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_3F0A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4156(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4181 (sub_4181)
 * segment: seg2.asm    offset: 0x4181    instructions: 219
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   FLUSHCOMM(?)
 *   GETCOMMERROR(?)
 *   READCOMM(?)
 *   WRITECOMM(?)
 *
 * Internal calls: L_3F0A, L_3F6F, L_3FD4, L_4156, L_4181
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4181(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_43F0 (sub_43F0)
 * segment: seg2.asm    offset: 0x43F0    instructions: 134
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   FLUSHCOMM(?)
 *   GETTICKCOUNT(?)
 *   GETTIMERRESOLUTION(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *
 * Internal calls: L_3F0A, L_3F6F, L_4181, L_43F0
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_43F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4556 (sub_4556)
 * segment: seg2.asm    offset: 0x4556    instructions: 39
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4556(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_45B1 (sub_45B1)
 * segment: seg2.asm    offset: 0x45B1    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_601D, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_45B1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4604 (sub_4604)
 * segment: seg2.asm    offset: 0x4604    instructions: 41
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_2460, L_263D, L_4950, L_5ABE, L_61EF
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4604(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_466B (sub_466B)
 * segment: seg2.asm    offset: 0x466B    instructions: 60
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Internal calls: L_4556, L_45B1
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_466B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_46FB (sub_46FB)
 * segment: seg2.asm    offset: 0x46FB    instructions: 11
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Internal calls: L_3452
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_46FB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4716 (sub_4716)
 * segment: seg2.asm    offset: 0x4716    instructions: 26
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_3452
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4716(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4754 (sub_4754)
 * segment: seg2.asm    offset: 0x4754    instructions: 78
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Internal calls: L_3452, L_4556, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4754(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4820 (sub_4820)
 * segment: seg2.asm    offset: 0x4820    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_3452, L_397F, L_45B1, L_4604, L_603D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4820(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_489E (sub_489E)
 * segment: seg2.asm    offset: 0x489E    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_489E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_48C9 (sub_48C9)
 * segment: seg2.asm    offset: 0x48C9    instructions: 13
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_3452
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_48C9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_48E7 (sub_48E7)
 * segment: seg2.asm    offset: 0x48E7    instructions: 5
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_48E7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_48F3 (sub_48F3)
 * segment: seg2.asm    offset: 0x48F3    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_48F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4903 (sub_4903)
 * segment: seg2.asm    offset: 0x4903    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   OPENCOMM(?)
 *
 * Internal calls: L_4950
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4903(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_493B (sub_493B)
 * segment: seg2.asm    offset: 0x493B    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CLOSECOMM(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_493B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4950 (sub_4950)
 * segment: seg2.asm    offset: 0x4950    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCOMMSTATE(?)
 *   SETCOMMSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4950(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_49F2 (sub_49F2)
 * segment: seg2.asm    offset: 0x49F2    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_49F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4A18 (sub_4A18)
 * segment: seg2.asm    offset: 0x4A18    instructions: 156
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETCOMMERROR(?)
 *   GETTICKCOUNT(?)
 *   GETTIMERRESOLUTION(?)
 *   WRITECOMM(?)
 *
 * Internal calls: L_3452, L_49F2
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4A18(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4BB4 (sub_4BB4)
 * segment: seg2.asm    offset: 0x4BB4    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CLEARCOMMBREAK(?)
 *   SETCOMMBREAK(?)
 *
 * Internal calls: L_3F0A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4BB4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4BE2 (sub_4BE2)
 * segment: seg2.asm    offset: 0x4BE2    instructions: 89
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETMENU(?)
 *
 * Internal calls: L_3452, L_489E, L_4903, L_493B
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4BE2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4CCB (sub_4CCB)
 * segment: seg2.asm    offset: 0x4CCB    instructions: 132
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   READCOMM(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_2FE5, L_43F0, L_493B
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4CCB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4E2E (sub_4E2E)
 * segment: seg2.asm    offset: 0x4E2E    instructions: 45
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_108D, L_5658, L_56EC, L_575A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4E2E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4EAB (sub_4EAB)
 * segment: seg2.asm    offset: 0x4EAB    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_605D, L_611B
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4EAB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4EE3 (sub_4EE3)
 * segment: seg2.asm    offset: 0x4EE3    instructions: 11
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_6194
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4EE3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4EFD (sub_4EFD)
 * segment: seg2.asm    offset: 0x4EFD    instructions: 6
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4EFD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4F0D (sub_4F0D)
 * segment: seg2.asm    offset: 0x4F0D    instructions: 71
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSCROLLPOS(?)
 *   GETSCROLLRANGE(?)
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_59BF
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4F0D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_4FBB (sub_4FBB)
 * segment: seg2.asm    offset: 0x4FBB    instructions: 131
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSCROLLPOS(?)
 *   GETSCROLLRANGE(?)
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_1F82, L_2ACA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_4FBB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_50F9 (sub_50F9)
 * segment: seg2.asm    offset: 0x50F9    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_50F9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5119 (sub_5119)
 * segment: seg2.asm    offset: 0x5119    instructions: 305
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETSCROLLPOS(?)
 *   GETSCROLLRANGE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1DCA, L_1F82, L_200A, L_2240, L_224D, L_238E ... +8
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5119(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_542A (sub_542A)
 * segment: seg2.asm    offset: 0x542A    instructions: 20
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1DCA, L_200A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_542A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5463 (sub_5463)
 * segment: seg2.asm    offset: 0x5463    instructions: 18
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_542A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5463(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_548D (sub_548D)
 * segment: seg2.asm    offset: 0x548D    instructions: 168
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_1BDE, L_1C22, L_542A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_548D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5658 (sub_5658)
 * segment: seg2.asm    offset: 0x5658    instructions: 49
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5658(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_56EC (sub_56EC)
 * segment: seg2.asm    offset: 0x56EC    instructions: 34
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_56EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_575A (sub_575A)
 * segment: seg2.asm    offset: 0x575A    instructions: 39
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_5658, L_605D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_575A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_57C7 (sub_57C7)
 * segment: seg2.asm    offset: 0x57C7    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_224D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_57C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5828 (sub_5828)
 * segment: seg2.asm    offset: 0x5828    instructions: 134
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_10FA, L_15BB, L_1954, L_200A, L_542A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5828(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_59BF (sub_59BF)
 * segment: seg2.asm    offset: 0x59BF    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2ACA, L_57C7, L_5828
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_59BF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5A84 (sub_5A84)
 * segment: seg2.asm    offset: 0x5A84    instructions: 25
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_108D, L_56EC, L_575A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5A84(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5ABE (sub_5ABE)
 * segment: seg2.asm    offset: 0x5ABE    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_4EAB, L_4EE3, L_575A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5ABE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5B46 (sub_5B46)
 * segment: seg2.asm    offset: 0x5B46    instructions: 12
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_5ABE
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5B46(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5B5F (sub_5B5F)
 * segment: seg2.asm    offset: 0x5B5F    instructions: 42
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_1DA5, L_1DCA, L_200A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5B5F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5BDB (sub_5BDB)
 * segment: seg2.asm    offset: 0x5BDB    instructions: 36
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2ACA, L_5B5F
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5BDB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5C30 (sub_5C30)
 * segment: seg2.asm    offset: 0x5C30    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2D99, L_548D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5C30(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5C64 (sub_5C64)
 * segment: seg2.asm    offset: 0x5C64    instructions: 25
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2D99, L_548D, L_5C30
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5C64(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5CA6 (sub_5CA6)
 * segment: seg2.asm    offset: 0x5CA6    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2ACA, L_2D99, L_5463, L_5C64
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5CA6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_5D26 (sub_5D26)
 * segment: seg2.asm    offset: 0x5D26    instructions: 297
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETKEYSTATE(?)
 *   GETSCROLLPOS(?)
 *   GETSCROLLRANGE(?)
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_1F82, L_224D, L_2ACA, L_2D73, L_4EFD, L_4FBB ... +4
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_5D26(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_601D (sub_601D)
 * segment: seg2.asm    offset: 0x601D    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_601D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_603D (sub_603D)
 * segment: seg2.asm    offset: 0x603D    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_603D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_605D (sub_605D)
 * segment: seg2.asm    offset: 0x605D    instructions: 12
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_605D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_6074 (sub_6074)
 * segment: seg2.asm    offset: 0x6074    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_6074(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_60F0 (sub_60F0)
 * segment: seg2.asm    offset: 0x60F0    instructions: 24
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_60F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_611B (sub_611B)
 * segment: seg2.asm    offset: 0x611B    instructions: 47
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_611B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_6194 (sub_6194)
 * segment: seg2.asm    offset: 0x6194    instructions: 41
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_6194(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_61EF (sub_61EF)
 * segment: seg2.asm    offset: 0x61EF    instructions: 97
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_61EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_62E4 (sub_62E4)
 * segment: seg2.asm    offset: 0x62E4    instructions: 18
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_62E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_6303 (sub_6303)
 * segment: seg2.asm    offset: 0x6303    instructions: 72
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_6303
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_6303(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00ED (sub_00ED)
 * segment: seg3.asm    offset: 0x00ED    instructions: 9
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00ED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0102 (sub_0102)
 * segment: seg3.asm    offset: 0x0102    instructions: 308
 * classification (pass8): unclear
 * prologue: none    epilogue: jmp_tail
 *
 * API calls:
 *   MESSAGEBEEP(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0102(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0357 (sub_0357)
 * segment: seg3.asm    offset: 0x0357    instructions: 21
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_04FC
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0357(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_038A (sub_038A)
 * segment: seg3.asm    offset: 0x038A    instructions: 23
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_03B7
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_038A(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03B7 (sub_03B7)
 * segment: seg3.asm    offset: 0x03B7    instructions: 145
 * classification (pass8): unclear
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_00ED, L_057A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03B7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04FC (sub_04FC)
 * segment: seg3.asm    offset: 0x04FC    instructions: 52
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04FC(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_057A (sub_057A)
 * segment: seg3.asm    offset: 0x057A    instructions: 27
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_057A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C8 (sub_05C8)
 * segment: seg3.asm    offset: 0x05C8    instructions: 49
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_038A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_065B (sub_065B)
 * segment: seg3.asm    offset: 0x065B    instructions: 11
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_04FC
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_065B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_067B (sub_067B)
 * segment: seg3.asm    offset: 0x067B    instructions: 2
 * classification (pass8): tiny
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_067B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_067D (sub_067D)
 * segment: seg3.asm    offset: 0x067D    instructions: 28
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_067D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06BC (sub_06BC)
 * segment: seg3.asm    offset: 0x06BC    instructions: 14
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_06D9
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06BC(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06D9 (sub_06D9)
 * segment: seg3.asm    offset: 0x06D9    instructions: 15
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_06FA
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06D9(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06FA (sub_06FA)
 * segment: seg3.asm    offset: 0x06FA    instructions: 210
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_0102, L_04FC, L_08DF
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06FA(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08DF (sub_08DF)
 * segment: seg3.asm    offset: 0x08DF    instructions: 47
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_0102
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08DF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0947 (sub_0947)
 * segment: seg3.asm    offset: 0x0947    instructions: 26
 * classification (pass8): asm_medium
 * prologue: none    epilogue: unknown
 *
 * Internal calls: L_0357, L_057A, L_05C8, L_065B, L_067B, L_067D ... +1
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0947(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0993 (sub_0993)
 * segment: seg3.asm    offset: 0x0993    instructions: 24
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Internal calls: L_09CD
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0993(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09CD (sub_09CD)
 * segment: seg3.asm    offset: 0x09CD    instructions: 25
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_09CD, L_0A00
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09CD(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A00 (sub_0A00)
 * segment: seg3.asm    offset: 0x0A00    instructions: 243
 * classification (pass8): asm_medium
 * prologue: none    epilogue: jmp_tail
 *
 * Internal calls: L_0947, L_0993, L_09CD
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A00(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00D8 (sub_00D8)
 * segment: seg4.asm    offset: 0x00D8    instructions: 69
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   GETCLIPBOARDDATA(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_0190
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0190 (sub_0190)
 * segment: seg4.asm    offset: 0x0190    instructions: 128
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETTICKCOUNT(?)
 *   GETTIMERRESOLUTION(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0190(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg5.asm    offset: 0x0000    instructions: 24
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0038 (sub_0038)
 * segment: seg5.asm    offset: 0x0038    instructions: 266
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   CHECKDLGBUTTON(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   KILLTIMER(?)
 *   SETDLGITEMINT(?)
 *   SETTIMER(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0038(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02DF (sub_02DF)
 * segment: seg5.asm    offset: 0x02DF    instructions: 35
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02DF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_032A (sub_032A)
 * segment: seg5.asm    offset: 0x032A    instructions: 200
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMINT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMINT(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0038
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_032A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_052D (sub_052D)
 * segment: seg5.asm    offset: 0x052D    instructions: 64
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_052D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05AC (sub_05AC)
 * segment: seg5.asm    offset: 0x05AC    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05AC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05FB (sub_05FB)
 * segment: seg5.asm    offset: 0x05FB    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISWINDOWENABLED(?)
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05FB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0614 (sub_0614)
 * segment: seg5.asm    offset: 0x0614    instructions: 84
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   5(?)
 *   6(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *
 * Internal calls: L_052D
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0614(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06F8 (sub_06F8)
 * segment: seg5.asm    offset: 0x06F8    instructions: 380
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   CHECKDLGBUTTON(?)
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMINT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMINT(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_0038
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06F8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AE0 (sub_0AE0)
 * segment: seg5.asm    offset: 0x0AE0    instructions: 59
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AE0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B75 (sub_0B75)
 * segment: seg5.asm    offset: 0x0B75    instructions: 333
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATEDIALOG(?)
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMINT(?)
 *   SETDLGITEMINT(?)
 *
 * Internal calls: L_0038, L_0AE0, L_0B75
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B75(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg6.asm    offset: 0x0000    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004A (sub_004A)
 * segment: seg6.asm    offset: 0x004A    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00AE (sub_00AE)
 * segment: seg6.asm    offset: 0x00AE    instructions: 36
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_004A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_010A (sub_010A)
 * segment: seg6.asm    offset: 0x010A    instructions: 174
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Internal calls: L_004A, L_00AE, L_010A
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_010A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0141 (sub_0141)
 * segment: seg7.asm    offset: 0x0141    instructions: 203
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
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0141(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035F (sub_035F)
 * segment: seg7.asm    offset: 0x035F    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   DLGDIRLIST(?)
 *
 * Internal calls: L_039F
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_039F (sub_039F)
 * segment: seg7.asm    offset: 0x039F    instructions: 34
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_039F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03E8 (sub_03E8)
 * segment: seg7.asm    offset: 0x03E8    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03E8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04BD (sub_04BD)
 * segment: seg7.asm    offset: 0x04BD    instructions: 32
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04F9 (sub_04F9)
 * segment: seg7.asm    offset: 0x04F9    instructions: 20
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04F9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00E3 (sub_00E3)
 * segment: seg8.asm    offset: 0x00E3    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00E3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0104 (sub_0104)
 * segment: seg8.asm    offset: 0x0104    instructions: 50
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: unknown
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/TERMINAL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0104(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

