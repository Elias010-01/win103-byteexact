; ======================================================================
; TERMINAL / seg8.asm   (segment 8 of TERMINAL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                   65
; 
; Classification (pass8):
;   C-origin (high+medium):              2
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     5 (5 unique)
;   Top:
;        1  ENABLEWINDOW
;        1  GETDLGITEM
;        1  ANSINEXT
;        1  ANSIPREV
;        1  LSTRLEN
; ======================================================================
; AUTO-GENERATED from original TERMINAL segment 8
; segment_size=362 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa0                        ; 81 EC A0 00
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0029                          ; 75 03
        jmp     L_00E3                          ; E9 BA 00
;   [conditional branch target (if/else)] L_0029
L_0029:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDlg
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x99], 0x5c ; 80 BA 67 FF 5C
        je      L_0050                          ; 74 05
        mov     byte ptr [bp + si - 0x98], 0x5c ; C6 82 68 FF 5C
;   [conditional branch target (if/else)] L_0050
L_0050:
        inc     word ptr [bp - 0x9e]            ; FF 86 62 FF
        mov     si, word ptr [bp - 0x9e]        ; 8B B6 62 FF
        mov     byte ptr [bp + si - 0x98], 0    ; C6 82 68 FF 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0104                          ; E8 91 00
        mov     word ptr [bp - 0x9a], ax        ; 89 86 66 FF
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
;   [loop start] L_007B
L_007B:
        mov     word ptr [bp - 0xa0], ax        ; 89 86 60 FF
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jae     L_0097                          ; 73 0E
        mov     bx, word ptr [bp - 0x9c]        ; 8B 9E 64 FF
        mov     si, word ptr [bp - 0xa0]        ; 8B B6 60 FF
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
        je      L_00C7                          ; 74 30
;   [conditional branch target (if/else)] L_0097
L_0097:
        mov     ax, word ptr [bp - 0x9a]        ; 8B 86 66 FF
        cmp     word ptr [bp - 0x9c], ax        ; 39 86 64 FF
        jne     L_00AA                          ; 75 09
        mov     bx, word ptr [bp - 0xa0]        ; 8B 9E 60 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_00B4                          ; 74 0A
;   [conditional branch target (if/else)] L_00AA
L_00AA:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 8                           ; 05 08 00
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
;   [conditional branch target (if/else)] L_00B4
L_00B4:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00F8                          ; EB 31
;   [conditional branch target (if/else)] L_00C7
L_00C7:
        mov     ax, word ptr [bp - 0x9c]        ; 8B 86 64 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A DD 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        mov     ax, word ptr [bp - 0xa0]        ; 8B 86 60 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 56 01 00 00 [FIXUP]
        jmp     L_007B                          ; EB 98
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xc]  HWND      (1 use)

; Description (heuristic):
;   Small helper using 2 API(s): ENABLEWINDOW, GETDLGITEM.

;-------------------------------------------------------------------------
; sub_00E3   offset=0x00E3  size=15 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;-------------------------------------------------------------------------
;   [unconditional branch target] L_00E3
L_00E3:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_00F8
L_00F8:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: ANSINEXT, ANSIPREV, LSTRLEN.

;-------------------------------------------------------------------------
; sub_0104   offset=0x0104  size=50 instr  segment=seg8.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: unknown
;
; Far API calls:
;   ANSINEXT
;   ANSIPREV
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_0104
L_0104:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 3A 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_012A
L_012A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_015D                          ; 76 2B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0150                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_012A                          ; 75 DA
;   [conditional branch target (if/else)] L_0150
L_0150:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_015D
L_015D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

TERMINAL_TEXT ENDS

        END
