/*
 * MSDOS.c - Reconstructed C scaffold for Windows 1.x MSDOS.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of MSDOS.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/MSDOS/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/MSDOS/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 143
 * Total API call sites: 390
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
 * sub_0081 (sub_0081)
 * segment: seg2.asm    offset: 0x0081    instructions: 38
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_02A8
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0081(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00DC (sub_00DC)
 * segment: seg2.asm    offset: 0x00DC    instructions: 163
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00DC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A8 (sub_02A8)
 * segment: seg2.asm    offset: 0x02A8    instructions: 260
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATECOMPATIBLEBITMAP(?)
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   FILLRECT(?)
 *   FRAMERECT(?)
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSTEMMETRICS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETRECT(?)
 *
 * Internal calls: L_0519
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0519 (sub_0519)
 * segment: seg2.asm    offset: 0x0519    instructions: 353
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETSYSTEMMENU(?)
 *   GETSYSTEMMETRICS(?)
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   REGISTERCLASS(?)
 *
 * Internal calls: L_0AD3
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0519(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0886 (sub_0886)
 * segment: seg2.asm    offset: 0x0886    instructions: 83
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETINSTANCEDATA(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0886(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_095F (sub_095F)
 * segment: seg2.asm    offset: 0x095F    instructions: 146
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0081, L_00DC, L_0886
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_095F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AD3 (sub_0AD3)
 * segment: seg2.asm    offset: 0x0AD3    instructions: 34
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AD3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B19 (sub_0B19)
 * segment: seg2.asm    offset: 0x0B19    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   GETPROFILEINT(?)
 *   GETPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B19(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00CB (sub_00CB)
 * segment: seg3.asm    offset: 0x00CB    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   EXITWINDOWS(DWORD dwReserved, WORD wReturnCode) -> BOOL
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00CB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00F7 (sub_00F7)
 * segment: seg3.asm    offset: 0x00F7    instructions: 101
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01F1 (sub_01F1)
 * segment: seg3.asm    offset: 0x01F1    instructions: 25
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_087F, L_26AE, L_2700
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0222 (sub_0222)
 * segment: seg3.asm    offset: 0x0222    instructions: 504
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIPREV(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETFOCUS(?)
 *   GETMENU(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_00CB, L_00F7, L_01F1, L_06F4, L_0752, L_0BC0 ... +12
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0222(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06F4 (sub_06F4)
 * segment: seg3.asm    offset: 0x06F4    instructions: 40
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   SETCURSOR(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06F4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0752 (sub_0752)
 * segment: seg3.asm    offset: 0x0752    instructions: 113
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0845, L_085B, L_0874, L_0BC0, L_1AC8
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0752(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0845 (sub_0845)
 * segment: seg3.asm    offset: 0x0845    instructions: 4
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * Internal calls: L_084C
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0845(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_084C (sub_084C)
 * segment: seg3.asm    offset: 0x084C    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: unknown
 *
 * Internal calls: L_085B
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_084C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_085B (sub_085B)
 * segment: seg3.asm    offset: 0x085B    instructions: 12
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_085B(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0874 (sub_0874)
 * segment: seg3.asm    offset: 0x0874    instructions: 7
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0874(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_087F (sub_087F)
 * segment: seg3.asm    offset: 0x087F    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_087F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0891 (sub_0891)
 * segment: seg3.asm    offset: 0x0891    instructions: 36
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0891(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08E1 (sub_08E1)
 * segment: seg3.asm    offset: 0x08E1    instructions: 22
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08E1(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0907 (sub_0907)
 * segment: seg3.asm    offset: 0x0907    instructions: 18
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0907(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0925 (sub_0925)
 * segment: seg3.asm    offset: 0x0925    instructions: 42
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf_n
 *
 * API calls:
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0925(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0973 (sub_0973)
 * segment: seg3.asm    offset: 0x0973    instructions: 11
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0973(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0989 (sub_0989)
 * segment: seg3.asm    offset: 0x0989    instructions: 77
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0989(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A52 (sub_0A52)
 * segment: seg3.asm    offset: 0x0A52    instructions: 86
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *
 * Internal calls: L_0989, L_2707
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A52(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B2C (sub_0B2C)
 * segment: seg3.asm    offset: 0x0B2C    instructions: 55
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBRUSHORG(?)
 *   UNREALIZEOBJECT(?)
 *   CLIENTTOSCREEN(?)
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETSYSCOLOR(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B2C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BC0 (sub_0BC0)
 * segment: seg3.asm    offset: 0x0BC0    instructions: 283
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *
 * Internal calls: L_2DB6
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BC0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E80 (sub_0E80)
 * segment: seg3.asm    offset: 0x0E80    instructions: 9
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   HIDECARET(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E80(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E9A (sub_0E9A)
 * segment: seg3.asm    offset: 0x0E9A    instructions: 10
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SHOWCARET(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E9A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EB7 (sub_0EB7)
 * segment: seg3.asm    offset: 0x0EB7    instructions: 78
 * classification (pass8): unclear
 * prologue: none    epilogue: retf
 *
 * Internal calls: L_0F4B
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EB7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F4B (sub_0F4B)
 * segment: seg3.asm    offset: 0x0F4B    instructions: 84
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0FF1
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F4B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FF1 (sub_0FF1)
 * segment: seg3.asm    offset: 0x0FF1    instructions: 99
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FF1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10CA (sub_10CA)
 * segment: seg3.asm    offset: 0x10CA    instructions: 70
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10CA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1184 (sub_1184)
 * segment: seg3.asm    offset: 0x1184    instructions: 98
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_126A, L_1A42, L_212A
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1184(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_126A (sub_126A)
 * segment: seg3.asm    offset: 0x126A    instructions: 147
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_126A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13E0 (sub_13E0)
 * segment: seg3.asm    offset: 0x13E0    instructions: 41
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *
 * Internal calls: L_087F, L_0925
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13E0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_143E (sub_143E)
 * segment: seg3.asm    offset: 0x143E    instructions: 76
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_0907
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_143E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14F2 (sub_14F2)
 * segment: seg3.asm    offset: 0x14F2    instructions: 35
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Internal calls: L_0925
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_152F (sub_152F)
 * segment: seg3.asm    offset: 0x152F    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_152F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_156B (sub_156B)
 * segment: seg3.asm    offset: 0x156B    instructions: 197
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETCURRENTTIME(?)
 *   GETDOUBLECLICKTIME(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_06F4, L_0752, L_1891, L_18F7
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_156B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1782 (sub_1782)
 * segment: seg3.asm    offset: 0x1782    instructions: 15
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ISRECTEMPTY(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1782(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17AC (sub_17AC)
 * segment: seg3.asm    offset: 0x17AC    instructions: 84
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GETSYSCOLOR(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17AC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1891 (sub_1891)
 * segment: seg3.asm    offset: 0x1891    instructions: 40
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1891(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_18F7 (sub_18F7)
 * segment: seg3.asm    offset: 0x18F7    instructions: 132
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   INVERTRECT(?)
 *   SETRECT(?)
 *
 * Internal calls: L_0B2C, L_0E80, L_0E9A, L_152F, L_1782
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_18F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A42 (sub_1A42)
 * segment: seg3.asm    offset: 0x1A42    instructions: 12
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1AA5, L_1BBA
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A42(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A5E (sub_1A5E)
 * segment: seg3.asm    offset: 0x1A5E    instructions: 35
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Internal calls: L_1AA5
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A5E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AA5 (sub_1AA5)
 * segment: seg3.asm    offset: 0x1AA5    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0E80, L_0E9A, L_1B1C
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AA5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1AC8 (sub_1AC8)
 * segment: seg3.asm    offset: 0x1AC8    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_0E80, L_0E9A, L_1B1C
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1AC8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B1C (sub_1B1C)
 * segment: seg3.asm    offset: 0x1B1C    instructions: 64
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INVERTRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B1C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BBA (sub_1BBA)
 * segment: seg3.asm    offset: 0x1BBA    instructions: 31
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BBA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C05 (sub_1C05)
 * segment: seg3.asm    offset: 0x1C05    instructions: 25
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C05(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C30 (sub_1C30)
 * segment: seg3.asm    offset: 0x1C30    instructions: 12
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ISRECTEMPTY(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C30(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1C4C (sub_1C4C)
 * segment: seg3.asm    offset: 0x1C4C    instructions: 121
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_1D7A
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1C4C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D7A (sub_1D7A)
 * segment: seg3.asm    offset: 0x1D7A    instructions: 52
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   INVERTRECT(?)
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D7A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DF0 (sub_1DF0)
 * segment: seg3.asm    offset: 0x1DF0    instructions: 60
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_06F4, L_0752, L_13E0, L_1E9E, L_1F1E
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DF0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E9E (sub_1E9E)
 * segment: seg3.asm    offset: 0x1E9E    instructions: 20
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0E80, L_0E9A, L_1D7A
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E9E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1ED3 (sub_1ED3)
 * segment: seg3.asm    offset: 0x1ED3    instructions: 33
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_06F4, L_0752, L_13E0, L_1E9E
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1ED3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F1E (sub_1F1E)
 * segment: seg3.asm    offset: 0x1F1E    instructions: 106
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *
 * Internal calls: L_0B2C, L_1C30, L_1DF0
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F1E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2018 (sub_2018)
 * segment: seg3.asm    offset: 0x2018    instructions: 113
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETKEYSTATE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SETFOCUS(?)
 *
 * Internal calls: L_1A42, L_1A5E, L_1AC8, L_1C05, L_22EA, L_2DB6 ... +1
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2018(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_212A (sub_212A)
 * segment: seg3.asm    offset: 0x212A    instructions: 160
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   ISRECTEMPTY(?)
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_212A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_22EA (sub_22EA)
 * segment: seg3.asm    offset: 0x22EA    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_22EA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_234F (sub_234F)
 * segment: seg3.asm    offset: 0x234F    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETFOCUS(?)
 *   GETSYSCOLOR(?)
 *   ISRECTEMPTY(?)
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *   SHOWCARET(?)
 *
 * Internal calls: L_0A52, L_23ED
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_234F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_23ED (sub_23ED)
 * segment: seg3.asm    offset: 0x23ED    instructions: 7
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_23ED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2400 (sub_2400)
 * segment: seg3.asm    offset: 0x2400    instructions: 12
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1B1C
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2400(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2420 (sub_2420)
 * segment: seg3.asm    offset: 0x2420    instructions: 265
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SCROLLWINDOW(?)
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_0B2C, L_2018, L_212A, L_234F, L_2420, L_2DB6
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2420(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_26AE (sub_26AE)
 * segment: seg3.asm    offset: 0x26AE    instructions: 35
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   INQUIRESYSTEM(?)
 *
 * Internal calls: L_087F, L_2700
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_26AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2700 (sub_2700)
 * segment: seg3.asm    offset: 0x2700    instructions: 4
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2700(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2707 (sub_2707)
 * segment: seg3.asm    offset: 0x2707    instructions: 11
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2707(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_271D (sub_271D)
 * segment: seg3.asm    offset: 0x271D    instructions: 571
 * classification (pass8): c_medium
 * prologue: none    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   GETKEYSTATE(?)
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *
 * Internal calls: L_00F7, L_0222, L_06F4, L_0752, L_0891, L_08E1 ... +9
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_271D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2CAC (sub_2CAC)
 * segment: seg3.asm    offset: 0x2CAC    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_2420
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2CAC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D21 (sub_2D21)
 * segment: seg3.asm    offset: 0x2D21    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   CREATECARET(?)
 *   SHOWCARET(?)
 *
 * Internal calls: L_2DB6
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D21(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D91 (sub_2D91)
 * segment: seg3.asm    offset: 0x2D91    instructions: 18
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   DESTROYCARET(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D91(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2DB6 (sub_2DB6)
 * segment: seg3.asm    offset: 0x2DB6    instructions: 42
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETCARETPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2DB6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E2A (sub_2E2A)
 * segment: seg3.asm    offset: 0x2E2A    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *
 * Internal calls: L_00F7, L_06F4, L_0752, L_3157
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E2A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2EE1 (sub_2EE1)
 * segment: seg3.asm    offset: 0x2EE1    instructions: 79
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2EE1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2F9E (sub_2F9E)
 * segment: seg3.asm    offset: 0x2F9E    instructions: 176
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCURRENTPDB(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2F9E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3157 (sub_3157)
 * segment: seg3.asm    offset: 0x3157    instructions: 520
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   GLOBALHANDLE(WORD wSeg) -> DWORD
 *   LOADMODULE(LPSTR lpszModule, LPVOID lpParams) -> HANDLE
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_00F7, L_06F4, L_0752, L_0925, L_0973, L_2EE1 ... +3
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3157(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36AE (sub_36AE)
 * segment: seg3.asm    offset: 0x36AE    instructions: 34
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_00F7
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_36EE (sub_36EE)
 * segment: seg3.asm    offset: 0x36EE    instructions: 153
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   FREEPROCINSTANCE(FARPROC lpProc) -> VOID
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_36EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg4.asm    offset: 0x0000    instructions: 10
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0016 (sub_0016)
 * segment: seg4.asm    offset: 0x0016    instructions: 28
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0016(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_005A (sub_005A)
 * segment: seg4.asm    offset: 0x005A    instructions: 14
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_005A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0074 (sub_0074)
 * segment: seg4.asm    offset: 0x0074    instructions: 11
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0074(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_008D (sub_008D)
 * segment: seg4.asm    offset: 0x008D    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
 *   LOCKSEGMENT(?)
 *   UNLOCKSEGMENT(?)
 *
 * Internal calls: L_00D9
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_008D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00B9 (sub_00B9)
 * segment: seg4.asm    offset: 0x00B9    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_00D9
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00B9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00D9 (sub_00D9)
 * segment: seg4.asm    offset: 0x00D9    instructions: 15
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00D9(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00F4 (sub_00F4)
 * segment: seg4.asm    offset: 0x00F4    instructions: 11
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00F4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_010A (sub_010A)
 * segment: seg4.asm    offset: 0x010A    instructions: 24
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_010A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0144 (sub_0144)
 * segment: seg4.asm    offset: 0x0144    instructions: 16
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0144(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0162 (sub_0162)
 * segment: seg4.asm    offset: 0x0162    instructions: 11
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0162(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0176 (sub_0176)
 * segment: seg4.asm    offset: 0x0176    instructions: 24
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0176(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01B0 (sub_01B0)
 * segment: seg4.asm    offset: 0x01B0    instructions: 39
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01B0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0213 (sub_0213)
 * segment: seg4.asm    offset: 0x0213    instructions: 24
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0213(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_024D (sub_024D)
 * segment: seg4.asm    offset: 0x024D    instructions: 272
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   5(?)
 *   6(?)
 *
 * Internal calls: L_0504, L_0603
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_024D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0504 (sub_0504)
 * segment: seg4.asm    offset: 0x0504    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0504(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0603 (sub_0603)
 * segment: seg4.asm    offset: 0x0603    instructions: 194
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CHECKDLGBUTTON(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETSYSMODALWINDOW(?)
 *
 * Internal calls: L_008D, L_00B9
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0603(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_081B (sub_081B)
 * segment: seg4.asm    offset: 0x081B    instructions: 73
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_081B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08EF (sub_08EF)
 * segment: seg4.asm    offset: 0x08EF    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0943 (sub_0943)
 * segment: seg4.asm    offset: 0x0943    instructions: 238
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   FINDRESOURCE(?)
 *   GETCODEHANDLE(?)
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOADRESOURCE(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCKRESOURCE(?)
 *   INQUIRESYSTEM(?)
 *   CHECKDLGBUTTON(?)
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWTEXTLENGTH(?)
 *   ISWINDOWENABLED(?)
 *   POSTMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> BOOL
 *
 * Internal calls: L_0C67
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0943(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BE8 (sub_0BE8)
 * segment: seg4.asm    offset: 0x0BE8    instructions: 46
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BE8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C67 (sub_0C67)
 * segment: seg4.asm    offset: 0x0C67    instructions: 13
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C67(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C91 (sub_0C91)
 * segment: seg4.asm    offset: 0x0C91    instructions: 73
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWTEXTLENGTH(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C91(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D58 (sub_0D58)
 * segment: seg4.asm    offset: 0x0D58    instructions: 225
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   FORMAT(?)
 *   SYS(?)
 *   INQUIRESYSTEM(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   ISDLGBUTTONCHECKED(?)
 *
 * Internal calls: L_1048, L_10B0, L_1A07, L_2019, L_228B, L_23F7 ... +2
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D58(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FC2 (sub_0FC2)
 * segment: seg4.asm    offset: 0x0FC2    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FC2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1048 (sub_1048)
 * segment: seg4.asm    offset: 0x1048    instructions: 15
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1048(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1067 (sub_1067)
 * segment: seg4.asm    offset: 0x1067    instructions: 32
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1067(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10B0 (sub_10B0)
 * segment: seg4.asm    offset: 0x10B0    instructions: 281
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_0016, L_1048, L_1067, L_16A7, L_1841, L_1CAF
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10B0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13AD (sub_13AD)
 * segment: seg4.asm    offset: 0x13AD    instructions: 300
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LCREAT(LPSTR lpszPath, INT wAttribute) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
 *   5(?)
 *   6(?)
 *   INQUIRESYSTEM(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_005A, L_0074, L_0213, L_0BE8, L_1048, L_16F6 ... +3
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13AD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_16A7 (sub_16A7)
 * segment: seg4.asm    offset: 0x16A7    instructions: 32
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_16A7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_16F6 (sub_16F6)
 * segment: seg4.asm    offset: 0x16F6    instructions: 62
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_16F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1794 (sub_1794)
 * segment: seg4.asm    offset: 0x1794    instructions: 41
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETPARENT(?)
 *   ISDIALOGMESSAGE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1794(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17F4 (sub_17F4)
 * segment: seg4.asm    offset: 0x17F4    instructions: 30
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17F4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1841 (sub_1841)
 * segment: seg4.asm    offset: 0x1841    instructions: 78
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_00F4
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1841(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1909 (sub_1909)
 * segment: seg4.asm    offset: 0x1909    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1909(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A07 (sub_1A07)
 * segment: seg4.asm    offset: 0x1A07    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_0016, L_1048, L_1067, L_1841, L_1CAF
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A07(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B72 (sub_1B72)
 * segment: seg4.asm    offset: 0x1B72    instructions: 126
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   6(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_005A, L_01B0, L_0BE8, L_1048, L_16F6, L_1794 ... +1
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B72(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1CAF (sub_1CAF)
 * segment: seg4.asm    offset: 0x1CAF    instructions: 271
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_0016, L_1F9F
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1CAF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F9F (sub_1F9F)
 * segment: seg4.asm    offset: 0x1F9F    instructions: 49
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F9F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2019 (sub_2019)
 * segment: seg4.asm    offset: 0x2019    instructions: 177
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   6(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0016, L_024D, L_0BE8, L_1048, L_1067, L_16F6 ... +2
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2019(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_21E2 (sub_21E2)
 * segment: seg4.asm    offset: 0x21E2    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *
 * Internal calls: L_1048
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_21E2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2204 (sub_2204)
 * segment: seg4.asm    offset: 0x2204    instructions: 52
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_005A, L_0213, L_1067, L_1841
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2204(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_228B (sub_228B)
 * segment: seg4.asm    offset: 0x228B    instructions: 149
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_228B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_23F7 (sub_23F7)
 * segment: seg4.asm    offset: 0x23F7    instructions: 318
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   GETLASTDISKCHANGE(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CLIENTTOSCREEN(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETSYSTEMMETRICS(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_010A, L_0BE8, L_1048, L_1067, L_16F6, L_17F4 ... +1
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_23F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_272A (sub_272A)
 * segment: seg4.asm    offset: 0x272A    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_279F, L_2893
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_272A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_279F (sub_279F)
 * segment: seg4.asm    offset: 0x279F    instructions: 89
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0162
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_279F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2893 (sub_2893)
 * segment: seg4.asm    offset: 0x2893    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0144
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2893(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2927 (sub_2927)
 * segment: seg4.asm    offset: 0x2927    instructions: 131
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *
 * Internal calls: L_0176
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2927(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2A7D (sub_2A7D)
 * segment: seg4.asm    offset: 0x2A7D    instructions: 69
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETSCROLLRANGE(?)
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2A7D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2B35 (sub_2B35)
 * segment: seg4.asm    offset: 0x2B35    instructions: 202
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   GETSYSCOLOR(?)
 *
 * Internal calls: L_0504, L_0603
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2B35(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2D58 (sub_2D58)
 * segment: seg4.asm    offset: 0x2D58    instructions: 88
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SCROLLWINDOW(?)
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2D58(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E4A (sub_2E4A)
 * segment: seg4.asm    offset: 0x2E4A    instructions: 16
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E4A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E70 (sub_2E70)
 * segment: seg4.asm    offset: 0x2E70    instructions: 8
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_2D58
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E70(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E80 (sub_2E80)
 * segment: seg4.asm    offset: 0x2E80    instructions: 6
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E80(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2E8F (sub_2E8F)
 * segment: seg4.asm    offset: 0x2E8F    instructions: 319
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETTEXTMETRICS(?)
 *   GETPROFILESTRING(?)
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CREATEDIALOG(?)
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENABLEWINDOW(?)
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETMENU(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_1067, L_2A7D, L_2B35, L_2D58, L_2E4A, L_3A4F
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2E8F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_31F6 (sub_31F6)
 * segment: seg4.asm    offset: 0x31F6    instructions: 124
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   ANSIPREV(?)
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_33B6
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_31F6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3327 (sub_3327)
 * segment: seg4.asm    offset: 0x3327    instructions: 63
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ESCAPE(?)
 *
 * Internal calls: L_0016, L_369E
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3327(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_33B6 (sub_33B6)
 * segment: seg4.asm    offset: 0x33B6    instructions: 234
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GETLASTDISKCHANGE(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   _LREAD(HFILE hFile, LPVOID lpBuffer, WORD wBytes) -> WORD
 *   5(?)
 *   6(?)
 *
 * Internal calls: L_0016, L_1048, L_1CAF
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_33B6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3659 (sub_3659)
 * segment: seg4.asm    offset: 0x3659    instructions: 29
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ESCAPE(?)
 *   _LCLOSE(HFILE hFile) -> HFILE
 *
 * Internal calls: L_005A, L_3A4F
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3659(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_369E (sub_369E)
 * segment: seg4.asm    offset: 0x369E    instructions: 156
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_17F4, L_1841, L_3863
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_369E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3863 (sub_3863)
 * segment: seg4.asm    offset: 0x3863    instructions: 172
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Internal calls: L_0504, L_0603
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3863(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3A29 (sub_3A29)
 * segment: seg4.asm    offset: 0x3A29    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ESCAPE(?)
 *
 * Internal calls: L_3A4F
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3A29(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_3A4F (sub_3A4F)
 * segment: seg4.asm    offset: 0x3A4F    instructions: 131
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENABLEWINDOW(?)
 *   GETSYSTEMMENU(?)
 *   ISDIALOGMESSAGE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SETFOCUS(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/MSDOS/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_3A4F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

