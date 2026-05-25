/*
 * WRITE.c - Reconstructed C scaffold for Windows 1.x WRITE.EXE
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * This file documents the function inventory of WRITE.EXE as seen from
 * the byte-exact reverse-engineered .asm in `src/WRITE/`. Each function
 * has its inferred FAR PASCAL signature, the API calls it makes, and a
 * placeholder body marking where the actual logic lives in the ASM sources.
 *
 * Source of truth: src/WRITE/seg*.asm (byte-exact with original Microsoft)
 * Discovered functions: 387
 * Total API call sites: 543
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
 * sub_0078 (sub_0078)
 * segment: seg1.asm    offset: 0x0078    instructions: 284
 * classification (pass8): c_medium
 * prologue: none    epilogue: retf_n
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
 * Internal calls: L_04BC, L_05A0
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0078(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_025F (sub_025F)
 * segment: seg1.asm    offset: 0x025F    instructions: 256
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf_n
 *
 * Internal calls: L_0488
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_025F(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0488 (sub_0488)
 * segment: seg1.asm    offset: 0x0488    instructions: 28
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0488(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04BC (sub_04BC)
 * segment: seg1.asm    offset: 0x04BC    instructions: 114
 * classification (pass8): unclear
 * prologue: none    epilogue: retf
 *
 * Internal calls: L_0488
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04BC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05A0 (sub_05A0)
 * segment: seg1.asm    offset: 0x05A0    instructions: 54
 * classification (pass8): asm_medium
 * prologue: far_inc_bp_standard    epilogue: retf
 *
 * Internal calls: L_0078, L_060C
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05A0(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_060C (sub_060C)
 * segment: seg1.asm    offset: 0x060C    instructions: 9
 * classification (pass8): unclear
 * prologue: none    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg1.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_060C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00EF (sub_00EF)
 * segment: seg10.asm    offset: 0x00EF    instructions: 188
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_07C3, L_0AED, L_0B62
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02F7 (sub_02F7)
 * segment: seg10.asm    offset: 0x02F7    instructions: 238
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_057F, L_0603, L_067C, L_08A3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_057F (sub_057F)
 * segment: seg10.asm    offset: 0x057F    instructions: 56
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0B62
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_057F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0603 (sub_0603)
 * segment: seg10.asm    offset: 0x0603    instructions: 50
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0603(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_067C (sub_067C)
 * segment: seg10.asm    offset: 0x067C    instructions: 122
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_067C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07C3 (sub_07C3)
 * segment: seg10.asm    offset: 0x07C3    instructions: 101
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_00EF, L_02F7
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07C3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08A3 (sub_08A3)
 * segment: seg10.asm    offset: 0x08A3    instructions: 68
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_09C8
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08A3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0951 (sub_0951)
 * segment: seg10.asm    offset: 0x0951    instructions: 48
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_09C8
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0951(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09C8 (sub_09C8)
 * segment: seg10.asm    offset: 0x09C8    instructions: 76
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09C8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A8D (sub_0A8D)
 * segment: seg10.asm    offset: 0x0A8D    instructions: 44
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A8D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AED (sub_0AED)
 * segment: seg10.asm    offset: 0x0AED    instructions: 49
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0A8D
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AED(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B62 (sub_0B62)
 * segment: seg10.asm    offset: 0x0B62    instructions: 167
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg10.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B62(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0189 (sub_0189)
 * segment: seg12.asm    offset: 0x0189    instructions: 75
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETKEYSTATE(?)
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0189(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_025E (sub_025E)
 * segment: seg12.asm    offset: 0x025E    instructions: 49
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg12.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_025E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02FD (sub_02FD)
 * segment: seg13.asm    offset: 0x02FD    instructions: 93
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETCARETBLINKTIME(?)
 *   KILLTIMER(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETTIMER(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg13.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02FD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg14.asm    offset: 0x0000    instructions: 104
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg14.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00E6 (sub_00E6)
 * segment: seg14.asm    offset: 0x00E6    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg14.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00E6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0065 (sub_0065)
 * segment: seg15.asm    offset: 0x0065    instructions: 30
 * classification (pass8): asm_medium
 * prologue: none    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0065(/* TODO: infer args from [bp+N] refs in .asm */) /* asm_medium — keep as asm */ 
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0093 (sub_0093)
 * segment: seg15.asm    offset: 0x0093    instructions: 103
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * API calls:
 *   5(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0093(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_015B (sub_015B)
 * segment: seg15.asm    offset: 0x015B    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_015B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0181 (sub_0181)
 * segment: seg15.asm    offset: 0x0181    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0181(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A7 (sub_01A7)
 * segment: seg15.asm    offset: 0x01A7    instructions: 97
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * Internal calls: L_01A7, L_0983, L_0D83
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0275 (sub_0275)
 * segment: seg15.asm    offset: 0x0275    instructions: 300
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0275, L_058E, L_0688, L_0A66
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0275(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_058E (sub_058E)
 * segment: seg15.asm    offset: 0x058E    instructions: 97
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0A66
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_058E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0688 (sub_0688)
 * segment: seg15.asm    offset: 0x0688    instructions: 94
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0771
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0688(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0771 (sub_0771)
 * segment: seg15.asm    offset: 0x0771    instructions: 94
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_015B, L_0983, L_09E4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0771(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_085E (sub_085E)
 * segment: seg15.asm    offset: 0x085E    instructions: 111
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_085E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0983 (sub_0983)
 * segment: seg15.asm    offset: 0x0983    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0DF5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0983(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09E4 (sub_09E4)
 * segment: seg15.asm    offset: 0x09E4    instructions: 54
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_01A7, L_0983, L_0D83
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A66 (sub_0A66)
 * segment: seg15.asm    offset: 0x0A66    instructions: 198
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0181, L_0983, L_09E4, L_0C6B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A66(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C6B (sub_0C6B)
 * segment: seg15.asm    offset: 0x0C6B    instructions: 111
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * Internal calls: L_0DF5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C6B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D83 (sub_0D83)
 * segment: seg15.asm    offset: 0x0D83    instructions: 44
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Internal calls: L_1192
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D83(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DF5 (sub_0DF5)
 * segment: seg15.asm    offset: 0x0DF5    instructions: 375
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Internal calls: L_0065, L_0093, L_085E, L_0C6B, L_0DF5, L_1192
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DF5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1192 (sub_1192)
 * segment: seg15.asm    offset: 0x1192    instructions: 18
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg15.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1192(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03B6 (sub_03B6)
 * segment: seg16.asm    offset: 0x03B6    instructions: 33
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg16.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03B6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03F7 (sub_03F7)
 * segment: seg16.asm    offset: 0x03F7    instructions: 59
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg16.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00EC (sub_00EC)
 * segment: seg17.asm    offset: 0x00EC    instructions: 141
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_022C, L_031B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_022C (sub_022C)
 * segment: seg17.asm    offset: 0x022C    instructions: 94
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_00EC
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_022C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_031B (sub_031B)
 * segment: seg17.asm    offset: 0x031B    instructions: 38
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg17.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_031B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0416 (sub_0416)
 * segment: seg18.asm    offset: 0x0416    instructions: 34
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETUPDATERECT(?)
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0416(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0483 (sub_0483)
 * segment: seg18.asm    offset: 0x0483    instructions: 89
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0483(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0565 (sub_0565)
 * segment: seg18.asm    offset: 0x0565    instructions: 41
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg18.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0565(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg19.asm    offset: 0x0000    instructions: 371
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_03BB
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03BB (sub_03BB)
 * segment: seg19.asm    offset: 0x03BB    instructions: 64
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0467
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03BB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0467 (sub_0467)
 * segment: seg19.asm    offset: 0x0467    instructions: 348
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0801
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0467(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0801 (sub_0801)
 * segment: seg19.asm    offset: 0x0801    instructions: 44
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg19.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0801(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_024B (sub_024B)
 * segment: seg2.asm    offset: 0x024B    instructions: 94
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETINSTANCEDATA(?)
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETDC(HWND hWnd) -> HDC
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *
 * Internal calls: L_0489
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_024B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035C (sub_035C)
 * segment: seg2.asm    offset: 0x035C    instructions: 108
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
 *   REGISTERCLASS(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0489 (sub_0489)
 * segment: seg2.asm    offset: 0x0489    instructions: 482
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   CHANGEMENU(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   GETDC(HWND hWnd) -> HDC
 *   GETMENU(?)
 *   GETSYSCOLOR(?)
 *   GETSYSTEMMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0489(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0942 (sub_0942)
 * segment: seg2.asm    offset: 0x0942    instructions: 87
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSCOLOR(?)
 *   GETSYSTEMMETRICS(?)
 *   SETSCROLLRANGE(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0942(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A2F (sub_0A2F)
 * segment: seg2.asm    offset: 0x0A2F    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg2.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A2F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg20.asm    offset: 0x0000    instructions: 41
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg20.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_004F (sub_004F)
 * segment: seg20.asm    offset: 0x004F    instructions: 118
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALSIZE(HANDLE hMem) -> DWORD
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   INSENDMESSAGE(?)
 *
 * Internal calls: L_018A, L_06E1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg20.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_004F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_018A (sub_018A)
 * segment: seg20.asm    offset: 0x018A    instructions: 537
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALCOMPACT(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   INSENDMESSAGE(?)
 *   ISWINDOWENABLED(?)
 *   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_004F, L_018A, L_06E1, L_0778
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg20.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_018A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06E1 (sub_06E1)
 * segment: seg20.asm    offset: 0x06E1    instructions: 58
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   ENABLEWINDOW(?)
 *   ISWINDOWENABLED(?)
 *   MESSAGEBEEP(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   SETTIMER(?)
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg20.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0778 (sub_0778)
 * segment: seg20.asm    offset: 0x0778    instructions: 48
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   ISWINDOW(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg20.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0778(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0252 (sub_0252)
 * segment: seg21.asm    offset: 0x0252    instructions: 17
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0252(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0285 (sub_0285)
 * segment: seg21.asm    offset: 0x0285    instructions: 132
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0285(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03FA (sub_03FA)
 * segment: seg21.asm    offset: 0x03FA    instructions: 25
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03FA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0446 (sub_0446)
 * segment: seg21.asm    offset: 0x0446    instructions: 35
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOADLIBRARY(LPSTR lpszLibFile) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0446(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04AC (sub_04AC)
 * segment: seg21.asm    offset: 0x04AC    instructions: 69
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   FREELIBRARY(HANDLE hLibModule) -> VOID
 *   GETPROCADDRESS(HANDLE hModule, LPSTR lpszProc) -> FARPROC
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04AC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0586 (sub_0586)
 * segment: seg21.asm    offset: 0x0586    instructions: 51
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg21.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0586(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg22.asm    offset: 0x0000    instructions: 140
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg22.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_016A (sub_016A)
 * segment: seg22.asm    offset: 0x016A    instructions: 179
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_016A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg22.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_016A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03C6 (sub_03C6)
 * segment: seg23.asm    offset: 0x03C6    instructions: 558
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg23.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00A3 (sub_00A3)
 * segment: seg24.asm    offset: 0x00A3    instructions: 61
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ESCAPE(?)
 *   CHECKDLGBUTTON(?)
 *   SETDLGITEMINT(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00A3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0144 (sub_0144)
 * segment: seg24.asm    offset: 0x0144    instructions: 128
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0144(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0293 (sub_0293)
 * segment: seg24.asm    offset: 0x0293    instructions: 285
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg24.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0293(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0174 (sub_0174)
 * segment: seg25.asm    offset: 0x0174    instructions: 9
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ISDLGBUTTONCHECKED(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg25.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0174(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0190 (sub_0190)
 * segment: seg25.asm    offset: 0x0190    instructions: 495
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg25.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0190(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0114 (sub_0114)
 * segment: seg26.asm    offset: 0x0114    instructions: 195
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *
 * Internal calls: L_031A, L_0366
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0114(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_031A (sub_031A)
 * segment: seg26.asm    offset: 0x031A    instructions: 36
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_031A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0366 (sub_0366)
 * segment: seg26.asm    offset: 0x0366    instructions: 95
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0366(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0469 (sub_0469)
 * segment: seg26.asm    offset: 0x0469    instructions: 145
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
 *   ENABLEWINDOW(?)
 *   ISWINDOW(?)
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0469, L_05C2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0469(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C2 (sub_05C2)
 * segment: seg26.asm    offset: 0x05C2    instructions: 27
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * API calls:
 *   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
 *
 * Internal calls: L_0469
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg26.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_006A (sub_006A)
 * segment: seg27.asm    offset: 0x006A    instructions: 213
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_02AE, L_0408, L_058B, L_05E4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_006A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02AE (sub_02AE)
 * segment: seg27.asm    offset: 0x02AE    instructions: 21
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02AE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02E4 (sub_02E4)
 * segment: seg27.asm    offset: 0x02E4    instructions: 50
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_04CD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035D (sub_035D)
 * segment: seg27.asm    offset: 0x035D    instructions: 71
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMINT(?)
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Internal calls: L_054D, L_058B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0408 (sub_0408)
 * segment: seg27.asm    offset: 0x0408    instructions: 86
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0408(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04CD (sub_04CD)
 * segment: seg27.asm    offset: 0x04CD    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Internal calls: L_058B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04CD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054D (sub_054D)
 * segment: seg27.asm    offset: 0x054D    instructions: 24
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_058B (sub_058B)
 * segment: seg27.asm    offset: 0x058B    instructions: 33
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_058B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05E4 (sub_05E4)
 * segment: seg27.asm    offset: 0x05E4    instructions: 32
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg27.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05E4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0092 (sub_0092)
 * segment: seg29.asm    offset: 0x0092    instructions: 71
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_014E
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg29.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0092(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_014E (sub_014E)
 * segment: seg29.asm    offset: 0x014E    instructions: 114
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg29.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_014E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0415 (sub_0415)
 * segment: seg3.asm    offset: 0x0415    instructions: 92
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_04BE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0415(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04BE (sub_04BE)
 * segment: seg3.asm    offset: 0x04BE    instructions: 256
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   CLIENTTOSCREEN(?)
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDC(HWND hWnd) -> HDC
 *   GETSYSTEMMETRICS(?)
 *   ISWINDOW(?)
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCURSOR(?)
 *   SETCURSORPOS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_070D, L_074D
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04BE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_070D (sub_070D)
 * segment: seg3.asm    offset: 0x070D    instructions: 29
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_070D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_074D (sub_074D)
 * segment: seg3.asm    offset: 0x074D    instructions: 124
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_04BE, L_070D
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg3.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_074D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0ADE (sub_0ADE)
 * segment: seg30.asm    offset: 0x0ADE    instructions: 35
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg30.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0ADE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00C8 (sub_00C8)
 * segment: seg32.asm    offset: 0x00C8    instructions: 205
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00C8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0318 (sub_0318)
 * segment: seg32.asm    offset: 0x0318    instructions: 383
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   CHECKDLGBUTTON(?)
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   ISDLGBUTTONCHECKED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETFOCUS(?)
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0318, L_0742
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0318(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0742 (sub_0742)
 * segment: seg32.asm    offset: 0x0742    instructions: 301
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg32.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0742(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_011A (sub_011A)
 * segment: seg33.asm    offset: 0x011A    instructions: 58
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETRECT(?)
 *   SETSCROLLPOS(?)
 *
 * Internal calls: L_01A8
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg33.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_011A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01A8 (sub_01A8)
 * segment: seg33.asm    offset: 0x01A8    instructions: 322
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   ANYPOPUP(?)
 *   ENUMWINDOWS(?)
 *   GETWINDOWLONG(?)
 *   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
 *   INTERSECTRECT(?)
 *   ISRECTEMPTY(?)
 *   SCREENTOCLIENT(?)
 *   SCROLLWINDOW(?)
 *
 * Internal calls: L_011A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg33.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01A8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg34.asm    offset: 0x0000    instructions: 165
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_0B8C, L_0D90, L_0E12, L_108A, L_199F
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01EF (sub_01EF)
 * segment: seg34.asm    offset: 0x01EF    instructions: 864
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_0B8C, L_0D90, L_0E12, L_0E5D, L_0FE7, L_108A ... +2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01EF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B8C (sub_0B8C)
 * segment: seg34.asm    offset: 0x0B8C    instructions: 185
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_1B1F, L_1D95
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B8C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D90 (sub_0D90)
 * segment: seg34.asm    offset: 0x0D90    instructions: 52
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D90(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E12 (sub_0E12)
 * segment: seg34.asm    offset: 0x0E12    instructions: 29
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E12(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E5D (sub_0E5D)
 * segment: seg34.asm    offset: 0x0E5D    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E5D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FE7 (sub_0FE7)
 * segment: seg34.asm    offset: 0x0FE7    instructions: 66
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FE7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_108A (sub_108A)
 * segment: seg34.asm    offset: 0x108A    instructions: 31
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_1BD7
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_108A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10D4 (sub_10D4)
 * segment: seg34.asm    offset: 0x10D4    instructions: 41
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10D4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1140 (sub_1140)
 * segment: seg34.asm    offset: 0x1140    instructions: 23
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ENABLEWINDOW(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1140(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1185 (sub_1185)
 * segment: seg34.asm    offset: 0x1185    instructions: 64
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ISDLGBUTTONCHECKED(?)
 *   ISWINDOWENABLED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWCURSOR(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1185(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_124E (sub_124E)
 * segment: seg34.asm    offset: 0x124E    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_2028, L_2067
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_124E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_127B (sub_127B)
 * segment: seg34.asm    offset: 0x127B    instructions: 254
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   CHECKDLGBUTTON(?)
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISDLGBUTTONCHECKED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_10D4, L_17AF, L_20BD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_127B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1540 (sub_1540)
 * segment: seg34.asm    offset: 0x1540    instructions: 31
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   ISWINDOWENABLED(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1540(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1598 (sub_1598)
 * segment: seg34.asm    offset: 0x1598    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_2028, L_2067
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1598(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15C5 (sub_15C5)
 * segment: seg34.asm    offset: 0x15C5    instructions: 14
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_15EA (sub_15EA)
 * segment: seg34.asm    offset: 0x15EA    instructions: 19
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_2028, L_2067
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_15EA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1617 (sub_1617)
 * segment: seg34.asm    offset: 0x1617    instructions: 149
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   CHECKDLGBUTTON(?)
 *   ISDLGBUTTONCHECKED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_01EF, L_10D4, L_17AF, L_20BD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1617(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_17AF (sub_17AF)
 * segment: seg34.asm    offset: 0x17AF    instructions: 211
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   CREATEDIALOG(?)
 *   ENABLEWINDOW(?)
 *   GETACTIVEWINDOW(?)
 *   GETWINDOWWORD(?)
 *   ISWINDOW(?)
 *   ISWINDOWENABLED(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_20BD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_17AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_199F (sub_199F)
 * segment: seg34.asm    offset: 0x199F    instructions: 145
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_199F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1B1F (sub_1B1F)
 * segment: seg34.asm    offset: 0x1B1F    instructions: 79
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   GETWINDOWWORD(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1B1F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1BD7 (sub_1BD7)
 * segment: seg34.asm    offset: 0x1BD7    instructions: 166
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1BD7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1D95 (sub_1D95)
 * segment: seg34.asm    offset: 0x1D95    instructions: 172
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1D95(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1F98 (sub_1F98)
 * segment: seg34.asm    offset: 0x1F98    instructions: 57
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1F98(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2028 (sub_2028)
 * segment: seg34.asm    offset: 0x2028    instructions: 27
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2028(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_2067 (sub_2067)
 * segment: seg34.asm    offset: 0x2067    instructions: 32
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *   SETFOCUS(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_2067(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_20BD (sub_20BD)
 * segment: seg34.asm    offset: 0x20BD    instructions: 61
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg34.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_20BD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0112 (sub_0112)
 * segment: seg35.asm    offset: 0x0112    instructions: 234
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *   DLGDIRLIST(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISWINDOWENABLED(?)
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_1285, L_132E, L_13EE, L_1435
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0112(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_037E (sub_037E)
 * segment: seg35.asm    offset: 0x037E    instructions: 85
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   LSTRLEN(LPSTR lpsz) -> INT
 *   DLGDIRLIST(?)
 *   DLGDIRSELECT(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_037E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0455 (sub_0455)
 * segment: seg35.asm    offset: 0x0455    instructions: 30
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *
 * Internal calls: L_0C5A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0455(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_049F (sub_049F)
 * segment: seg35.asm    offset: 0x049F    instructions: 145
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_11E2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_049F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0625 (sub_0625)
 * segment: seg35.asm    offset: 0x0625    instructions: 133
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CHECKDLGBUTTON(?)
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0BD5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0625(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0797 (sub_0797)
 * segment: seg35.asm    offset: 0x0797    instructions: 349
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   WRITEPROFILESTRING(?)
 *   CHECKDLGBUTTON(?)
 *   ENABLEWINDOW(?)
 *   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   ISDLGBUTTONCHECKED(?)
 *   ISWINDOWENABLED(?)
 *   SETCURSOR(?)
 *   SETFOCUS(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0C5A, L_1243, L_1355, L_14EC
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0797(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B53 (sub_0B53)
 * segment: seg35.asm    offset: 0x0B53    instructions: 58
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0BD5, L_14EC
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B53(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BD5 (sub_0BD5)
 * segment: seg35.asm    offset: 0x0BD5    instructions: 24
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BD5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C08 (sub_0C08)
 * segment: seg35.asm    offset: 0x0C08    instructions: 30
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C08(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C5A (sub_0C5A)
 * segment: seg35.asm    offset: 0x0C5A    instructions: 68
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEWINDOW(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_0CEB
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C5A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CEB (sub_0CEB)
 * segment: seg35.asm    offset: 0x0CEB    instructions: 281
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_0FB6
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CEB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FB6 (sub_0FB6)
 * segment: seg35.asm    offset: 0x0FB6    instructions: 120
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
 *   ENUMCHILDWINDOWS(?)
 *   ENUMWINDOWS(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Internal calls: L_10D3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FB6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_10D3 (sub_10D3)
 * segment: seg35.asm    offset: 0x10D3    instructions: 39
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETCLASSNAME(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_10D3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1124 (sub_1124)
 * segment: seg35.asm    offset: 0x1124    instructions: 75
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_049F, L_0B53
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1124(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11E2 (sub_11E2)
 * segment: seg35.asm    offset: 0x11E2    instructions: 44
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETCODEHANDLE(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11E2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1243 (sub_1243)
 * segment: seg35.asm    offset: 0x1243    instructions: 34
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1243(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1285 (sub_1285)
 * segment: seg35.asm    offset: 0x1285    instructions: 66
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_132E
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1285(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_132E (sub_132E)
 * segment: seg35.asm    offset: 0x132E    instructions: 19
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_132E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1355 (sub_1355)
 * segment: seg35.asm    offset: 0x1355    instructions: 41
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_1285
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1355(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13B1 (sub_13B1)
 * segment: seg35.asm    offset: 0x13B1    instructions: 30
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13B1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13EE (sub_13EE)
 * segment: seg35.asm    offset: 0x13EE    instructions: 30
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1435 (sub_1435)
 * segment: seg35.asm    offset: 0x1435    instructions: 84
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_13B1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1435(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14EC (sub_14EC)
 * segment: seg35.asm    offset: 0x14EC    instructions: 57
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg35.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14EC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg36.asm    offset: 0x0000    instructions: 323
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0375, L_0411, L_0635, L_07F8
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0375 (sub_0375)
 * segment: seg36.asm    offset: 0x0375    instructions: 61
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0411
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0375(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0411 (sub_0411)
 * segment: seg36.asm    offset: 0x0411    instructions: 229
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0411(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0635 (sub_0635)
 * segment: seg36.asm    offset: 0x0635    instructions: 173
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_09F3, L_0A5B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0635(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07F8 (sub_07F8)
 * segment: seg36.asm    offset: 0x07F8    instructions: 193
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0A5B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07F8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09F3 (sub_09F3)
 * segment: seg36.asm    offset: 0x09F3    instructions: 47
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A5B (sub_0A5B)
 * segment: seg36.asm    offset: 0x0A5B    instructions: 31
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg36.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A5B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00D0 (sub_00D0)
 * segment: seg37.asm    offset: 0x00D0    instructions: 68
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0173, L_0655
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00D0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0173 (sub_0173)
 * segment: seg37.asm    offset: 0x0173    instructions: 46
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0173(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01DD (sub_01DD)
 * segment: seg37.asm    offset: 0x01DD    instructions: 96
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0173, L_0655
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01DD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02CF (sub_02CF)
 * segment: seg37.asm    offset: 0x02CF    instructions: 51
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETCLIPBOARDOWNER(?)
 *
 * Internal calls: L_0505, L_0742
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02CF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0348 (sub_0348)
 * segment: seg37.asm    offset: 0x0348    instructions: 65
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0455
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0348(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03E9 (sub_03E9)
 * segment: seg37.asm    offset: 0x03E9    instructions: 41
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03E9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0455 (sub_0455)
 * segment: seg37.asm    offset: 0x0455    instructions: 74
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETCLIPBOARDDATA(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0455(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0505 (sub_0505)
 * segment: seg37.asm    offset: 0x0505    instructions: 129
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   GETCLIPBOARDDATA(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_0655
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0505(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0655 (sub_0655)
 * segment: seg37.asm    offset: 0x0655    instructions: 92
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   CLOSECLIPBOARD(?)
 *   EMPTYCLIPBOARD(?)
 *   OPENCLIPBOARD(?)
 *   SETCLIPBOARDDATA(?)
 *
 * Internal calls: L_03E9
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0655(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0742 (sub_0742)
 * segment: seg37.asm    offset: 0x0742    instructions: 202
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg37.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0742(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg38.asm    offset: 0x0000    instructions: 226
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETKEYSTATE(?)
 *
 * Internal calls: L_0297
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg38.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0297 (sub_0297)
 * segment: seg38.asm    offset: 0x0297    instructions: 596
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETKEYSTATE(?)
 *
 * Internal calls: L_0297, L_091B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg38.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0297(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_091B (sub_091B)
 * segment: seg38.asm    offset: 0x091B    instructions: 93
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_091B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg38.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_091B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg39.asm    offset: 0x0000    instructions: 796
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETTEXTJUSTIFICATION(?)
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Internal calls: L_08AF, L_14F2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08AF (sub_08AF)
 * segment: seg39.asm    offset: 0x08AF    instructions: 79
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_095B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_095B (sub_095B)
 * segment: seg39.asm    offset: 0x095B    instructions: 386
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0D60, L_0ED1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_095B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D60 (sub_0D60)
 * segment: seg39.asm    offset: 0x0D60    instructions: 146
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D60(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0ED1 (sub_0ED1)
 * segment: seg39.asm    offset: 0x0ED1    instructions: 179
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_095B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0ED1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1077 (sub_1077)
 * segment: seg39.asm    offset: 0x1077    instructions: 334
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   INVERTRECT(?)
 *
 * Internal calls: L_08AF, L_14F2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1077(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1415 (sub_1415)
 * segment: seg39.asm    offset: 0x1415    instructions: 24
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_1440
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1415(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1440 (sub_1440)
 * segment: seg39.asm    offset: 0x1440    instructions: 84
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_1077, L_1415
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1440(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_14F2 (sub_14F2)
 * segment: seg39.asm    offset: 0x14F2    instructions: 58
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Internal calls: L_14F2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg39.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_14F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00B8 (sub_00B8)
 * segment: seg4.asm    offset: 0x00B8    instructions: 395
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *
 * Internal calls: L_00B8, L_0436
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00B8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0436 (sub_0436)
 * segment: seg4.asm    offset: 0x0436    instructions: 48
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg4.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0436(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg40.asm    offset: 0x0000    instructions: 148
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg40.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00B6 (sub_00B6)
 * segment: seg41.asm    offset: 0x00B6    instructions: 480
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_05A2, L_0658
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg41.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00B6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0576 (sub_0576)
 * segment: seg41.asm    offset: 0x0576    instructions: 24
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg41.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0576(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05A2 (sub_05A2)
 * segment: seg41.asm    offset: 0x05A2    instructions: 74
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg41.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05A2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0658 (sub_0658)
 * segment: seg41.asm    offset: 0x0658    instructions: 41
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg41.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0658(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg42.asm    offset: 0x0000    instructions: 90
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_00DE, L_0358, L_053B, L_0BD2, L_0D97
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00DE (sub_00DE)
 * segment: seg42.asm    offset: 0x00DE    instructions: 43
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00DE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0147 (sub_0147)
 * segment: seg42.asm    offset: 0x0147    instructions: 83
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_020B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0147(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_020B (sub_020B)
 * segment: seg42.asm    offset: 0x020B    instructions: 136
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_020B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0358 (sub_0358)
 * segment: seg42.asm    offset: 0x0358    instructions: 37
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_0147
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0358(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03AF (sub_03AF)
 * segment: seg42.asm    offset: 0x03AF    instructions: 96
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Internal calls: L_0147, L_020B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04AA (sub_04AA)
 * segment: seg42.asm    offset: 0x04AA    instructions: 57
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_020B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04AA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_053B (sub_053B)
 * segment: seg42.asm    offset: 0x053B    instructions: 365
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0DE6
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_053B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0917 (sub_0917)
 * segment: seg42.asm    offset: 0x0917    instructions: 282
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_00DE, L_0147, L_020B, L_053B, L_0BD2, L_0D97 ... +1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0917(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BD2 (sub_0BD2)
 * segment: seg42.asm    offset: 0x0BD2    instructions: 59
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BD2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C6B (sub_0C6B)
 * segment: seg42.asm    offset: 0x0C6B    instructions: 123
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_053B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C6B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D97 (sub_0D97)
 * segment: seg42.asm    offset: 0x0D97    instructions: 34
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D97(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DE6 (sub_0DE6)
 * segment: seg42.asm    offset: 0x0DE6    instructions: 35
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DE6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E2E (sub_0E2E)
 * segment: seg42.asm    offset: 0x0E2E    instructions: 66
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0EE4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E2E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EC1 (sub_0EC1)
 * segment: seg42.asm    offset: 0x0EC1    instructions: 19
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EC1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EE4 (sub_0EE4)
 * segment: seg42.asm    offset: 0x0EE4    instructions: 350
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0917, L_12BB, L_1385
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EE4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12BB (sub_12BB)
 * segment: seg42.asm    offset: 0x12BB    instructions: 88
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0917, L_1385, L_1400
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12BB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1385 (sub_1385)
 * segment: seg42.asm    offset: 0x1385    instructions: 55
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1385(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1400 (sub_1400)
 * segment: seg42.asm    offset: 0x1400    instructions: 46
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0E2E, L_0EC1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1400(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1452 (sub_1452)
 * segment: seg42.asm    offset: 0x1452    instructions: 80
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg42.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1452(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg43.asm    offset: 0x0000    instructions: 359
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_03C5, L_044E
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg43.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03C5 (sub_03C5)
 * segment: seg43.asm    offset: 0x03C5    instructions: 58
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg43.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_044E (sub_044E)
 * segment: seg43.asm    offset: 0x044E    instructions: 156
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_05E1
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg43.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_044E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05E1 (sub_05E1)
 * segment: seg43.asm    offset: 0x05E1    instructions: 42
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg43.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05E1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C87 (sub_0C87)
 * segment: seg44.asm    offset: 0x0C87    instructions: 147
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg44.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C87(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DE6 (sub_0DE6)
 * segment: seg44.asm    offset: 0x0DE6    instructions: 20
 * classification (pass8): unclear
 * prologue: none    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg44.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DE6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E15 (sub_0E15)
 * segment: seg44.asm    offset: 0x0E15    instructions: 69
 * classification (pass8): unclear
 * prologue: none    epilogue: retf_n
 *
 * API calls:
 *   GETTEXTEXTENT(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg44.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E15(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EC1 (sub_0EC1)
 * segment: seg44.asm    offset: 0x0EC1    instructions: 16
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg44.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EC1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EDE (sub_0EDE)
 * segment: seg44.asm    offset: 0x0EDE    instructions: 47
 * classification (pass8): unclear
 * prologue: none    epilogue: retf
 *
 * API calls:
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg44.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EDE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_09D6 (sub_09D6)
 * segment: seg45.asm    offset: 0x09D6    instructions: 74
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   SETCURSOR(?)
 *
 * Internal calls: L_0B54
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_09D6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A93 (sub_0A93)
 * segment: seg45.asm    offset: 0x0A93    instructions: 67
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A93(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B54 (sub_0B54)
 * segment: seg45.asm    offset: 0x0B54    instructions: 56
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B54(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0BDA (sub_0BDA)
 * segment: seg45.asm    offset: 0x0BDA    instructions: 214
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Internal calls: L_09D6, L_0A93, L_0E26, L_1204
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0BDA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0E26 (sub_0E26)
 * segment: seg45.asm    offset: 0x0E26    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0E26(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0EB9 (sub_0EB9)
 * segment: seg45.asm    offset: 0x0EB9    instructions: 25
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_1204
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0EB9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F03 (sub_0F03)
 * segment: seg45.asm    offset: 0x0F03    instructions: 195
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F03(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_110F (sub_110F)
 * segment: seg45.asm    offset: 0x110F    instructions: 93
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   SETRECT(?)
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_110F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1204 (sub_1204)
 * segment: seg45.asm    offset: 0x1204    instructions: 28
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg45.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1204(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg46.asm    offset: 0x0000    instructions: 220
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_01F3, L_04CA
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg46.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01F3 (sub_01F3)
 * segment: seg46.asm    offset: 0x01F3    instructions: 145
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_035F
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg46.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035F (sub_035F)
 * segment: seg46.asm    offset: 0x035F    instructions: 139
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg46.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04CA (sub_04CA)
 * segment: seg46.asm    offset: 0x04CA    instructions: 53
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg46.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04CA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0119 (sub_0119)
 * segment: seg47.asm    offset: 0x0119    instructions: 177
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
 *   LOCKSEGMENT(?)
 *   UNLOCKSEGMENT(?)
 *
 * Internal calls: L_031F, L_03AB, L_0505
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg47.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0119(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_031F (sub_031F)
 * segment: seg47.asm    offset: 0x031F    instructions: 57
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GETUPDATERECT(?)
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg47.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_031F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03AB (sub_03AB)
 * segment: seg47.asm    offset: 0x03AB    instructions: 132
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_054B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg47.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03AB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0505 (sub_0505)
 * segment: seg47.asm    offset: 0x0505    instructions: 27
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg47.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0505(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054B (sub_054B)
 * segment: seg47.asm    offset: 0x054B    instructions: 110
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg47.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg48.asm    offset: 0x0000    instructions: 404
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   CHANGEMENU(?)
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   CLOSECLIPBOARD(?)
 *   ENUMCLIPBOARDFORMATS(?)
 *   GETACTIVEWINDOW(?)
 *   OPENCLIPBOARD(?)
 *
 * Internal calls: L_05DE, L_066B, L_0B6E
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_048E (sub_048E)
 * segment: seg48.asm    offset: 0x048E    instructions: 127
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *
 * Internal calls: L_07CD
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_048E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05DE (sub_05DE)
 * segment: seg48.asm    offset: 0x05DE    instructions: 50
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CHANGEMENU(?)
 *   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05DE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_066B (sub_066B)
 * segment: seg48.asm    offset: 0x066B    instructions: 136
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0898, L_0924, L_0979, L_0AD3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_066B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07CD (sub_07CD)
 * segment: seg48.asm    offset: 0x07CD    instructions: 77
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_08EE, L_0A45
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07CD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0898 (sub_0898)
 * segment: seg48.asm    offset: 0x0898    instructions: 39
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0898(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08EE (sub_08EE)
 * segment: seg48.asm    offset: 0x08EE    instructions: 24
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0924 (sub_0924)
 * segment: seg48.asm    offset: 0x0924    instructions: 36
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0924(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0979 (sub_0979)
 * segment: seg48.asm    offset: 0x0979    instructions: 80
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0979(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A45 (sub_0A45)
 * segment: seg48.asm    offset: 0x0A45    instructions: 55
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A45(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0AD3 (sub_0AD3)
 * segment: seg48.asm    offset: 0x0AD3    instructions: 61
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0AD3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B6E (sub_0B6E)
 * segment: seg48.asm    offset: 0x0B6E    instructions: 68
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * API calls:
 *   GETACTIVEWINDOW(?)
 *   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
 *   GETWINDOWWORD(?)
 *   HILITEMENUITEM(?)
 *
 * Internal calls: L_0C10
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B6E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C10 (sub_0C10)
 * segment: seg48.asm    offset: 0x0C10    instructions: 406
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
 *
 * Internal calls: L_066B, L_102B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C10(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_102B (sub_102B)
 * segment: seg48.asm    offset: 0x102B    instructions: 22
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg48.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_102B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0025 (sub_0025)
 * segment: seg49.asm    offset: 0x0025    instructions: 152
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   MESSAGEBEEP(?)
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *   SETFOCUS(?)
 *
 * Internal calls: L_01BC, L_0250, L_02A5, L_0313, L_0390
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0025(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01BC (sub_01BC)
 * segment: seg49.asm    offset: 0x01BC    instructions: 57
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0313
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01BC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0250 (sub_0250)
 * segment: seg49.asm    offset: 0x0250    instructions: 36
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0250(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02A5 (sub_02A5)
 * segment: seg49.asm    offset: 0x02A5    instructions: 39
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02A5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0313 (sub_0313)
 * segment: seg49.asm    offset: 0x0313    instructions: 53
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0313(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0390 (sub_0390)
 * segment: seg49.asm    offset: 0x0390    instructions: 59
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
 *   GETKEYSTATE(?)
 *   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg49.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0390(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0302 (sub_0302)
 * segment: seg5.asm    offset: 0x0302    instructions: 73
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0302(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03CC (sub_03CC)
 * segment: seg5.asm    offset: 0x03CC    instructions: 211
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03CC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0647 (sub_0647)
 * segment: seg5.asm    offset: 0x0647    instructions: 115
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0773
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0647(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0773 (sub_0773)
 * segment: seg5.asm    offset: 0x0773    instructions: 53
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0773(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07FF (sub_07FF)
 * segment: seg5.asm    offset: 0x07FF    instructions: 90
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   GLOBALCOMPACT(DWORD dwMinFree) -> DWORD
 *   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg5.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07FF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02DD (sub_02DD)
 * segment: seg50.asm    offset: 0x02DD    instructions: 278
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_02DD, L_05C6, L_0778
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg50.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02DD(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05C6 (sub_05C6)
 * segment: seg50.asm    offset: 0x05C6    instructions: 42
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_061B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg50.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05C6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_061B (sub_061B)
 * segment: seg50.asm    offset: 0x061B    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg50.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_061B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_064E (sub_064E)
 * segment: seg50.asm    offset: 0x064E    instructions: 114
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg50.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_064E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0778 (sub_0778)
 * segment: seg50.asm    offset: 0x0778    instructions: 146
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_064E
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg50.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0778(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00DC (sub_00DC)
 * segment: seg51.asm    offset: 0x00DC    instructions: 259
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   SETTEXTJUSTIFICATION(?)
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg51.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00DC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_014C (sub_014C)
 * segment: seg52.asm    offset: 0x014C    instructions: 59
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg52.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_014C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0041 (sub_0041)
 * segment: seg54.asm    offset: 0x0041    instructions: 277
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   CREATEFONTINDIRECT(?)
 *   CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETOBJECT(?)
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETBKMODE(HDC hDC, INT iMode) -> INT
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   BRINGWINDOWTOTOP(?)
 *   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   GETDC(HWND hWnd) -> HDC
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
 *   UPDATEWINDOW(HWND hWnd) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0041(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_034A (sub_034A)
 * segment: seg54.asm    offset: 0x034A    instructions: 96
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   DESTROYWINDOW(HWND hWnd) -> BOOL
 *   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
 *   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
 *   VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
 *
 * Internal calls: L_042D, L_04D3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_034A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_042D (sub_042D)
 * segment: seg54.asm    offset: 0x042D    instructions: 86
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_11BF
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_042D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04D3 (sub_04D3)
 * segment: seg54.asm    offset: 0x04D3    instructions: 1127
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETTEXTEXTENT(?)
 *   GETTEXTMETRICS(?)
 *   INTERSECTCLIPRECT(?)
 *   LINETO(HDC hDC, INT x, INT y) -> BOOL
 *   MOVETO(HDC hDC, INT x, INT y) -> DWORD
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   RESTOREDC(?)
 *   SAVEDC(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
 *   GETSYSTEMMETRICS(?)
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *   RELEASECAPTURE(?)
 *   SETCAPTURE(?)
 *
 * Internal calls: L_1105, L_11BF, L_1265, L_12BC, L_138A, L_13C7 ... +4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04D3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1105 (sub_1105)
 * segment: seg54.asm    offset: 0x1105    instructions: 71
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   PTINRECT(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1105(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_11BF (sub_11BF)
 * segment: seg54.asm    offset: 0x11BF    instructions: 71
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_11BF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1265 (sub_1265)
 * segment: seg54.asm    offset: 0x1265    instructions: 38
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1265(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12BC (sub_12BC)
 * segment: seg54.asm    offset: 0x12BC    instructions: 74
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   LOADBITMAP(HANDLE hInstance, LPSTR lpszBitmap) -> HBITMAP
 *
 * Internal calls: L_1265
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12BC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_138A (sub_138A)
 * segment: seg54.asm    offset: 0x138A    instructions: 24
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_138A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13C7 (sub_13C7)
 * segment: seg54.asm    offset: 0x13C7    instructions: 17
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_13F3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_13F3 (sub_13F3)
 * segment: seg54.asm    offset: 0x13F3    instructions: 48
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_13F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1465 (sub_1465)
 * segment: seg54.asm    offset: 0x1465    instructions: 18
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1465(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1492 (sub_1492)
 * segment: seg54.asm    offset: 0x1492    instructions: 81
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_04D3, L_1557
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1492(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1557 (sub_1557)
 * segment: seg54.asm    offset: 0x1557    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg54.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1557(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0120 (sub_0120)
 * segment: seg55.asm    offset: 0x0120    instructions: 89
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   SETSCROLLPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0120(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01FA (sub_01FA)
 * segment: seg55.asm    offset: 0x01FA    instructions: 274
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0120, L_04A6, L_07E6, L_08D5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01FA(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04A6 (sub_04A6)
 * segment: seg55.asm    offset: 0x04A6    instructions: 273
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0120, L_01FA, L_084A, L_08D5, L_08FC
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04A6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07E6 (sub_07E6)
 * segment: seg55.asm    offset: 0x07E6    instructions: 41
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07E6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_084A (sub_084A)
 * segment: seg55.asm    offset: 0x084A    instructions: 57
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_084A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08D5 (sub_08D5)
 * segment: seg55.asm    offset: 0x08D5    instructions: 20
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08FC (sub_08FC)
 * segment: seg55.asm    offset: 0x08FC    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08FC(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0934 (sub_0934)
 * segment: seg55.asm    offset: 0x0934    instructions: 52
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Internal calls: L_08D5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg55.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0934(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg56.asm    offset: 0x0000    instructions: 110
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0127
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0127 (sub_0127)
 * segment: seg56.asm    offset: 0x0127    instructions: 64
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0127(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01D0 (sub_01D0)
 * segment: seg56.asm    offset: 0x01D0    instructions: 99
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01D0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02D5 (sub_02D5)
 * segment: seg56.asm    offset: 0x02D5    instructions: 261
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_05AF
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02D5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_05AF (sub_05AF)
 * segment: seg56.asm    offset: 0x05AF    instructions: 96
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_05AF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06B4 (sub_06B4)
 * segment: seg56.asm    offset: 0x06B4    instructions: 642
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_01D0, L_02D5, L_06B4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg56.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06B4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0471 (sub_0471)
 * segment: seg57.asm    offset: 0x0471    instructions: 40
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg57.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0471(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg58.asm    offset: 0x0000    instructions: 173
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_01B4
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg58.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01B4 (sub_01B4)
 * segment: seg58.asm    offset: 0x01B4    instructions: 82
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg58.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01B4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_049C (sub_049C)
 * segment: seg59.asm    offset: 0x049C    instructions: 257
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_077A, L_101D, L_12EB, L_195C, L_1A06
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_049C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_077A (sub_077A)
 * segment: seg59.asm    offset: 0x077A    instructions: 134
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   5(?)
 *   6(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_077A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08E9 (sub_08E9)
 * segment: seg59.asm    offset: 0x08E9    instructions: 632
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Internal calls: L_1570, L_164D, L_1760, L_184D, L_191B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08E9(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_101D (sub_101D)
 * segment: seg59.asm    offset: 0x101D    instructions: 235
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *
 * Internal calls: L_049C, L_1289
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_101D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1289 (sub_1289)
 * segment: seg59.asm    offset: 0x1289    instructions: 43
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1289(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_12EB (sub_12EB)
 * segment: seg59.asm    offset: 0x12EB    instructions: 208
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETTEMPFILENAME(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_12EB, L_152C
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_12EB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_152C (sub_152C)
 * segment: seg59.asm    offset: 0x152C    instructions: 33
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_152C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1570 (sub_1570)
 * segment: seg59.asm    offset: 0x1570    instructions: 88
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1570(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_164D (sub_164D)
 * segment: seg59.asm    offset: 0x164D    instructions: 108
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_164D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1760 (sub_1760)
 * segment: seg59.asm    offset: 0x1760    instructions: 92
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1760(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_184D (sub_184D)
 * segment: seg59.asm    offset: 0x184D    instructions: 87
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_184D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_191B (sub_191B)
 * segment: seg59.asm    offset: 0x191B    instructions: 32
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_191B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_195C (sub_195C)
 * segment: seg59.asm    offset: 0x195C    instructions: 35
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_19AB
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_195C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_19AB (sub_19AB)
 * segment: seg59.asm    offset: 0x19AB    instructions: 38
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_19AB
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_19AB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_1A06 (sub_1A06)
 * segment: seg59.asm    offset: 0x1A06    instructions: 80
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   WRITEPROFILESTRING(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg59.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_1A06(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02F1 (sub_02F1)
 * segment: seg6.asm    offset: 0x02F1    instructions: 217
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_054B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02F1(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_052D (sub_052D)
 * segment: seg6.asm    offset: 0x052D    instructions: 12
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_052D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_054B (sub_054B)
 * segment: seg6.asm    offset: 0x054B    instructions: 107
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_054B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_063A (sub_063A)
 * segment: seg6.asm    offset: 0x063A    instructions: 76
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   DPTOLP(HDC hDC, LPPOINT lpPoints, INT nCount) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   SETMAPMODE(HDC hDC, INT iMode) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_063A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0703 (sub_0703)
 * segment: seg6.asm    offset: 0x0703    instructions: 92
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDC(HWND hWnd) -> HDC
 *
 * Internal calls: L_063A, L_07F7
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0703(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07F7 (sub_07F7)
 * segment: seg6.asm    offset: 0x07F7    instructions: 277
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg6.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07F7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0018 (sub_0018)
 * segment: seg61.asm    offset: 0x0018    instructions: 764
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_08DE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg61.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0018(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08DE (sub_08DE)
 * segment: seg61.asm    offset: 0x08DE    instructions: 44
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg61.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08DE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0100 (sub_0100)
 * segment: seg62.asm    offset: 0x0100    instructions: 365
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   CREATEFONTINDIRECT(?)
 *   GETTEXTEXTENT(?)
 *   GETTEXTFACE(?)
 *   GETTEXTMETRICS(?)
 *   SETTEXTJUSTIFICATION(?)
 *
 * Internal calls: L_0712
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg62.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0100(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04DF (sub_04DF)
 * segment: seg62.asm    offset: 0x04DF    instructions: 198
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETTEXTFACE(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg62.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04DF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0712 (sub_0712)
 * segment: seg62.asm    offset: 0x0712    instructions: 136
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   DELETEDC(HDC hDC) -> BOOL
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Internal calls: L_0712
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg62.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0712(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0087 (sub_0087)
 * segment: seg63.asm    offset: 0x0087    instructions: 212
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   CREATEBITMAPINDIRECT(?)
 *   SETBITMAPDIMENSION(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   SETCLIPBOARDDATA(?)
 *
 * Internal calls: L_02BF
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0087(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02BF (sub_02BF)
 * segment: seg63.asm    offset: 0x02BF    instructions: 246
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * API calls:
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   GETCLIPBOARDDATA(?)
 *   OPENCLIPBOARD(?)
 *   SETCLIPBOARDDATA(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02BF(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0588 (sub_0588)
 * segment: seg63.asm    offset: 0x0588    instructions: 274
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETBITMAPBITS(?)
 *   GETBITMAPDIMENSION(?)
 *   GETOBJECT(?)
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALSIZE(HANDLE hMem) -> DWORD
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   CLOSECLIPBOARD(?)
 *
 * Internal calls: L_08C5, L_0930, L_0A92
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0588(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_08C5 (sub_08C5)
 * segment: seg63.asm    offset: 0x08C5    instructions: 48
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_08C5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0930 (sub_0930)
 * segment: seg63.asm    offset: 0x0930    instructions: 132
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0930(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0A92 (sub_0A92)
 * segment: seg63.asm    offset: 0x0A92    instructions: 94
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   DELETEDC(HDC hDC) -> BOOL
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETOBJECT(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg63.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0A92(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03D4 (sub_03D4)
 * segment: seg64.asm    offset: 0x03D4    instructions: 40
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
 *   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
 *   GETDC(HWND hWnd) -> HDC
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg64.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03D4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_044C (sub_044C)
 * segment: seg64.asm    offset: 0x044C    instructions: 17
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg64.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_044C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0040 (sub_0040)
 * segment: seg65.asm    offset: 0x0040    instructions: 253
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   GETKEYSTATE(?)
 *   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg65.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0040(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg67.asm    offset: 0x0000    instructions: 58
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_007A, L_00EE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg67.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_007A (sub_007A)
 * segment: seg67.asm    offset: 0x007A    instructions: 49
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg67.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_007A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00EE (sub_00EE)
 * segment: seg67.asm    offset: 0x00EE    instructions: 202
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_02F3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg67.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00EE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02F3 (sub_02F3)
 * segment: seg67.asm    offset: 0x02F3    instructions: 25
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * Internal calls: L_00EE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg67.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02F3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0059 (sub_0059)
 * segment: seg68.asm    offset: 0x0059    instructions: 74
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg68.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0059(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00F2 (sub_00F2)
 * segment: seg68.asm    offset: 0x00F2    instructions: 47
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg68.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0165 (sub_0165)
 * segment: seg68.asm    offset: 0x0165    instructions: 88
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
 *
 * Internal calls: L_0246
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg68.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0165(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0246 (sub_0246)
 * segment: seg68.asm    offset: 0x0246    instructions: 49
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg68.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0246(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg69.asm    offset: 0x0000    instructions: 32
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg69.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0040 (sub_0040)
 * segment: seg69.asm    offset: 0x0040    instructions: 203
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Internal calls: L_0288
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg69.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0040(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0288 (sub_0288)
 * segment: seg69.asm    offset: 0x0288    instructions: 184
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * API calls:
 *   GETCARETBLINKTIME(?)
 *   GETMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax) -> BOOL
 *   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
 *
 * Internal calls: L_0040
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg69.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0288(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0054 (sub_0054)
 * segment: seg7.asm    offset: 0x0054    instructions: 122
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Internal calls: L_016A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0054(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_016A (sub_016A)
 * segment: seg7.asm    offset: 0x016A    instructions: 42
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_01C7
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_016A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01C7 (sub_01C7)
 * segment: seg7.asm    offset: 0x01C7    instructions: 68
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0054
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg7.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01C7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0029 (sub_0029)
 * segment: seg70.asm    offset: 0x0029    instructions: 168
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_0029, L_01B7
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg70.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0029(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01B7 (sub_01B7)
 * segment: seg70.asm    offset: 0x01B7    instructions: 44
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg70.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01B7(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_035E (sub_035E)
 * segment: seg71.asm    offset: 0x035E    instructions: 36
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_035E(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_03BB (sub_03BB)
 * segment: seg71.asm    offset: 0x03BB    instructions: 222
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   GETTEXTMETRICS(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   GETDC(HWND hWnd) -> HDC
 *   INVERTRECT(?)
 *   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
 *   RELEASEDC(HWND hWnd, HDC hDC) -> INT
 *   SETCAPTURE(?)
 *   SETCURSOR(?)
 *   SETRECT(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_062B, L_06CB
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_03BB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_062B (sub_062B)
 * segment: seg71.asm    offset: 0x062B    instructions: 20
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETSTOCKOBJECT(INT iObject) -> HANDLE
 *   INTERSECTCLIPRECT(?)
 *   SAVEDC(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_062B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_066A (sub_066A)
 * segment: seg71.asm    offset: 0x066A    instructions: 30
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   RESTOREDC(?)
 *   INVERTRECT(?)
 *   RELEASECAPTURE(?)
 *   SETCURSOR(?)
 *   SHOWCURSOR(?)
 *
 * Internal calls: L_0C4A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_066A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06CB (sub_06CB)
 * segment: seg71.asm    offset: 0x06CB    instructions: 497
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   RESTOREDC(?)
 *   OFFSETRECT(?)
 *   PTINRECT(?)
 *   SETCURSOR(?)
 *
 * Internal calls: L_062B, L_0C4A, L_0D15, L_0F81
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06CB(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0C4A (sub_0C4A)
 * segment: seg71.asm    offset: 0x0C4A    instructions: 67
 * classification (pass8): c_medium
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0C4A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0CF4 (sub_0CF4)
 * segment: seg71.asm    offset: 0x0CF4    instructions: 14
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   GETCURSORPOS(?)
 *   SCREENTOCLIENT(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0CF4(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D15 (sub_0D15)
 * segment: seg71.asm    offset: 0x0D15    instructions: 13
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * API calls:
 *   CLIENTTOSCREEN(?)
 *   SETCURSORPOS(?)
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D15(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0D37 (sub_0D37)
 * segment: seg71.asm    offset: 0x0D37    instructions: 47
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Internal calls: L_0DB5
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0D37(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0DB5 (sub_0DB5)
 * segment: seg71.asm    offset: 0x0DB5    instructions: 166
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0DB5(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0F81 (sub_0F81)
 * segment: seg71.asm    offset: 0x0F81    instructions: 32
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * Internal calls: L_0FD3
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0F81(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0FD3 (sub_0FD3)
 * segment: seg71.asm    offset: 0x0FD3    instructions: 56
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg71.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0FD3(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg72.asm    offset: 0x0000    instructions: 20
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * API calls:
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg72.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_002F (sub_002F)
 * segment: seg72.asm    offset: 0x002F    instructions: 745
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
 *   CREATEBITMAPINDIRECT(?)
 *   CREATECOMPATIBLEBITMAP(?)
 *   CREATECOMPATIBLEDC(HDC hDC) -> HDC
 *   CREATEDISCARDABLEBITMAP(?)
 *   DELETEDC(HDC hDC) -> BOOL
 *   DELETEOBJECT(HANDLE hObj) -> BOOL
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *   INTERSECTCLIPRECT(?)
 *   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
 *   PLAYMETAFILE(?)
 *   RESTOREDC(?)
 *   SAVEDC(?)
 *   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
 *   SETMAPMODE(HDC hDC, INT iMode) -> INT
 *   SETSTRETCHBLTMODE(?)
 *   SETVIEWPORTEXT(?)
 *   SETVIEWPORTORG(?)
 *   SETWINDOWEXT(?)
 *   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
 *   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
 *   GLOBALFREE(HANDLE hMem) -> HANDLE
 *   GLOBALLOCK(HANDLE hMem) -> LPVOID
 *   GLOBALUNLOCK(HANDLE hMem) -> BOOL
 *   COPYRECT(?)
 *   INVERTRECT(?)
 *   SETRECT(?)
 *   UNIONRECT(?)
 *
 * Internal calls: L_002F, L_0865
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg72.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_002F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0865 (sub_0865)
 * segment: seg72.asm    offset: 0x0865    instructions: 278
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_0B0A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg72.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0865(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0B0A (sub_0B0A)
 * segment: seg72.asm    offset: 0x0B0A    instructions: 23
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: unknown
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg72.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0B0A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg73.asm    offset: 0x0000    instructions: 232
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ESCAPE(?)
 *   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
 *
 * Internal calls: L_022B
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_022B (sub_022B)
 * segment: seg73.asm    offset: 0x022B    instructions: 352
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_059C, L_0610, L_06E6, L_0720, L_075A
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_022B(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_059C (sub_059C)
 * segment: seg73.asm    offset: 0x059C    instructions: 46
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_059C(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0610 (sub_0610)
 * segment: seg73.asm    offset: 0x0610    instructions: 91
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_06E6, L_0720, L_075A, L_0794
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0610(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_06E6 (sub_06E6)
 * segment: seg73.asm    offset: 0x06E6    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_06E6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0720 (sub_0720)
 * segment: seg73.asm    offset: 0x0720    instructions: 15
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0720(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0742 (sub_0742)
 * segment: seg73.asm    offset: 0x0742    instructions: 11
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0742(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_075A (sub_075A)
 * segment: seg73.asm    offset: 0x075A    instructions: 26
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_075A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0794 (sub_0794)
 * segment: seg73.asm    offset: 0x0794    instructions: 15
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0794(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_07B6 (sub_07B6)
 * segment: seg73.asm    offset: 0x07B6    instructions: 12
 * classification (pass8): unclear
 * prologue: standard_bp    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg73.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_07B6(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_02F2 (sub_02F2)
 * segment: seg76.asm    offset: 0x02F2    instructions: 176
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_04C2
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg76.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_02F2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_04C2 (sub_04C2)
 * segment: seg76.asm    offset: 0x04C2    instructions: 139
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg76.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_04C2(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_029D (sub_029D)
 * segment: seg8.asm    offset: 0x029D    instructions: 335
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   ENUMFONTS(?)
 *
 * Internal calls: L_0607, L_0837
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_029D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0607 (sub_0607)
 * segment: seg8.asm    offset: 0x0607    instructions: 110
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: ret
 *
 * API calls:
 *   GETPROFILESTRING(?)
 *
 * Internal calls: L_073A, L_078D, L_0837
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0607(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_073A (sub_073A)
 * segment: seg8.asm    offset: 0x073A    instructions: 36
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_078D
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_073A(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_078D (sub_078D)
 * segment: seg8.asm    offset: 0x078D    instructions: 78
 * classification (pass8): c_high
 * prologue: standard_bp    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_078D(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0837 (sub_0837)
 * segment: seg8.asm    offset: 0x0837    instructions: 31
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg8.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0837(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_0000 (sub_0000)
 * segment: seg9.asm    offset: 0x0000    instructions: 29
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_0000(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_003F (sub_003F)
 * segment: seg9.asm    offset: 0x003F    instructions: 46
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_00A0
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_003F(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_00A0 (sub_00A0)
 * segment: seg9.asm    offset: 0x00A0    instructions: 124
 * classification (pass8): c_high
 * prologue: saves_regs    epilogue: retf_n
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_00A0, L_01FE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_00A0(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01B8 (sub_01B8)
 * segment: seg9.asm    offset: 0x01B8    instructions: 34
 * classification (pass8): c_medium
 * prologue: saves_regs    epilogue: retf_n
 *
 * Internal calls: L_01FE
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01B8(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

/*
 * sub_01FE (sub_01FE)
 * segment: seg9.asm    offset: 0x01FE    instructions: 161
 * classification (pass8): unclear
 * prologue: saves_regs    epilogue: jmp_tail
 *
 * API calls:
 *   LOCALFREE(HANDLE hMem) -> HANDLE
 *
 * Internal calls: L_003F, L_01B8
 *
 * Reverse-engineering hints:
 *   See src/WRITE/seg9.asm for the byte-exact assembly.
 *   This stub does NOT compile; it is documentation in C form.
 */
WORD FAR PASCAL sub_01FE(/* TODO: infer args from [bp+N] refs in .asm */)
{
    /* TODO: lift body from .asm */
    return 0;
}

