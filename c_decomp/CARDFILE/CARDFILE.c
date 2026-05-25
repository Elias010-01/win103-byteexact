/*
 * CARDFILE.c - Reconstructed C scaffold for Windows 1.x CARDFILE.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of CARDFILE.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/CARDFILE/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/CARDFILE/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 87
 * Total API call sites: 429
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
 * segment: seg1.asm    offset: 0x0000    instructions: 137
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   FATALEXIT(?)
 *   INITTASK(?)
 *   WAITEVENT(?)
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETDC(HWND hWnd) -> HDC
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   INITAPP(?)
 *   ISWINDOW(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   TRANSLATEACCELERATOR(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_026E, L_0300
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0165 (sub_0165)
 * segment: seg1.asm    offset: 0x0165    instructions: 130
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
 * Internal calls: L_0310
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0165(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_026E (sub_026E)
 * segment: seg1.asm    offset: 0x026E    instructions: 59
 * classification (pass8): asm_high
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_026E(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_high — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0300 (sub_0300)
 * segment: seg1.asm    offset: 0x0300    instructions: 8
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_031B, L_0351
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0300(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0310 (sub_0310)
 * segment: seg1.asm    offset: 0x0310    instructions: 6
 * classification (pass8): asm_medium
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0310(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_031B (sub_031B)
 * segment: seg1.asm    offset: 0x031B    instructions: 21
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: unknown
 *
 * Internal calls: L_0165, L_0363
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_031B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0351 (sub_0351)
 * segment: seg1.asm    offset: 0x0351    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0351(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0363 (sub_0363)
 * segment: seg1.asm    offset: 0x0363    instructions: 10
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0363(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0505 (sub_0505)
 * segment: seg2.asm    offset: 0x0505    instructions: 131
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETTEXTMETRICS(?)
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOADACCELERATORS(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0505(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04D4 (sub_04D4)
 * segment: seg3.asm    offset: 0x04D4    instructions: 601
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   ANSIPREV(?)
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETTEMPFILENAME(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   THROW(?)
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Internal calls: L_04D4, L_10D8, L_10F1, L_1103, L_111D, L_1135 ... +1
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04D4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B48 (sub_0B48)
 * segment: seg3.asm    offset: 0x0B48    instructions: 430
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   GETBITMAPBITS(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *
 * Internal calls: L_1103, L_111D, L_1135, L_114F
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B48(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F9A (sub_0F9A)
 * segment: seg3.asm    offset: 0x0F9A    instructions: 130
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
 *
 * Internal calls: L_1103, L_111D
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F9A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10D8 (sub_10D8)
 * segment: seg3.asm    offset: 0x10D8    instructions: 15
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10F1 (sub_10F1)
 * segment: seg3.asm    offset: 0x10F1    instructions: 10
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1103 (sub_1103)
 * segment: seg3.asm    offset: 0x1103    instructions: 14
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1103(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_111D (sub_111D)
 * segment: seg3.asm    offset: 0x111D    instructions: 12
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_111D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1135 (sub_1135)
 * segment: seg3.asm    offset: 0x1135    instructions: 14
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1135(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_114F (sub_114F)
 * segment: seg3.asm    offset: 0x114F    instructions: 12
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_114F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01AA (sub_01AA)
 * segment: seg4.asm    offset: 0x01AA    instructions: 190
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   INVERTRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETFOCUS(?)
 *   SETRECT(?)
 *
 * Internal calls: L_03BA, L_0459, L_06CF, L_091C, L_098F, L_1B1F ... +4
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01AA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03BA (sub_03BA)
 * segment: seg4.asm    offset: 0x03BA    instructions: 54
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
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
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03BA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0459 (sub_0459)
 * segment: seg4.asm    offset: 0x0459    instructions: 231
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   FILLRECT(?)
 *   FRAMERECT(?)
 *   INFLATERECT(?)
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0459(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06CF (sub_06CF)
 * segment: seg4.asm    offset: 0x06CF    instructions: 92
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETFOCUS(?)
 *   GETSYSCOLOR(?)
 *   INVERTRECT(?)
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06CF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07D5 (sub_07D5)
 * segment: seg4.asm    offset: 0x07D5    instructions: 124
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   FILLRECT(?)
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_091C (sub_091C)
 * segment: seg4.asm    offset: 0x091C    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_091C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_098F (sub_098F)
 * segment: seg4.asm    offset: 0x098F    instructions: 15
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CATCH(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_098F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09B2 (sub_09B2)
 * segment: seg4.asm    offset: 0x09B2    instructions: 844
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   THROW(?)
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *   SETSCROLLRANGE(?)
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_1315, L_1955, L_19B2, L_1A4E, L_1A70, L_1E41 ... +7
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09B2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1315 (sub_1315)
 * segment: seg4.asm    offset: 0x1315    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1315(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_138A (sub_138A)
 * segment: seg4.asm    offset: 0x138A    instructions: 66
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   GETMENU(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_138A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1435 (sub_1435)
 * segment: seg4.asm    offset: 0x1435    instructions: 107
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CLOSECLIPBOARD(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   ENUMCLIPBOARDFORMATS(?)
 *   OPENCLIPBOARD(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1435(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_155C (sub_155C)
 * segment: seg4.asm    offset: 0x155C    instructions: 63
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_155C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1600 (sub_1600)
 * segment: seg4.asm    offset: 0x1600    instructions: 10
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1600(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_161C (sub_161C)
 * segment: seg4.asm    offset: 0x161C    instructions: 205
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   INVERTRECT(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETRECT(?)
 *
 * Internal calls: L_098F, L_1864, L_1BA8, L_2625
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_161C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1839 (sub_1839)
 * segment: seg4.asm    offset: 0x1839    instructions: 18
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: retf
 *
 * Internal calls: L_1BA8
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1839(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1864 (sub_1864)
 * segment: seg4.asm    offset: 0x1864    instructions: 100
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   PTINRECT(?)
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1864(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1955 (sub_1955)
 * segment: seg4.asm    offset: 0x1955    instructions: 43
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1955(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19B2 (sub_19B2)
 * segment: seg4.asm    offset: 0x19B2    instructions: 62
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19B2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A4E (sub_1A4E)
 * segment: seg4.asm    offset: 0x1A4E    instructions: 13
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1600
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A4E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A70 (sub_1A70)
 * segment: seg4.asm    offset: 0x1A70    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_1A94
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A70(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A94 (sub_1A94)
 * segment: seg4.asm    offset: 0x1A94    instructions: 62
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A94(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B1F (sub_1B1F)
 * segment: seg4.asm    offset: 0x1B1F    instructions: 60
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   GETMENU(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B1F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BA8 (sub_1BA8)
 * segment: seg4.asm    offset: 0x1BA8    instructions: 140
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   FILLRECT(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_07D5, L_2219, L_2340
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BA8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D4B (sub_1D4B)
 * segment: seg4.asm    offset: 0x1D4B    instructions: 51
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D4B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1DD7 (sub_1DD7)
 * segment: seg4.asm    offset: 0x1DD7    instructions: 41
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SCROLLWINDOW(?)
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1DD7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1E41 (sub_1E41)
 * segment: seg4.asm    offset: 0x1E41    instructions: 164
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
 *   CALLWINDOWPROC(?)
 *   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   SETSCROLLPOS(?)
 *   SETSCROLLRANGE(?)
 *
 * Internal calls: L_2001, L_2438, L_24B4
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1E41(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2001 (sub_2001)
 * segment: seg4.asm    offset: 0x2001    instructions: 71
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETFOCUS(?)
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2001(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20C3 (sub_20C3)
 * segment: seg4.asm    offset: 0x20C3    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_27FC
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20C3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2115 (sub_2115)
 * segment: seg4.asm    offset: 0x2115    instructions: 105
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_2815
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2115(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2219 (sub_2219)
 * segment: seg4.asm    offset: 0x2219    instructions: 109
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_1955
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2219(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2340 (sub_2340)
 * segment: seg4.asm    offset: 0x2340    instructions: 101
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETRECT(?)
 *
 * Internal calls: L_1600, L_1955
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2340(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2438 (sub_2438)
 * segment: seg4.asm    offset: 0x2438    instructions: 54
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_1BA8
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2438(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_24B4 (sub_24B4)
 * segment: seg4.asm    offset: 0x24B4    instructions: 129
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   GETKEYSTATE(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   INVERTRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETRECT(?)
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_07D5, L_2219, L_2340, L_2625
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_24B4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2625 (sub_2625)
 * segment: seg4.asm    offset: 0x2625    instructions: 85
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   INVERTRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SCROLLWINDOW(?)
 *   SETRECT(?)
 *   SETSCROLLPOS(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2625(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2706 (sub_2706)
 * segment: seg4.asm    offset: 0x2706    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   INVERTRECT(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETRECT(?)
 *
 * Internal calls: L_2625
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2706(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_27FC (sub_27FC)
 * segment: seg4.asm    offset: 0x27FC    instructions: 16
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_27FC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2815 (sub_2815)
 * segment: seg4.asm    offset: 0x2815    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2815(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2835 (sub_2835)
 * segment: seg4.asm    offset: 0x2835    instructions: 71
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SETCURSOR(?)
 *
 * Internal calls: L_1315, L_1955, L_1E41, L_2219, L_2340
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2835(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_28F9 (sub_28F9)
 * segment: seg4.asm    offset: 0x28F9    instructions: 72
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SETCURSOR(?)
 *
 * Internal calls: L_1955, L_1A70, L_1E41, L_2340
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_28F9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_29B7 (sub_29B7)
 * segment: seg4.asm    offset: 0x29B7    instructions: 223
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *   _LCLOSE(HFILE hFile) -> HFILE
 *   _LOPEN(LPSTR lpszPath, INT wReadWrite) -> HFILE
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_1315, L_1955, L_19B2, L_2219, L_2340
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_29B7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg5.asm    offset: 0x0000    instructions: 178
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   GETTEXTMETRICS(?)
 *   GETPROFILESTRING(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CREATEDIALOG(?)
 *   ENABLEWINDOW(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01D8 (sub_01D8)
 * segment: seg5.asm    offset: 0x01D8    instructions: 257
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   ENABLEWINDOW(?)
 *
 * Internal calls: L_01D8, L_0653, L_0992
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01D8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_046C (sub_046C)
 * segment: seg5.asm    offset: 0x046C    instructions: 122
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0653
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_046C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05DA (sub_05DA)
 * segment: seg5.asm    offset: 0x05DA    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   ESCAPE(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_01D8
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05DA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0653 (sub_0653)
 * segment: seg5.asm    offset: 0x0653    instructions: 302
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   INTERSECTCLIPRECT(?)
 *   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
 *   RESTOREDC(?)
 *   SAVEDC(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENABLEWINDOW(?)
 *   GETSYSTEMMENU(?)
 *   ISDIALOGMESSAGE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0653(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0956 (sub_0956)
 * segment: seg5.asm    offset: 0x0956    instructions: 24
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0956(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0992 (sub_0992)
 * segment: seg5.asm    offset: 0x0992    instructions: 261
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETOBJECT(?)
 *   CLOSECLIPBOARD(?)
 *   EMPTYCLIPBOARD(?)
 *   GETCLIPBOARDDATA(?)
 *   INFLATERECT(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   OPENCLIPBOARD(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETCLIPBOARDDATA(?)
 *   SETFOCUS(?)
 *   SETRECT(?)
 *
 * Internal calls: L_0C49
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0992(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C49 (sub_0C49)
 * segment: seg5.asm    offset: 0x0C49    instructions: 317
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   OFFSETRECT(?)
 *   PTINRECT(?)
 *   RELEASECAPTURE(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETRECT(?)
 *
 * Internal calls: L_0F9F, L_0FD0
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C49(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F9F (sub_0F9F)
 * segment: seg5.asm    offset: 0x0F9F    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0FD0
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F9F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FD0 (sub_0FD0)
 * segment: seg5.asm    offset: 0x0FD0    instructions: 186
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   OFFSETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FD0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0022 (sub_0022)
 * segment: seg6.asm    offset: 0x0022    instructions: 45
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DLGDIRLIST(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0022(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_008F (sub_008F)
 * segment: seg6.asm    offset: 0x008F    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISWINDOWENABLED(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_008F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00A8 (sub_00A8)
 * segment: seg6.asm    offset: 0x00A8    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETWINDOWTEXTLENGTH(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00A8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00D6 (sub_00D6)
 * segment: seg6.asm    offset: 0x00D6    instructions: 81
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
 * Internal calls: L_030B, L_03DD
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A2 (sub_01A2)
 * segment: seg6.asm    offset: 0x01A2    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETWINDOWTEXTLENGTH(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01D0 (sub_01D0)
 * segment: seg6.asm    offset: 0x01D0    instructions: 125
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   DLGDIRLIST(?)
 *   DLGDIRSELECT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_061E
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01D0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_030B (sub_030B)
 * segment: seg6.asm    offset: 0x030B    instructions: 90
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ANSIPREV(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_030B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03DD (sub_03DD)
 * segment: seg6.asm    offset: 0x03DD    instructions: 49
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DLGDIRLIST(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03DD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0442 (sub_0442)
 * segment: seg6.asm    offset: 0x0442    instructions: 58
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ANSINEXT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_05C5
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0442(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04F1 (sub_04F1)
 * segment: seg6.asm    offset: 0x04F1    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0529 (sub_0529)
 * segment: seg6.asm    offset: 0x0529    instructions: 56
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWTEXTLENGTH(?)
 *   ISWINDOWENABLED(?)
 *
 * Internal calls: L_061E
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0529(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C5 (sub_05C5)
 * segment: seg6.asm    offset: 0x05C5    instructions: 40
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ANSINEXT(?)
 *   ANSIPREV(?)
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_061E (sub_061E)
 * segment: seg6.asm    offset: 0x061E    instructions: 85
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_06EB
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_061E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06EB (sub_06EB)
 * segment: seg6.asm    offset: 0x06EB    instructions: 107
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *
 * Internal calls: L_1116
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07F3 (sub_07F3)
 * segment: seg6.asm    offset: 0x07F3    instructions: 864
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   ANSIUPPER(LPSTR lpsz) -> LPSTR
 *   GETPROFILESTRING(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LSTRCAT(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   WRITEPROFILESTRING(?)
 *   CHECKRADIOBUTTON(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWTEXTLENGTH(?)
 *   ISDLGBUTTONCHECKED(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *
 * Internal calls: L_1116
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1116 (sub_1116)
 * segment: seg6.asm    offset: 0x1116    instructions: 105
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_1223
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1116(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1223 (sub_1223)
 * segment: seg6.asm    offset: 0x1223    instructions: 248
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   CLOSECOMM(?)
 *   FLUSHCOMM(?)
 *   GETCOMMERROR(?)
 *   GETCURRENTTIME(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   OPENCOMM(?)
 *   WRITECOMM(?)
 *
 * Internal calls: L_14A7, L_15B2
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1223(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14A7 (sub_14A7)
 * segment: seg6.asm    offset: 0x14A7    instructions: 113
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   GETCOMMSTATE(?)
 *   SETCOMMSTATE(?)
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14A7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15B2 (sub_15B2)
 * segment: seg6.asm    offset: 0x15B2    instructions: 102
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
 *   LSTRLEN(LPSTR lpsz) -> INT
 *
 * Reverse-engineering hints:
 *   See src/CARDFILE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15B2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

