/*
 * CONTROL.c - Reconstructed C scaffold for Windows 1.x CONTROL.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CONTROL.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CONTROL/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CONTROL/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 154
 * Total API call sites: 516
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
 * segment: seg1.asm    offset: 0x0000    instructions: 144
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0141 (sub_0141)
 * segment: seg1.asm    offset: 0x0141    instructions: 369
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEDC(HDC hDC) -> BOOL
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETNEARESTCOLOR(?)
 *   GETPROFILESTRING(?)
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CHANGEMENU(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   GETSUBMENU(?)
 *   GETSYSCOLOR(?)
 *   GETSYSTEMMENU(?)
 *   ISDIALOGMESSAGE(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   POSTQUITMESSAGE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_04FF, L_050F, L_0630, L_063C, L_0EDA, L_1438
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0141(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04FF (sub_04FF)
 * segment: seg1.asm    offset: 0x04FF    instructions: 7
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_050F (sub_050F)
 * segment: seg1.asm    offset: 0x050F    instructions: 108
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCARETBLINKTIME(?)
 *   KILLTIMER(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   SETTIMER(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_050F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0630 (sub_0630)
 * segment: seg1.asm    offset: 0x0630    instructions: 6
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0630(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_063C (sub_063C)
 * segment: seg1.asm    offset: 0x063C    instructions: 540
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   WRITEPROFILESTRING(?)
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CHECKDLGBUTTON(?)
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   FILLRECT(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETSYSCOLOR(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   INVERTRECT(?)
 *   ISDLGBUTTONCHECKED(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   PTINRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *   SETTIMER(?)
 *   SHOWCURSOR(?)
 *   SWAPMOUSEBUTTON(?)
 *
 * Internal calls: L_0788, L_0BB1, L_0C86, L_0D06, L_1225, L_1257 ... +1
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_063C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BB1 (sub_0BB1)
 * segment: seg1.asm    offset: 0x0BB1    instructions: 88
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   DRAWTEXT(?)
 *
 * Internal calls: L_0C86, L_0D06, L_119A, L_1225, L_1257
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BB1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C86 (sub_0C86)
 * segment: seg1.asm    offset: 0x0C86    instructions: 55
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   DRAWTEXT(?)
 *   FILLRECT(?)
 *   INVERTRECT(?)
 *
 * Internal calls: L_1337
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C86(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D06 (sub_0D06)
 * segment: seg1.asm    offset: 0x0D06    instructions: 179
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   DRAWTEXT(?)
 *   FILLRECT(?)
 *   INVERTRECT(?)
 *
 * Internal calls: L_12C7
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D06(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EDA (sub_0EDA)
 * segment: seg1.asm    offset: 0x0EDA    instructions: 241
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETTIMER(?)
 *
 * Internal calls: L_0D06, L_1257
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EDA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_119A (sub_119A)
 * segment: seg1.asm    offset: 0x119A    instructions: 51
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETFOCUS(?)
 *   GETPARENT(?)
 *   SETFOCUS(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_119A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1225 (sub_1225)
 * segment: seg1.asm    offset: 0x1225    instructions: 27
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_1288
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1225(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1257 (sub_1257)
 * segment: seg1.asm    offset: 0x1257    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_1288
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1257(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1288 (sub_1288)
 * segment: seg1.asm    offset: 0x1288    instructions: 30
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1288(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12C7 (sub_12C7)
 * segment: seg1.asm    offset: 0x12C7    instructions: 51
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1337 (sub_1337)
 * segment: seg1.asm    offset: 0x1337    instructions: 80
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1337(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_140D (sub_140D)
 * segment: seg1.asm    offset: 0x140D    instructions: 24
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_140D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1438 (sub_1438)
 * segment: seg1.asm    offset: 0x1438    instructions: 61
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_140D, L_14BA
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1438(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14BA (sub_14BA)
 * segment: seg1.asm    offset: 0x14BA    instructions: 92
 * classification (pass8): asm_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   INITAPP(?)
 *
 * Internal calls: L_168E, L_1720
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14BA(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1585 (sub_1585)
 * segment: seg1.asm    offset: 0x1585    instructions: 130
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
 * Internal calls: L_1730
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1585(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_168E (sub_168E)
 * segment: seg1.asm    offset: 0x168E    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_168E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1720 (sub_1720)
 * segment: seg1.asm    offset: 0x1720    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_173B, L_1771
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1720(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1730 (sub_1730)
 * segment: seg1.asm    offset: 0x1730    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1730(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_173B (sub_173B)
 * segment: seg1.asm    offset: 0x173B    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_1585, L_1783
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_173B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1771 (sub_1771)
 * segment: seg1.asm    offset: 0x1771    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1771(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1783 (sub_1783)
 * segment: seg1.asm    offset: 0x1783    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1783(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07D8 (sub_07D8)
 * segment: seg2.asm    offset: 0x07D8    instructions: 30
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * API calls:
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0492 (sub_0492)
 * segment: seg3.asm    offset: 0x0492    instructions: 137
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0492, L_0623, L_069B
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0492(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0623 (sub_0623)
 * segment: seg3.asm    offset: 0x0623    instructions: 57
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0777, L_07A6
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0623(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_069B (sub_069B)
 * segment: seg3.asm    offset: 0x069B    instructions: 72
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_069B
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_069B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0777 (sub_0777)
 * segment: seg3.asm    offset: 0x0777    instructions: 22
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0777(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07A6 (sub_07A6)
 * segment: seg3.asm    offset: 0x07A6    instructions: 22
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0019 (sub_0019)
 * segment: seg4.asm    offset: 0x0019    instructions: 33
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_0088, L_0210
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0019(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_005D (sub_005D)
 * segment: seg4.asm    offset: 0x005D    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_0088, L_0210
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_005D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0088 (sub_0088)
 * segment: seg4.asm    offset: 0x0088    instructions: 151
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FINDRESOURCE(?)
 *   GETCODEHANDLE(?)
 *   LOADRESOURCE(?)
 *   LOCKRESOURCE(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0088(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01FE (sub_01FE)
 * segment: seg4.asm    offset: 0x01FE    instructions: 7
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0210 (sub_0210)
 * segment: seg4.asm    offset: 0x0210    instructions: 7
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0210(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0224 (sub_0224)
 * segment: seg4.asm    offset: 0x0224    instructions: 165
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0224(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03CE (sub_03CE)
 * segment: seg4.asm    offset: 0x03CE    instructions: 36
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_044C, L_061C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03CE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_041B (sub_041B)
 * segment: seg4.asm    offset: 0x041B    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_044C, L_061C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_041B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_044C (sub_044C)
 * segment: seg4.asm    offset: 0x044C    instructions: 169
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETPARENT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETWINDOWWORD(?)
 *
 * Internal calls: L_071C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_044C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_060A (sub_060A)
 * segment: seg4.asm    offset: 0x060A    instructions: 7
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_060A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_061C (sub_061C)
 * segment: seg4.asm    offset: 0x061C    instructions: 50
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALLOCK(HANDLE hMem) -> PSTR
 *   LOCALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_061C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_069D (sub_069D)
 * segment: seg4.asm    offset: 0x069D    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_069D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_071C (sub_071C)
 * segment: seg4.asm    offset: 0x071C    instructions: 392
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCALLOCK(HANDLE hMem) -> PSTR
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   LOCALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   5(?)
 *   ENABLEWINDOW(?)
 *   GETPARENT(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_071C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B4C (sub_0B4C)
 * segment: seg4.asm    offset: 0x0B4C    instructions: 33
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_0BBB, L_0CE4
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B4C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B90 (sub_0B90)
 * segment: seg4.asm    offset: 0x0B90    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_0BBB, L_0CE4
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B90(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BBB (sub_0BBB)
 * segment: seg4.asm    offset: 0x0BBB    instructions: 117
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   GETMODULEFILENAME(HANDLE hModule, LPSTR lpszFile, INT cbMax) -> INT
 *   GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BBB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CE4 (sub_0CE4)
 * segment: seg4.asm    offset: 0x0CE4    instructions: 102
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0DF2, L_0FAB, L_2035
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CE4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DF2 (sub_0DF2)
 * segment: seg4.asm    offset: 0x0DF2    instructions: 178
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   5(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DF2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FAB (sub_0FAB)
 * segment: seg4.asm    offset: 0x0FAB    instructions: 241
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FAB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11DB (sub_11DB)
 * segment: seg4.asm    offset: 0x11DB    instructions: 36
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_1259, L_1433
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11DB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1228 (sub_1228)
 * segment: seg4.asm    offset: 0x1228    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_1259, L_1433
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1228(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1259 (sub_1259)
 * segment: seg4.asm    offset: 0x1259    instructions: 26
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Internal calls: L_20FF
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1259(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12A2 (sub_12A2)
 * segment: seg4.asm    offset: 0x12A2    instructions: 83
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12A2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_136D (sub_136D)
 * segment: seg4.asm    offset: 0x136D    instructions: 75
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETSYSTEMMETRICS(?)
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_1545
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_136D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1433 (sub_1433)
 * segment: seg4.asm    offset: 0x1433    instructions: 104
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_1545, L_1671, L_1DB3
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1433(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1545 (sub_1545)
 * segment: seg4.asm    offset: 0x1545    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1545(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_156B (sub_156B)
 * segment: seg4.asm    offset: 0x156B    instructions: 113
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_156B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1671 (sub_1671)
 * segment: seg4.asm    offset: 0x1671    instructions: 174
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1671(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_181E (sub_181E)
 * segment: seg4.asm    offset: 0x181E    instructions: 35
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_1899, L_1A09
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_181E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1868 (sub_1868)
 * segment: seg4.asm    offset: 0x1868    instructions: 21
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_1899, L_1A09
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1868(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1899 (sub_1899)
 * segment: seg4.asm    offset: 0x1899    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1899(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A09 (sub_1A09)
 * segment: seg4.asm    offset: 0x1A09    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A09(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A35 (sub_1A35)
 * segment: seg4.asm    offset: 0x1A35    instructions: 128
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A35(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B71 (sub_1B71)
 * segment: seg4.asm    offset: 0x1B71    instructions: 168
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ADDFONTRESOURCE(?)
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_1D19, L_1DB3, L_2326
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B71(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D19 (sub_1D19)
 * segment: seg4.asm    offset: 0x1D19    instructions: 43
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   5(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D19(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D8A (sub_1D8A)
 * segment: seg4.asm    offset: 0x1D8A    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D8A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DB3 (sub_1DB3)
 * segment: seg4.asm    offset: 0x1DB3    instructions: 246
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSINEXT(?)
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DB3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2035 (sub_2035)
 * segment: seg4.asm    offset: 0x2035    instructions: 85
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ADDFONTRESOURCE(?)
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2035(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20FF (sub_20FF)
 * segment: seg4.asm    offset: 0x20FF    instructions: 125
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   ENABLEWINDOW(?)
 *   GETPARENT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_223A (sub_223A)
 * segment: seg4.asm    offset: 0x223A    instructions: 97
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_1545
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_223A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2326 (sub_2326)
 * segment: seg4.asm    offset: 0x2326    instructions: 59
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   REMOVEFONTRESOURCE(?)
 *   WRITEPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2326(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00EC (sub_00EC)
 * segment: seg5.asm    offset: 0x00EC    instructions: 313
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_048E, L_053E, L_0560, L_0588, L_05B0, L_064C ... +1
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03EC (sub_03EC)
 * segment: seg5.asm    offset: 0x03EC    instructions: 42
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Internal calls: L_05B0
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0457 (sub_0457)
 * segment: seg5.asm    offset: 0x0457    instructions: 23
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0457(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_048E (sub_048E)
 * segment: seg5.asm    offset: 0x048E    instructions: 89
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_048E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_053E (sub_053E)
 * segment: seg5.asm    offset: 0x053E    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_053E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0560 (sub_0560)
 * segment: seg5.asm    offset: 0x0560    instructions: 22
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0560(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0588 (sub_0588)
 * segment: seg5.asm    offset: 0x0588    instructions: 22
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0588(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05B0 (sub_05B0)
 * segment: seg5.asm    offset: 0x05B0    instructions: 95
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05B0(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_064C (sub_064C)
 * segment: seg5.asm    offset: 0x064C    instructions: 17
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_064C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_066B (sub_066B)
 * segment: seg5.asm    offset: 0x066B    instructions: 19
 * classification (pass8): asm_medium
 * prologue: none    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_066B(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0092 (sub_0092)
 * segment: seg6.asm    offset: 0x0092    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_06EA
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0092(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00C5 (sub_00C5)
 * segment: seg6.asm    offset: 0x00C5    instructions: 32
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0115 (sub_0115)
 * segment: seg6.asm    offset: 0x0115    instructions: 88
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0115(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01F4 (sub_01F4)
 * segment: seg6.asm    offset: 0x01F4    instructions: 12
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01F4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0211 (sub_0211)
 * segment: seg6.asm    offset: 0x0211    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_06EA, L_0910
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0211(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A4 (sub_02A4)
 * segment: seg6.asm    offset: 0x02A4    instructions: 94
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETPARENT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0393 (sub_0393)
 * segment: seg6.asm    offset: 0x0393    instructions: 34
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0393(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03EA (sub_03EA)
 * segment: seg6.asm    offset: 0x03EA    instructions: 294
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   ENABLEWINDOW(?)
 *   GETPARENT(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03EA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06EA (sub_06EA)
 * segment: seg6.asm    offset: 0x06EA    instructions: 174
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06EA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08CC (sub_08CC)
 * segment: seg6.asm    offset: 0x08CC    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08CC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0910 (sub_0910)
 * segment: seg6.asm    offset: 0x0910    instructions: 325
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0910(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C47 (sub_0C47)
 * segment: seg6.asm    offset: 0x0C47    instructions: 103
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0D48
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C47(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D48 (sub_0D48)
 * segment: seg6.asm    offset: 0x0D48    instructions: 31
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Internal calls: L_0D95
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D48(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D95 (sub_0D95)
 * segment: seg6.asm    offset: 0x0D95    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D95(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DBB (sub_0DBB)
 * segment: seg6.asm    offset: 0x0DBB    instructions: 124
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   LOADLIBRARY(LPSTR lpszLibFile) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DBB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EF7 (sub_0EF7)
 * segment: seg6.asm    offset: 0x0EF7    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EF7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F21 (sub_0F21)
 * segment: seg6.asm    offset: 0x0F21    instructions: 221
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   FREELIBRARY(HANDLE hLibModule) -> VOID
 *   FREEMODULE(?)
 *   GETPROCADDRESS(HANDLE hModule, LPSTR lpszProc) -> FARPROC
 *   GETPROFILESTRING(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F21(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_113C (sub_113C)
 * segment: seg6.asm    offset: 0x113C    instructions: 121
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   CHECKRADIOBUTTON(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_127F, L_1305, L_1547
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_113C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_127F (sub_127F)
 * segment: seg6.asm    offset: 0x127F    instructions: 57
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_127F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1305 (sub_1305)
 * segment: seg6.asm    offset: 0x1305    instructions: 48
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1305(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_137A (sub_137A)
 * segment: seg6.asm    offset: 0x137A    instructions: 36
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_137A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13D5 (sub_13D5)
 * segment: seg6.asm    offset: 0x13D5    instructions: 39
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1439 (sub_1439)
 * segment: seg6.asm    offset: 0x1439    instructions: 7
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1439(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1449 (sub_1449)
 * segment: seg6.asm    offset: 0x1449    instructions: 88
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1449(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1522 (sub_1522)
 * segment: seg6.asm    offset: 0x1522    instructions: 6
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1522(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1530 (sub_1530)
 * segment: seg6.asm    offset: 0x1530    instructions: 10
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1530(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1547 (sub_1547)
 * segment: seg6.asm    offset: 0x1547    instructions: 177
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   ISDLGBUTTONCHECKED(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1547(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg7.asm    offset: 0x004F    instructions: 51
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   MESSAGEBEEP(?)
 *   PTINRECT(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0720, L_09EC, L_0C1D
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00D3 (sub_00D3)
 * segment: seg7.asm    offset: 0x00D3    instructions: 65
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETSYSCOLOR(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00D3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0182 (sub_0182)
 * segment: seg7.asm    offset: 0x0182    instructions: 483
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETTEXTEXTENT(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETSYSTEMMETRICS(?)
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SCREENTOCLIENT(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETSCROLLRANGE(?)
 *
 * Internal calls: L_06C7, L_1649
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0182(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06C7 (sub_06C7)
 * segment: seg7.asm    offset: 0x06C7    instructions: 32
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_1384
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0720 (sub_0720)
 * segment: seg7.asm    offset: 0x0720    instructions: 96
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SETSYSCOLORS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_06C7, L_08E9, L_0E9C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0720(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0826 (sub_0826)
 * segment: seg7.asm    offset: 0x0826    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_06C7, L_0E9C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0826(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08E9 (sub_08E9)
 * segment: seg7.asm    offset: 0x08E9    instructions: 108
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   WRITEPROFILESTRING(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08E9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09EC (sub_09EC)
 * segment: seg7.asm    offset: 0x09EC    instructions: 186
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETNEARESTCOLOR(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_0E9C, L_1563
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C1D (sub_0C1D)
 * segment: seg7.asm    offset: 0x0C1D    instructions: 234
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   FILLRECT(?)
 *
 * Internal calls: L_0E9C, L_1563
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C1D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E9C (sub_0E9C)
 * segment: seg7.asm    offset: 0x0E9C    instructions: 214
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   DRAWICON(?)
 *   DRAWTEXT(?)
 *   FILLRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E9C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1134 (sub_1134)
 * segment: seg7.asm    offset: 0x1134    instructions: 171
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   FILLRECT(?)
 *
 * Internal calls: L_0E9C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1134(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1327 (sub_1327)
 * segment: seg7.asm    offset: 0x1327    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Internal calls: L_0E9C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1327(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1384 (sub_1384)
 * segment: seg7.asm    offset: 0x1384    instructions: 158
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1384(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1507 (sub_1507)
 * segment: seg7.asm    offset: 0x1507    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1507(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1563 (sub_1563)
 * segment: seg7.asm    offset: 0x1563    instructions: 89
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1507
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1563(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1649 (sub_1649)
 * segment: seg7.asm    offset: 0x1649    instructions: 53
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * API calls:
 *   GETSYSTEMMETRICS(?)
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SCREENTOCLIENT(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1649(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0061 (sub_0061)
 * segment: seg8.asm    offset: 0x0061    instructions: 134
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALLOCK(HANDLE hMem) -> PSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_042C, L_063A, L_0806
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0061(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01C0 (sub_01C0)
 * segment: seg8.asm    offset: 0x01C0    instructions: 68
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOCALUNLOCK(HANDLE hMem) -> BOOL
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_09FA
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01C0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_027A (sub_027A)
 * segment: seg8.asm    offset: 0x027A    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_042C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_027A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A0 (sub_02A0)
 * segment: seg8.asm    offset: 0x02A0    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_042C
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02D9 (sub_02D9)
 * segment: seg8.asm    offset: 0x02D9    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02D9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02F0 (sub_02F0)
 * segment: seg8.asm    offset: 0x02F0    instructions: 7
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02F0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0300 (sub_0300)
 * segment: seg8.asm    offset: 0x0300    instructions: 6
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0300(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_030D (sub_030D)
 * segment: seg8.asm    offset: 0x030D    instructions: 49
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_030D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0389 (sub_0389)
 * segment: seg8.asm    offset: 0x0389    instructions: 20
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0389(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03B8 (sub_03B8)
 * segment: seg8.asm    offset: 0x03B8    instructions: 7
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03B8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03C9 (sub_03C9)
 * segment: seg8.asm    offset: 0x03C9    instructions: 5
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03C9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D6 (sub_03D6)
 * segment: seg8.asm    offset: 0x03D6    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ISDLGBUTTONCHECKED(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_042C (sub_042C)
 * segment: seg8.asm    offset: 0x042C    instructions: 76
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETDLGITEMINT(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_042C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04ED (sub_04ED)
 * segment: seg8.asm    offset: 0x04ED    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04ED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_053C (sub_053C)
 * segment: seg8.asm    offset: 0x053C    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_053C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0564 (sub_0564)
 * segment: seg8.asm    offset: 0x0564    instructions: 39
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CHECKRADIOBUTTON(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0564(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C7 (sub_05C7)
 * segment: seg8.asm    offset: 0x05C7    instructions: 7
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05D7 (sub_05D7)
 * segment: seg8.asm    offset: 0x05D7    instructions: 6
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05D7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05E4 (sub_05E4)
 * segment: seg8.asm    offset: 0x05E4    instructions: 36
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CHECKRADIOBUTTON(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_063A (sub_063A)
 * segment: seg8.asm    offset: 0x063A    instructions: 96
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0721
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_063A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0721 (sub_0721)
 * segment: seg8.asm    offset: 0x0721    instructions: 75
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0721(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0806 (sub_0806)
 * segment: seg8.asm    offset: 0x0806    instructions: 204
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILEINT(?)
 *   GETPROFILESTRING(?)
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0806(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09FA (sub_09FA)
 * segment: seg8.asm    offset: 0x09FA    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   ISDLGBUTTONCHECKED(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09FA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A73 (sub_0A73)
 * segment: seg8.asm    offset: 0x0A73    instructions: 135
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   GETDLGITEMINT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISDLGBUTTONCHECKED(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A73(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BED (sub_0BED)
 * segment: seg8.asm    offset: 0x0BED    instructions: 419
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   WRITEPROFILESTRING(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISDLGBUTTONCHECKED(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_0FF3
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FF3 (sub_0FF3)
 * segment: seg8.asm    offset: 0x0FF3    instructions: 37
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FF3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02C1 (sub_02C1)
 * segment: seg9.asm    offset: 0x02C1    instructions: 43
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02C1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0322 (sub_0322)
 * segment: seg9.asm    offset: 0x0322    instructions: 88
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CONTROL/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0322(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

