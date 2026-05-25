; ======================================================================
; MOUSE / seg2.asm   (segment 2 of MOUSE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         7
; Total instructions:                  224
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            4
;   Unclear:                             3
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original MOUSE segment 2
; segment_size=477 bytes, flags=0x0040
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

MOUSE_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; INQUIRE  (offset 0x0000, size 40 bytes)
;-----------------------------------------------------------------------
INQUIRE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     si, 0                           ; BE 00 00
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        mov     cx, ax                          ; 8B C8
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        sub     ax, cx                          ; 2B C1
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
INQUIRE ENDP


;-----------------------------------------------------------------------
; ENABLE  (offset 0x0028, size 46 bytes)
;-----------------------------------------------------------------------
ENABLE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr [0x14], bx             ; 89 1E 14 00
        mov     word ptr [0x16], es             ; 8C 06 16 00
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        jne     L_00A5                          ; 75 5F
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, ah                          ; 0A C4
        out     0x21, al                        ; E6 21
        jmp     L_0057                          ; EB 01
ENABLE ENDP

;-------------------------------------------------------------------------
; sub_0056   offset=0x0056  size=29 instr  segment=seg2.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=9)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_0056, L_010C
;-------------------------------------------------------------------------
;   [sub-routine] L_0056
L_0056:
        iret                                    ; CF
;   [unconditional branch target] L_0057
L_0057:
        push    cs                              ; 0E
        call    L_0056                          ; E8 FB FF
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        je      L_0075                          ; 74 13
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_010C                          ; E8 A5 00
        mov     bx, word ptr [0x1c]             ; 8B 1E 1C 00
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        xchg    word ptr es:[bx], ax            ; 26 87 07
        mov     word ptr [0x1e], ax             ; A3 1E 00
;   [conditional branch target (if/else)] L_0075
L_0075:
        mov     ah, 0x35                        ; B4 35
        mov     al, byte ptr [0x10]             ; A0 10 00
        int     0x21                            ; CD 21
        mov     word ptr [0x18], bx             ; 89 1E 18 00
        mov     word ptr [0x1a], es             ; 8C 06 1A 00
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        mov     dx, 0x28                        ; BA 28 00
        int     0x21                            ; CD 21
        pushf                                   ; 9C
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        and     al, byte ptr [0x11]             ; 22 06 11 00
        out     0x21, al                        ; E6 21
        mov     word ptr [0x12], 0xffff         ; C7 06 12 00 FF FF
        jmp     L_00A1                          ; EB 01
;-------------------------------------------------------------------------
; sub_00A0   offset=0x00A0  size=11 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_00A0
;-------------------------------------------------------------------------
;   [sub-routine] L_00A0
L_00A0:
        iret                                    ; CF
;   [unconditional branch target] L_00A1
L_00A1:
        push    cs                              ; 0E
        call    L_00A0                          ; E8 FB FF
;   [conditional branch target (if/else)] L_00A5
L_00A5:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00

;-----------------------------------------------------------------------
; DISABLE  (offset 0x00B2, size 74 bytes)
;-----------------------------------------------------------------------
DISABLE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        pushf                                   ; 9C
        cli                                     ; FA
        cmp     word ptr [0x12], 0              ; 83 3E 12 00 00
        je      L_00FA                          ; 74 33
        in      al, 0x21                        ; E4 21
        mov     ah, byte ptr [0x11]             ; 8A 26 11 00
        not     ah                              ; F6 D4
        or      al, ah                          ; 0A C4
        jmp     L_00D3                          ; EB 00
;   [unconditional branch target] L_00D3
L_00D3:
        out     0x21, al                        ; E6 21
        mov     bx, word ptr [0x1c]             ; 8B 1E 1C 00
        or      bx, bx                          ; 0B DB
        je      L_00E7                          ; 74 0A
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     ax, word ptr [0x1e]             ; A1 1E 00
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [conditional branch target (if/else)] L_00E7
L_00E7:
        mov     ah, 0x25                        ; B4 25
        mov     al, byte ptr [0x10]             ; A0 10 00
        push    ds                              ; 1E
        lds     dx, ptr [0x18]                  ; C5 16 18 00
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     word ptr [0x12], 0              ; C7 06 12 00 00 00
;   [conditional branch target (if/else)] L_00FA
L_00FA:
        jmp     L_00FD                          ; EB 01
DISABLE ENDP

;-------------------------------------------------------------------------
; sub_00FC   offset=0x00FC  size=11 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: none     Epilogue: retf
;
; Near calls (internal): L_00FC
;-------------------------------------------------------------------------
;   [sub-routine] L_00FC
L_00FC:
        iret                                    ; CF
;   [unconditional branch target] L_00FD
L_00FD:
        push    cs                              ; 0E
        call    L_00FC                          ; E8 FB FF
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;-------------------------------------------------------------------------
; sub_010C   offset=0x010C  size=94 instr  segment=seg2.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=5)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_010C
L_010C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     si, 0x116                       ; BE 16 01
;   [loop start] L_0119
L_0119:
        cmp     word ptr [0x1c], 0              ; 83 3E 1C 00 00
        jne     L_0138                          ; 75 18
        lodsw   ax, word ptr [si]               ; AD
        mov     word ptr [0xe], ax              ; A3 0E 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x10], al             ; A2 10 00
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [0x11], al             ; A2 11 00
        cmp     word ptr [0xe], 0               ; 83 3E 0E 00 00
        jne     L_0138                          ; 75 05
        xor     ax, ax                          ; 33 C0
        jmp     L_01D4                          ; E9 9C 00
;   [conditional branch target (if/else)] L_0138
L_0138:
        push    dx                              ; 52
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 3                           ; 83 C2 03
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
        out     dx, al                          ; EE
        sub     dx, 2                           ; 83 EA 02
        xor     al, al                          ; 32 C0
        jmp     L_014A                          ; EB 00
;   [unconditional branch target] L_014A
L_014A:
        out     dx, al                          ; EE
        dec     dx                              ; 4A
        mov     al, 0x60                        ; B0 60
        jmp     L_0150                          ; EB 00
;   [unconditional branch target] L_0150
L_0150:
        out     dx, al                          ; EE
        add     dx, 3                           ; 83 C2 03
        mov     al, 2                           ; B0 02
        jmp     L_0158                          ; EB 00
;   [unconditional branch target] L_0158
L_0158:
        out     dx, al                          ; EE
        sub     dx, 2                           ; 83 EA 02
        xor     al, al                          ; 32 C0
        jmp     L_0160                          ; EB 00
;   [unconditional branch target] L_0160
L_0160:
        out     dx, al                          ; EE
        pop     dx                              ; 5A
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 4                           ; 83 C2 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        xor     cx, cx                          ; 33 C9
;   [loop iteration target] L_0172
L_0172:
        in      al, dx                          ; EC
        loop    L_0172                          ; E2 FD
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 4                           ; 83 C2 04
        mov     al, 0xb                         ; B0 0B
        out     dx, al                          ; EE
        mov     bx, 2                           ; BB 02 00
        mov     ah, 0x4d                        ; B4 4D
;   [loop start] L_0184
L_0184:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        add     dx, 5                           ; 83 C2 05
        xor     cx, cx                          ; 33 C9
;   [loop iteration target] L_018D
L_018D:
        in      al, dx                          ; EC
        test    al, 1                           ; A8 01
        jne     L_0196                          ; 75 04
        loop    L_018D                          ; E2 F9
        jne     L_0119                          ; 75 83
;   [conditional branch target (if/else)] L_0196
L_0196:
        sub     dx, 5                           ; 83 EA 05
        in      al, dx                          ; EC
        cmp     al, ah                          ; 3A C4
        je      L_01A4                          ; 74 06
        dec     bx                              ; 4B
        jg      L_0184                          ; 7F E3
        jmp     L_0119                          ; E9 75 FF
;   [conditional branch target (if/else)] L_01A4
L_01A4:
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        inc     dx                              ; 42
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        out     dx, al                          ; EE
        mov     dx, word ptr [0xe]              ; 8B 16 0E 00
        xor     ax, ax                          ; 33 C0
        mov     es, ax                          ; 8E C0
        mov     bx, 0x400                       ; BB 00 04
        cmp     word ptr es:[bx], dx            ; 26 39 17
        je      L_01C4                          ; 74 08
        add     bx, 2                           ; 83 C3 02
        cmp     word ptr es:[bx], dx            ; 26 39 17
        jne     L_01C8                          ; 75 04
;   [conditional branch target (if/else)] L_01C4
L_01C4:
        mov     word ptr [0x1c], bx             ; 89 1E 1C 00
;   [conditional branch target (if/else)] L_01C8
L_01C8:
        mov     word ptr [4], 0x28              ; C7 06 04 00 28 00
        mov     ax, 0x188                       ; B8 88 01
        mov     cx, 0xc5                        ; B9 C5 00
;   [unconditional branch target] L_01D4
L_01D4:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

MOUSE_TEXT ENDS

        END
