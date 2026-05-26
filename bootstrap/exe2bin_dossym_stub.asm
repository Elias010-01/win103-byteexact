; ============================================================
; exe2bin_dossym_stub.asm
;
; Minimal DOSSYM.ASM replacement for assembling MS-DOS 2.0
; EXE2BIN.ASM under MASM 4.0. The full DOSSYM.ASM (42 KB)
; uses MASM 1.x/2.x macros that don't all parse cleanly under
; MASM 4.0; EXE2BIN itself only references a small set of
; INT 21h DOS function-number constants. Define just those.
;
; (Values are the well-known DOS 2.x INT 21h AH function
; numbers and are unambiguously documented; see Microsoft's
; published DOS 2.0 syscall reference in v2.0/source/SYSCALL.txt.)
; ============================================================

Get_Version             EQU     30h     ; INT 21h AH=30h - get DOS version
STD_CON_STRING_OUTPUT   EQU     09h     ; INT 21h AH=09h - print $ string
STD_CON_STRING_INPUT    EQU     0Ah     ; INT 21h AH=0Ah - buffered input
open                    EQU     3Dh     ; INT 21h AH=3Dh - open handle
CREAT                   EQU     3Ch     ; INT 21h AH=3Ch - creat handle
CLOSE                   EQU     3Eh     ; INT 21h AH=3Eh - close handle
read                    EQU     3Fh     ; INT 21h AH=3Fh - read handle
write                   EQU     40h     ; INT 21h AH=40h - write handle
lseek                   EQU     42h     ; INT 21h AH=42h - lseek handle
