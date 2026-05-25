; ======================================================================
; USER / seg8.asm   (segment 8 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        26
; Total instructions:                 2047
; 
; Classification (pass8):
;   C-origin (high+medium):             25
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     8 (4 unique)
;   Top:
;        3  SELECTOBJECT
;        2  PATBLT
;        2  STRETCHBLT
;        1  LOCALFREE
; ======================================================================
; AUTO-GENERATED from original USER segment 8
; segment_size=5245 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=31 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     di, word ptr [0x5b8]            ; 8B 3E B8 05
        cmp     word ptr [di + 0xc], si         ; 39 75 0C
        jle     L_0019                          ; 7E 05
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        jmp     L_0040                          ; EB 27
;   [conditional branch target (if/else)] L_0019
L_0019:
        mov     ax, word ptr [di + 0xc]         ; 8B 45 0C
        add     ax, word ptr [di + 0xa]         ; 03 45 0A
        cmp     ax, si                          ; 3B C6
        jg      L_0028                          ; 7F 05
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        jmp     L_0040                          ; EB 18
;   [conditional branch target (if/else)] L_0028
L_0028:
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        sub     ax, word ptr [di + 2]           ; 2B 45 02
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, word ptr [di + 0xc]         ; 2B 45 0C
        push    ax                              ; 50
        push    word ptr [di + 0xa]             ; FF 75 0A
        call    far _SEG1_520B                  ; 9A D5 01 00 00 [FIXUP]
        add     ax, word ptr [di + 2]           ; 03 45 02
;   [fall-through exit] L_0040
L_0040:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;-------------------------------------------------------------------------
; sub_0048   offset=0x0048  size=70 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_00F9
;-------------------------------------------------------------------------
;   [sub-routine] L_0048
L_0048:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0063                          ; 74 04
        add     word ptr [bp - 2], 6            ; 83 46 FE 06
;   [conditional branch target (if/else)] L_0063
L_0063:
        push    si                              ; 56
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6173                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A C9 02 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_00BD                          ; 74 33
        mov     di, word ptr [si + 0x28]        ; 8B 7C 28
        sub     di, word ptr [si + 0x20]        ; 2B 7C 20
        or      di, di                          ; 0B FF
        je      L_009D                          ; 74 09
        mov     ax, di                          ; 8B C7
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        add     word ptr [bp - 8], ax           ; 01 46 F8
;   [conditional branch target (if/else)] L_009D
L_009D:
        test    byte ptr [si + 0x32], 0x10      ; F6 44 32 10
        je      L_00AC                          ; 74 09
        mov     ax, word ptr [0x440]            ; A1 40 04
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        jmp     L_00AE                          ; EB 02
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00AE
L_00AE:
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x432]            ; 2B 06 32 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_00DB                          ; EB 1E
;   [conditional branch target (if/else)] L_00BD
L_00BD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x440]            ; 2B 06 40 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        test    byte ptr [si + 0x32], 0x20      ; F6 44 32 20
        je      L_00D6                          ; 74 09
        mov     ax, word ptr [0x432]            ; A1 32 04
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        jmp     L_00D8                          ; EB 02
;   [conditional branch target (if/else)] L_00D6
L_00D6:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00D8
L_00D8:
        sub     word ptr [bp - 6], ax           ; 29 46 FA
;   [unconditional branch target] L_00DB
L_00DB:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        push    word ptr [bx]                   ; FF 37
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_00F9                          ; E8 08 00
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;-------------------------------------------------------------------------
; sub_00F9   offset=0x00F9  size=153 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0285, L_1382
;-------------------------------------------------------------------------
;   [sub-routine] L_00F9
L_00F9:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x3a4], ax            ; A3 A4 03
        or      ax, ax                          ; 0B C0
        je      L_0131                          ; 74 26
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0x5ea], ax            ; A3 EA 05
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [0x638], ax            ; A3 38 06
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x3d0], ax            ; A3 D0 03
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [0x616], ax            ; A3 16 06
        mov     si, 0x4de                       ; BE DE 04
        mov     ax, word ptr [0x480]            ; A1 80 04
        jmp     L_0155                          ; EB 24
;   [conditional branch target (if/else)] L_0131
L_0131:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0x5ea], ax            ; A3 EA 05
        mov     ax, word ptr es:[bx + 4]        ; 26 8B 47 04
        mov     word ptr [0x638], ax            ; A3 38 06
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0x3d0], ax            ; A3 D0 03
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [0x616], ax            ; A3 16 06
        mov     si, 0x5c0                       ; BE C0 05
        mov     ax, word ptr [0x47e]            ; A1 7E 04
;   [unconditional branch target] L_0155
L_0155:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [0x5b8], si            ; 89 36 B8 05
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 2], ax           ; 89 44 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     di, word ptr [0x638]            ; 8B 3E 38 06
        sub     di, word ptr [0x5ea]            ; 2B 3E EA 05
        sar     di, 1                           ; D1 FF
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        cmp     di, ax                          ; 3B F8
        jle     L_0180                          ; 7E 02
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_0180
L_0180:
        add     di, word ptr [bp - 6]           ; 03 7E FA
        mov     ax, word ptr [0x5ea]            ; A1 EA 05
        sub     ax, word ptr [si + 0x10]        ; 2B 44 10
        add     ax, di                          ; 03 C7
        mov     word ptr [si + 0xc], ax         ; 89 44 0C
        mov     ax, word ptr [si + 0x10]        ; 8B 44 10
        sub     ax, word ptr [si + 6]           ; 2B 44 06
        sub     ax, word ptr [si + 0xc]         ; 2B 44 0C
        add     ax, word ptr [0x638]            ; 03 06 38 06
        sub     ax, di                          ; 2B C7
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
        mov     ax, word ptr [0x5ea]            ; A1 EA 05
        add     ax, di                          ; 03 C7
        mov     word ptr [0x4a6], ax            ; A3 A6 04
        cmp     word ptr [si + 8], di           ; 39 7C 08
        jle     L_01BC                          ; 7E 0F
        mov     al, byte ptr [0x638]            ; A0 38 06
        sub     al, byte ptr [0x5ea]            ; 2A 06 EA 05
        test    al, 1                           ; A8 01
        jne     L_01BC                          ; 75 04
        dec     word ptr [0x4a6]                ; FF 0E A6 04
;   [conditional branch target (if/else)] L_01BC
L_01BC:
        mov     ax, word ptr [0x638]            ; A1 38 06
        sub     ax, di                          ; 2B C7
        mov     word ptr [0x622], ax            ; A3 22 06
        mov     ax, word ptr [si]               ; 8B 04
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        push    word ptr [si + 0xa]             ; FF 74 0A
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        sub     ax, word ptr [si + 2]           ; 2B 44 02
        push    ax                              ; 50
        call    far _SEG1_520B                  ; 9A FF FF 00 00 [FIXUP]
        add     ax, word ptr [si + 0xc]         ; 03 44 0C
        mov     word ptr [0x5b4], ax            ; A3 B4 05
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [0x5b4]            ; 03 06 B4 05
        mov     word ptr [0x544], ax            ; A3 44 05
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        cmp     al, 2                           ; 3C 02
        jne     L_0279                          ; 75 6F
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_64DE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0224                          ; 75 06
        mov     si, word ptr [0x74e]            ; 8B 36 4E 07
        jmp     L_0259                          ; EB 35
;   [conditional branch target (if/else)] L_0224
L_0224:
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_0230                          ; 74 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_0233                          ; EB 03
;   [conditional branch target (if/else)] L_0230
L_0230:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [unconditional branch target] L_0233
L_0233:
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x41e]            ; 03 36 1E 04
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        cmp     word ptr [bx + 0xc], si         ; 39 77 0C
        jle     L_0245                          ; 7E 03
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
;   [conditional branch target (if/else)] L_0245
L_0245:
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     ax, word ptr [bx + 0xa]         ; 03 47 0A
        cmp     ax, si                          ; 3B C6
        jg      L_0259                          ; 7F 06
        mov     si, word ptr [bx + 0xc]         ; 8B 77 0C
        add     si, word ptr [bx + 0xa]         ; 03 77 0A
;   [branch target] L_0259
L_0259:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0285                          ; E8 22 00
        cmp     word ptr [bp + 0xc], 0x202      ; 81 7E 0C 02 02
        jne     L_0275                          ; 75 0B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1382                          ; E8 0D 11
;   [conditional branch target (if/else)] L_0275
L_0275:
        mov     word ptr [0x50a], si            ; 89 36 0A 05
;   [conditional branch target (if/else)] L_0279
L_0279:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_0285   offset=0x0285  size=48 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0303, L_067E
;-------------------------------------------------------------------------
;   [sub-routine] L_0285
L_0285:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x50a]            ; 2B 06 0A 05
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_02FD                          ; 74 64
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_02A5                          ; 75 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0303                          ; E8 5E 00
;   [conditional branch target (if/else)] L_02A5
L_02A5:
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_02B5                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02B8                          ; EB 03
;   [conditional branch target (if/else)] L_02B5
L_02B5:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [unconditional branch target] L_02B8
L_02B8:
        push    ax                              ; 50
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_02C5                          ; 74 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_02C7                          ; EB 02
;   [conditional branch target (if/else)] L_02C5
L_02C5:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02C7
L_02C7:
        push    ax                              ; 50
        call    far _SEG1_6515                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_02FD                          ; 75 2A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0303                          ; E8 2A 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    0                               ; E8 1E FD
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x3a8]            ; A1 A8 03
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_02FD                          ; 74 10
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_067E                          ; E8 87 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x3a8], ax            ; A3 A8 03
;   [error/early exit] L_02FD
L_02FD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_0303   offset=0x0303  size=18 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0303
L_0303:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_380A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_0331   offset=0x0331  size=200 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0048, L_0303, L_067E
;-------------------------------------------------------------------------
;   [sub-routine] L_0331
L_0331:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        cmp     word ptr [bx + 0xe], 0          ; 83 7F 0E 00
        je      L_0353                          ; 74 0A
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_459C                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0353
L_0353:
        mov     word ptr [0x750], 0             ; C7 06 50 07 00 00
        mov     word ptr [OFFSET _entry_427], 0xffff ; C7 06 DE 05 FF FF [FIXUP]
        mov     word ptr [OFFSET _entry_427], 0xffff ; C7 06 E0 05 FF FF [FIXUP]
        mov     word ptr [0x632], 0             ; C7 06 32 06 00 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x540], ax            ; A3 40 05
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0392                          ; 74 1B
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 0x1e]        ; 8B 47 1E
        sub     word ptr [bp + 8], ax           ; 29 46 08
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        sub     word ptr [bp + 0xa], ax         ; 29 46 0A
        mov     ax, bx                          ; 8B C3
        mov     word ptr [0x3a6], ax            ; A3 A6 03
        mov     word ptr [0x654], 0             ; C7 06 54 06 00 00
        jmp     L_0398                          ; EB 06
;   [conditional branch target (if/else)] L_0392
L_0392:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [0x654], ax            ; A3 54 06
;   [unconditional branch target] L_0398
L_0398:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03AB                          ; 74 0D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, 6                           ; 2D 06 00
        push    ax                              ; 50
        call    L_0048                          ; E8 9D FC
;   [conditional branch target (if/else)] L_03AB
L_03AB:
        mov     si, 0x4fa                       ; BE FA 04
        mov     di, si                          ; 8B FE
        add     di, 2                           ; 83 C7 02
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        jne     L_03BF                          ; 75 05
        mov     si, di                          ; 8B F7
        sub     di, 2                           ; 83 EF 02
;   [conditional branch target (if/else)] L_03BF
L_03BF:
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_03CB                          ; 74 05
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        jmp     L_03CE                          ; EB 03
;   [conditional branch target (if/else)] L_03CB
L_03CB:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
;   [unconditional branch target] L_03CE
L_03CE:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [0x5ea]            ; A1 EA 05
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [0x616]            ; A1 16 06
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [0x638]            ; A1 38 06
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     ax, word ptr [0x4a6]            ; A1 A6 04
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_03F8                          ; 7D 09
        mov     word ptr [0x628], 0             ; C7 06 28 06 00 00
        jmp     L_04F2                          ; E9 FA 00
;   [conditional branch target (if/else)] L_03F8
L_03F8:
        mov     ax, word ptr [0x622]            ; A1 22 06
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_040B                          ; 7C 0B
        mov     word ptr [0x628], 1             ; C7 06 28 06 01 00
        mov     word ptr [di], ax               ; 89 05
        jmp     L_04F5                          ; E9 EA 00
;   [conditional branch target (if/else)] L_040B
L_040B:
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_042F                          ; 7D 1C
        mov     word ptr [0x628], 2             ; C7 06 28 06 02 00
        mov     ax, word ptr [0x4a6]            ; A1 A6 04
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        sub     ax, word ptr [bx + 0x10]        ; 2B 47 10
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        add     ax, word ptr [0x5b4]            ; 03 06 B4 05
        jmp     L_04F2                          ; E9 C3 00
;   [conditional branch target (if/else)] L_042F
L_042F:
        mov     ax, word ptr [0x544]            ; A1 44 05
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_043A                          ; 7C 03
        jmp     L_04D1                          ; E9 97 00
;   [conditional branch target (if/else)] L_043A
L_043A:
        mov     ax, word ptr [0x622]            ; A1 22 06
        sub     ax, word ptr [0x4a6]            ; 2B 06 A6 04
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        cmp     ax, word ptr [bx + 6]           ; 3B 47 06
        jg      L_044D                          ; 7F 03
        jmp     L_054C                          ; E9 FF 00
;   [conditional branch target (if/else)] L_044D
L_044D:
        mov     word ptr [0x628], 4             ; C7 06 28 06 04 00
        mov     ax, word ptr [0x3a4]            ; A1 A4 03
        mov     word ptr [0x620], ax            ; A3 20 06
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A BA 04 00 00 [FIXUP]
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_6540                  ; 9A 23 05 00 00 [FIXUP]
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [0x544]            ; A1 44 05
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     word ptr [OFFSET _entry_430], 0xffff ; C7 06 DE 05 FF FF [FIXUP]
        mov     word ptr [OFFSET _entry_430], 0xffff ; C7 06 E0 05 FF FF [FIXUP]
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        mov     word ptr [0x74e], ax            ; A3 4E 07
        mov     word ptr [0x50a], ax            ; A3 0A 05
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x3b4], ax            ; A3 B4 03
        mov     word ptr [0x3a8], ax            ; A3 A8 03
        mov     ax, word ptr [0x74e]            ; A1 4E 07
        sub     ax, word ptr [bp - 8]           ; 2B 46 F8
        mov     word ptr [0x41e], ax            ; A3 1E 04
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A 0D 05 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0303                          ; E8 3F FE
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [0x3b4]                ; FF 36 B4 03
        call    L_067E                          ; E8 AF 01
        jmp     L_04F5                          ; EB 24
;   [unconditional branch target] L_04D1
L_04D1:
        mov     ax, word ptr [0x622]            ; A1 22 06
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_04F5                          ; 7D 1C
        mov     word ptr [0x628], 3             ; C7 06 28 06 03 00
        mov     ax, word ptr [0x544]            ; A1 44 05
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        sub     ax, word ptr [bx + 0x10]        ; 2B 47 10
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [bx + 0x10]        ; 8B 47 10
        add     ax, word ptr [0x622]            ; 03 06 22 06
;   [unconditional branch target] L_04F2
L_04F2:
        mov     word ptr [di + 4], ax           ; 89 45 04
;   [branch target] L_04F5
L_04F5:
        cmp     word ptr [0x628], 4             ; 83 3E 28 06 04
        je      L_0527                          ; 74 2B
        mov     ax, word ptr [0x3a4]            ; A1 A4 03
        mov     word ptr [0x620], ax            ; A3 20 06
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far _SEG1_648A                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        mov     ax, word ptr [0x480]            ; A1 80 04
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        call    far _SEG1_6540                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0527
L_0527:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x5e0]                ; FF 36 E0 05
        push    word ptr [0x5de]                ; FF 36 DE 05
        ; constant WM_LBUTTONDOWN
        mov     ax, 0x201                       ; B8 01 02
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_2840                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_054C
L_054C:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00

;-----------------------------------------------------------------------
; CONTSCROLL  (offset 0x0559, size 116 bytes)
;-----------------------------------------------------------------------
CONTSCROLL PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        call    far _SEG1_329D                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [si + 0x1e]        ; 8B 44 1E
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        mov     ax, word ptr [si + 0x20]        ; 8B 44 20
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05CD                          ; E8 3C 00
        mov     word ptr [0x488], 0x32          ; C7 06 88 04 32 00
        cmp     word ptr [0x632], 0             ; 83 3E 32 06 00
        je      L_05C1                          ; 74 23
        push    si                              ; 56
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        mov     ax, 0x32                        ; B8 32 00
        push    ax                              ; 50
        mov     ax, OFFSET _entry_310           ; B8 54 06 [FIXUP]
        mov     dx, OFFSET _entry_310           ; BA 57 06 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_5527                  ; 9A 5C 06 00 00 [FIXUP]
        mov     word ptr [0x750], ax            ; A3 50 07
        push    word ptr [0x628]                ; FF 36 28 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_067E                          ; E8 BD 00
;   [conditional branch target (if/else)] L_05C1
L_05C1:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
CONTSCROLL ENDP

;-------------------------------------------------------------------------
; sub_05CD   offset=0x05CD  size=72 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_067E, L_0AEB, L_1382
;-------------------------------------------------------------------------
;   [sub-routine] L_05CD
L_05CD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_05EE                          ; 74 0E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     cl, 8                           ; B1 08
        shr     ax, cl                          ; D3 E8
        cmp     al, 2                           ; 3C 02
        je      L_05EE                          ; 74 03
        jmp     L_0673                          ; E9 85 00
;   [conditional branch target (if/else)] L_05EE
L_05EE:
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_64DE                  ; 9A 16 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x632]            ; A1 32 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_060F                          ; 74 06
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_0AEB                          ; E8 DC 04
;   [conditional branch target (if/else)] L_060F
L_060F:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_063A                          ; 74 23
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_062E                          ; 74 12
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_066D                          ; 75 4C
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_1382                          ; E8 56 0D
        jmp     L_066D                          ; EB 3F
;   [conditional branch target (if/else)] L_062E
L_062E:
        mov     word ptr [0x750], 0             ; C7 06 50 07 00 00
        mov     word ptr [0x488], 0xc8          ; C7 06 88 04 C8 00
;   [conditional branch target (if/else)] L_063A
L_063A:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_066D                          ; 74 2D
        mov     ax, word ptr [0x632]            ; A1 32 06
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_066D                          ; 74 25
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        push    word ptr [0x488]                ; FF 36 88 04
        mov     ax, OFFSET _entry_310           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_310           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_5527                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x750], ax            ; A3 50 07
        push    word ptr [0x628]                ; FF 36 28 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_067E                          ; E8 11 00
;   [branch target] L_066D
L_066D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x632], ax            ; A3 32 06
;   [unconditional branch target] L_0673
L_0673:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_067E   offset=0x067E  size=50 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0048, L_06ED
;-------------------------------------------------------------------------
;   [sub-routine] L_067E
L_067E:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     di, word ptr [0x3a4]            ; 8B 3E A4 03
        mov     si, word ptr [0x628]            ; 8B 36 28 06
        push    word ptr [0x3a6]                ; FF 36 A6 03
        or      di, di                          ; 0B FF
        je      L_069B                          ; 74 05
        ; constant WM_VSCROLL
        mov     ax, 0x115                       ; B8 15 01
        jmp     L_069E                          ; EB 03
;   [conditional branch target (if/else)] L_069B
L_069B:
        ; constant WM_HSCROLL
        mov     ax, 0x114                       ; B8 14 01
;   [unconditional branch target] L_069E
L_069E:
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     dx, dx                          ; 2B D2
        mov     bx, word ptr [0x654]            ; 8B 1E 54 06
        sub     cx, cx                          ; 2B C9
        mov     dx, bx                          ; 8B D3
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x628], si            ; 89 36 28 06
        mov     word ptr [0x3a4], di            ; 89 3E A4 03
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0048                          ; E8 6F F9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_06ED                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;-------------------------------------------------------------------------
; sub_06ED   offset=0x06ED  size=166 instr  segment=seg8.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
;
; Near calls (internal): L_0B82
;-------------------------------------------------------------------------
;   [sub-routine] L_06ED
L_06ED:
        ;   = cProc <32> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x638]            ; A1 38 06
        sub     ax, word ptr [0x5ea]            ; 2B 06 EA 05
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jg      L_0708                          ; 7F 03
        jmp     L_0983                          ; E9 7B 02
;   [conditional branch target (if/else)] L_0708
L_0708:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B82                          ; E8 6D 04
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bx + 8], ax           ; 39 47 08
        jge     L_072A                          ; 7D 06
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_072A
L_072A:
        mov     si, 0x4fa                       ; BE FA 04
        mov     di, si                          ; 8B FE
        add     di, 2                           ; 83 C7 02
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        jne     L_073E                          ; 75 05
        mov     si, di                          ; 8B F7
        sub     di, 2                           ; 83 EF 02
;   [conditional branch target (if/else)] L_073E
L_073E:
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [0x5ea]            ; A1 EA 05
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [0x616]            ; A1 16 06
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [0x638]            ; A1 38 06
        mov     word ptr [di + 4], ax           ; 89 45 04
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_0794                          ; 74 39
        mov     word ptr [bp - 0x10], 0x430     ; C7 46 F0 30 04
        mov     word ptr [bp - 0x14], 0x436     ; C7 46 EC 36 04
        mov     ax, word ptr [0x4fe]            ; A1 FE 04
        sub     ax, word ptr [0x4fa]            ; 2B 06 FA 04
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0x434]            ; A1 34 04
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0x4fa]            ; A1 FA 04
        add     ax, word ptr [0x47e]            ; 03 06 7E 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x4fc]            ; 03 06 FC 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0x480]            ; A1 80 04
        jmp     L_07CB                          ; EB 37
;   [conditional branch target (if/else)] L_0794
L_0794:
        mov     word ptr [bp - 0x10], 0x442     ; C7 46 F0 42 04
        mov     word ptr [bp - 0x14], 0x43c     ; C7 46 EC 3C 04
        mov     ax, word ptr [0x444]            ; A1 44 04
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [0x500]            ; A1 00 05
        sub     ax, word ptr [0x4fc]            ; 2B 06 FC 04
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x4fa]            ; 03 06 FA 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x4fc]            ; A1 FC 04
        add     ax, word ptr [0x480]            ; 03 06 80 04
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, word ptr [0x47e]            ; A1 7E 04
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
;   [unconditional branch target] L_07CB
L_07CB:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDC
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A E7 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [0x3c8]                ; FF 36 C8 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 6E 08 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_0819                          ; 74 24
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x4fa]                ; FF 36 FA 04
        push    word ptr [0x4fc]                ; FF 36 FC 04
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [0x3b2]                ; FF 36 B2 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bp - 0xa]             ; FF 76 F6
        jmp     L_083B                          ; EB 22
;   [conditional branch target (if/else)] L_0819
L_0819:
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x4fa]                ; FF 36 FA 04
        push    word ptr [0x4fc]                ; FF 36 FC 04
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0x3b2]                ; FF 36 B2 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        push    word ptr [bx + 4]               ; FF 77 04
;   [unconditional branch target] L_083B
L_083B:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
        call    far GDI.STRETCHBLT              ; 9A B8 08 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg y
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg nWidth
        push    word ptr [bp - 0x20]            ; FF 76 E0
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 34 09 00 00 [FIXUP]
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDC
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 40 09 00 00 [FIXUP]
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_08D3                          ; 74 5A
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    ax                              ; 50
        ;   ^ arg xDest
        mov     ax, word ptr [0x638]            ; A1 38 06
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg yDest
        mov     ax, word ptr [0x4fe]            ; A1 FE 04
        sub     ax, word ptr [0x4fa]            ; 2B 06 FA 04
        push    ax                              ; 50
        ;   ^ arg wDest
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hDest
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        ;   ^ arg ySrc
        push    word ptr [bx + 2]               ; FF 77 02
        ;   ^ arg wSrc
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hSrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
        call    far GDI.STRETCHBLT              ; 9A 12 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        push    ax                              ; 50
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [0x480]                ; FF 36 80 04
        jmp     L_092B                          ; EB 58
;-------------------------------------------------------------------------
; sub_08D3   offset=0x08D3  size=69 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
;
; Near calls (internal): L_098B, L_09FD, L_0B82
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_08D3
L_08D3:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        mov     ax, word ptr [0x638]            ; A1 38 06
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    ax                              ; 50
        ;   ^ arg xDest
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg yDest
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg wDest
        mov     ax, word ptr [0x500]            ; A1 00 05
        sub     ax, word ptr [0x4fc]            ; 2B 06 FC 04
        push    ax                              ; 50
        ;   ^ arg hDest
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDCSrc
        mov     bx, word ptr [bp - 0x14]        ; 8B 5E EC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        ;   ^ arg xSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg ySrc
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg wSrc
        push    word ptr [bx + 4]               ; FF 77 04
        ;   ^ arg hSrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [0x47e]                ; FF 36 7E 04
        push    word ptr [bp - 0x20]            ; FF 76 E0
;   [unconditional branch target] L_092B
L_092B:
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 4B 09 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_098B                          ; E8 36 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A A2 09 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    L_09FD                          ; E8 8C 00
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_098B                          ; E8 14 00
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0B82                          ; E8 FF 01
;   [fall-through exit] L_0983
L_0983:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;-------------------------------------------------------------------------
; sub_098B   offset=0x098B  size=14 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_098B
L_098B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x628], 4             ; 83 3E 28 06 04
        jne     L_09A6                          ; 75 11
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x406                       ; B8 06 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A 96 0A 00 00 [FIXUP]
;   [error/early exit] L_09A6
L_09A6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_09AC   offset=0x09AC  size=35 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0048, L_098B, L_09FD, L_0B82
;-------------------------------------------------------------------------
;   [sub-routine] L_09AC
L_09AC:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0048                          ; E8 8C F6
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_380A                  ; 9A 0D 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B82                          ; E8 B1 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        call    L_098B                          ; E8 B3 FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_09FD                          ; E8 1B 00
        push    si                              ; 56
        call    L_098B                          ; E8 A5 FF
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0B82                          ; E8 92 01
        push    si                              ; 56
        call    far _SEG1_38E1                  ; 9A 27 03 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;-------------------------------------------------------------------------
; sub_09FD   offset=0x09FD  size=96 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0B15, L_0B4A
;-------------------------------------------------------------------------
;   [sub-routine] L_09FD
L_09FD:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0x638]            ; A1 38 06
        cmp     word ptr [0x5ea], ax            ; 39 06 EA 05
        jl      L_0A11                          ; 7C 03
        jmp     L_0AE3                          ; E9 D2 00
;   [conditional branch target (if/else)] L_0A11
L_0A11:
        mov     si, 0x4fa                       ; BE FA 04
        mov     di, si                          ; 8B FE
        add     di, 2                           ; 83 C7 02
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_0A25                          ; 74 05
        mov     di, si                          ; 8B FE
        add     si, 2                           ; 83 C6 02
;   [conditional branch target (if/else)] L_0A25
L_0A25:
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        add     ax, word ptr [0x3d0]            ; 03 06 D0 03
        mov     word ptr [di], ax               ; 89 05
        mov     ax, word ptr [0x616]            ; A1 16 06
        sub     ax, word ptr [bx + 0xe]         ; 2B 47 0E
        mov     word ptr [di + 4], ax           ; 89 45 04
        mov     ax, word ptr [0x4a6]            ; A1 A6 04
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [0x622]            ; A1 22 06
        mov     word ptr [si + 4], ax           ; 89 44 04
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B4A                          ; E8 F4 00
        mov     bx, word ptr [0x5b8]            ; 8B 1E B8 05
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        sub     word ptr [di], ax               ; 29 05
        add     word ptr [di + 4], ax           ; 01 45 04
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        mov     word ptr [si], ax               ; 89 04
        mov     ax, word ptr [0x544]            ; A1 44 05
        mov     word ptr [si + 4], ax           ; 89 44 04
        mov     ax, word ptr [0x622]            ; A1 22 06
        sub     ax, word ptr [0x4a6]            ; 2B 06 A6 04
        cmp     ax, word ptr [bx + 6]           ; 3B 47 06
        jle     L_0A9A                          ; 7E 21
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x3c6]                ; FF 36 C6 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B4A                          ; E8 C0 00
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x4fa                       ; B8 FA 04
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_45E5                  ; 9A 1F 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A9A
L_0A9A:
        mov     ax, word ptr [0x540]            ; A1 40 05
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jne     L_0AE3                          ; 75 41
        mov     ax, word ptr [0x620]            ; A1 20 06
        cmp     word ptr [0x3a4], ax            ; 39 06 A4 03
        jne     L_0AE3                          ; 75 38
        mov     si, 0x40e                       ; BE 0E 04
        cmp     word ptr [0x3a4], 0             ; 83 3E A4 03 00
        je      L_0AB8                          ; 74 03
        add     si, 2                           ; 83 C6 02
;   [conditional branch target (if/else)] L_0AB8
L_0AB8:
        mov     ax, word ptr [0x628]            ; A1 28 06
        cmp     ax, 2                           ; 3D 02 00
        je      L_0AC7                          ; 74 07
        cmp     ax, 3                           ; 3D 03 00
        je      L_0ADC                          ; 74 17
        jmp     L_0AE3                          ; EB 1C
;   [conditional branch target (if/else)] L_0AC7
L_0AC7:
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        mov     word ptr [si + 4], ax           ; 89 44 04
;   [loop start] L_0ACD
L_0ACD:
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B15                          ; E8 3B 00
        jmp     L_0AE3                          ; EB 07
;   [conditional branch target (if/else)] L_0ADC
L_0ADC:
        mov     ax, word ptr [0x544]            ; A1 44 05
        mov     word ptr [si], ax               ; 89 04
        jmp     L_0ACD                          ; EB EA
;   [error/early exit] L_0AE3
L_0AE3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_0AEB   offset=0x0AEB  size=18 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0B15
;-------------------------------------------------------------------------
;   [sub-routine] L_0AEB
L_0AEB:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_380A                  ; 9A C0 09 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    ax                              ; 50
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B15                          ; E8 0E 00
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _SEG1_38E1                  ; 9A F2 09 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_0B15   offset=0x0B15  size=26 instr  segment=seg8.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0B15
L_0B15:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_648A                  ; 9A 63 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;-------------------------------------------------------------------------
; sub_0B4A   offset=0x0B4A  size=27 instr  segment=seg8.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0B4A
L_0B4A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _SEG1_648A                  ; 9A 64 04 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_665A                  ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;-------------------------------------------------------------------------
; sub_0B82   offset=0x0B82  size=39 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0B82
L_0B82:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0BD7                          ; 74 49
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     bx, word ptr [bx + 4]           ; 8B 5F 04
        mov     ax, word ptr [0x624]            ; A1 24 06
        cmp     word ptr [bx + 4], ax           ; 39 47 04
        je      L_0BB7                          ; 74 1B
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     dx, dx                          ; 2B D2
        or      dl, 5                           ; 80 CA 05
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0BC6                          ; EB 0F
;   [conditional branch target (if/else)] L_0BB7
L_0BB7:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _SEG1_1BAC                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0BC6
L_0BC6:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A DF 0B 00 00 [FIXUP]
        mov     word ptr [0x366], ax            ; A3 66 03
        jmp     L_0BE3                          ; EB 0C
;   [conditional branch target (if/else)] L_0BD7
L_0BD7:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x366]                ; FF 36 66 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A D8 07 00 00 [FIXUP]
;   [fall-through exit] L_0BE3
L_0BE3:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_0BEC   offset=0x0BEC  size=11 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0BEC
L_0BEC:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jge     L_0BFC                          ; 7D 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0BFF                          ; EB 03
;   [error/early exit] L_0BFC
L_0BFC:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_0BFF
L_0BFF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;-------------------------------------------------------------------------
; sub_0C05   offset=0x0C05  size=11 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0C05
L_0C05:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_0C15                          ; 7E 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0C18                          ; EB 03
;   [error/early exit] L_0C15
L_0C15:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_0C18
L_0C18:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00

;-----------------------------------------------------------------------
; SBWNDPROC  (offset 0x0C1E, size 1074 bytes)
;-----------------------------------------------------------------------
SBWNDPROC PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x42                        ; 83 EC 42
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     ax, word ptr [0x3a4]            ; A1 A4 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x628]            ; A1 28 06
        mov     word ptr [bp - 0x3c], ax        ; 89 46 C4
        mov     ax, word ptr [0x3a6]            ; A1 A6 03
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     ax, word ptr [0x654]            ; A1 54 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     di, ax                          ; 8B F8
        and     di, 8                           ; 81 E7 08 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x100                       ; 3D 00 01
        jne     L_0C61                          ; 75 03
        jmp     L_0EC1                          ; E9 60 02
;   [conditional branch target (if/else)] L_0C61
L_0C61:
        jbe     L_0C66                          ; 76 03
        jmp     L_0FC8                          ; E9 62 03
;   [conditional branch target (if/else)] L_0C66
L_0C66:
        cmp     ax, 1                           ; 3D 01 00
        je      L_0C8E                          ; 74 23
        cmp     ax, 7                           ; 3D 07 00
        jne     L_0C73                          ; 75 03
        jmp     L_0D88                          ; E9 15 01
;   [conditional branch target (if/else)] L_0C73
L_0C73:
        cmp     ax, 8                           ; 3D 08 00
        jne     L_0C7B                          ; 75 03
        jmp     L_0DDA                          ; E9 5F 01
;   [conditional branch target (if/else)] L_0C7B
L_0C7B:
        cmp     ax, 0xf                         ; 3D 0F 00
        jne     L_0C83                          ; 75 03
        jmp     L_0DE1                          ; E9 5E 01
;   [conditional branch target (if/else)] L_0C83
L_0C83:
        cmp     ax, 0x87                        ; 3D 87 00
        jne     L_0C8B                          ; 75 03
        jmp     L_0E46                          ; E9 BB 01
;   [conditional branch target (if/else)] L_0C8B
L_0C8B:
        jmp     L_0FF8                          ; E9 6A 03
;   [conditional branch target (if/else)] L_0C8E
L_0C8E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        add     ax, word ptr es:[bx + 0xc]      ; 26 03 47 0C
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        add     ax, word ptr es:[bx + 0xa]      ; 26 03 47 0A
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      di, di                          ; 0B FF
        jne     L_0CD4                          ; 75 23
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 0x40], ax        ; 89 46 C0
        mov     word ptr [bp - 0x3e], dx        ; 89 56 C2
        mov     word ptr [si + 0x42], ax        ; 89 44 42
        mov     word ptr [si + 0x40], ax        ; 89 44 40
        mov     ax, dx                          ; 8B C2
        mov     word ptr [si + 0x44], ax        ; 89 44 44
        mov     al, byte ptr [si + 0x30]        ; 8A 44 30
        sub     ah, ah                          ; 2A E4
        and     ax, 1                           ; 25 01 00
        mov     word ptr [si + 0x46], ax        ; 89 44 46
;   [conditional branch target (if/else)] L_0CD4
L_0CD4:
        test    byte ptr [bp - 4], 6            ; F6 46 FC 06
        jne     L_0CDD                          ; 75 03
        jmp     L_0D6B                          ; E9 8E 00
;   [conditional branch target (if/else)] L_0CDD
L_0CDD:
        or      di, di                          ; 0B FF
        je      L_0D11                          ; 74 30
        test    byte ptr [bp - 4], 4            ; F6 46 FC 04
        je      L_0CFB                          ; 74 14
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [0x44a]            ; 2B 06 4A 04
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [0x44c]            ; 2B 06 4C 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [conditional branch target (if/else)] L_0CFB
L_0CFB:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [0x44a]            ; 03 06 4A 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [0x44c]            ; 03 06 4C 04
;   [loop start] L_0D0C
L_0D0C:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        jmp     L_0D4E                          ; EB 3D
;   [conditional branch target (if/else)] L_0D11
L_0D11:
        test    byte ptr [bp - 4], 1            ; F6 46 FC 01
        je      L_0D35                          ; 74 1E
        test    byte ptr [bp - 4], 2            ; F6 46 FC 02
        je      L_0D29                          ; 74 0C
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [0x432]            ; 03 06 32 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_0D4E                          ; EB 25
;   [conditional branch target (if/else)] L_0D29
L_0D29:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [0x432]            ; 2B 06 32 04
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_0D4E                          ; EB 19
;   [conditional branch target (if/else)] L_0D35
L_0D35:
        test    byte ptr [bp - 4], 2            ; F6 46 FC 02
        je      L_0D44                          ; 74 09
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        add     ax, word ptr [0x446]            ; 03 06 46 04
        jmp     L_0D0C                          ; EB C8
;   [conditional branch target (if/else)] L_0D44
L_0D44:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [0x446]            ; 2B 06 46 04
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [unconditional branch target] L_0D4E
L_0D4E:
        push    si                              ; 56
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_204A                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0D6B
L_0D6B:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x3a4], ax            ; A3 A4 03
        mov     ax, word ptr [bp - 0x3c]        ; 8B 46 C4
        mov     word ptr [0x628], ax            ; A3 28 06
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
        mov     word ptr [0x3a6], ax            ; A3 A6 03
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x654], ax            ; A3 54 06
        sub     ax, ax                          ; 2B C0
        jmp     L_0E49                          ; E9 C1 00
;   [unconditional branch target] L_0D88
L_0D88:
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        cmp     word ptr [si + 0x46], 0         ; 83 7C 46 00
        je      L_0D9B                          ; 74 08
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        sub     ax, word ptr [si + 0x1e]        ; 2B 44 1E
        jmp     L_0D9E                          ; EB 03
;   [conditional branch target (if/else)] L_0D9B
L_0D9B:
        mov     ax, word ptr [0x1a2]            ; A1 A2 01
;   [unconditional branch target] L_0D9E
L_0D9E:
        mov     cx, word ptr [0x47e]            ; 8B 0E 7E 04
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        cmp     word ptr [si + 0x46], 0         ; 83 7C 46 00
        je      L_0DB4                          ; 74 05
        mov     ax, word ptr [0x1a0]            ; A1 A0 01
        jmp     L_0DBA                          ; EB 06
;   [conditional branch target (if/else)] L_0DB4
L_0DB4:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        sub     ax, word ptr [si + 0x20]        ; 2B 44 20
;   [unconditional branch target] L_0DBA
L_0DBA:
        mov     cx, word ptr [0x480]            ; 8B 0E 80 04
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        push    ax                              ; 50
        call    far _SEG1_8395                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    L_1017                          ; E8 49 02
        push    si                              ; 56
        call    L_1338                          ; E8 66 05
;   [loop start] L_0DD2
L_0DD2:
        push    si                              ; 56
        call    far _SEG1_8586                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D6B                          ; EB 91
;   [unconditional branch target] L_0DDA
L_0DDA:
        call    far _SEG1_8472                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D6B                          ; EB 8A
;   [unconditional branch target] L_0DE1
L_0DE1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        or      ax, ax                          ; 0B C0
        jne     L_0DF9                          ; 75 0E
        push    si                              ; 56
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
;   [conditional branch target (if/else)] L_0DF9
L_0DF9:
        or      di, di                          ; 0B FF
        jne     L_0E0A                          ; 75 0D
        push    si                              ; 56
        call    L_1017                          ; E8 16 02
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_06ED                          ; E8 E5 F8
        jmp     L_0E2F                          ; EB 25
;   [conditional branch target (if/else)] L_0E0A
L_0E0A:
        mov     al, byte ptr [si + 0x32]        ; 8A 44 32
        sub     ah, ah                          ; 2A E4
        and     ax, 4                           ; 25 04 00
        mov     word ptr [bp - 0x42], ax        ; 89 46 BE
        or      byte ptr [si + 0x32], 4         ; 80 4C 32 04
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_4C01                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x42], 0         ; 83 7E BE 00
        jne     L_0E2F                          ; 75 04
        and     byte ptr [si + 0x32], 0xfb      ; 80 64 32 FB
;   [branch target] L_0E2F
L_0E2F:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0E38                          ; 74 03
        jmp     L_0D6B                          ; E9 33 FF
;   [conditional branch target (if/else)] L_0E38
L_0E38:
        push    si                              ; 56
        lea     ax, [bp - 0x36]                 ; 8D 46 CA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0D6B                          ; E9 25 FF
;   [unconditional branch target] L_0E46
L_0E46:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0E49
L_0E49:
        sub     dx, dx                          ; 2B D2
        jmp     L_100A                          ; E9 BC 01
;   [loop start] L_0E4E
L_0E4E:
        mov     word ptr [bp - 0xa], 0xf030     ; C7 46 F6 30 F0
        or      di, di                          ; 0B FF
        jne     L_0E88                          ; 75 31
;   [loop start] L_0E57
L_0E57:
        or      di, di                          ; 0B FF
        jne     L_0E83                          ; 75 28
        test    byte ptr [si + 0x32], 1         ; F6 44 32 01
        je      L_0E67                          ; 74 06
        push    si                              ; 56
        call    far _SEG1_2E91                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E67
L_0E67:
        push    si                              ; 56
        call    far _SEG1_8551                  ; 9A 83 0F 00 00 [FIXUP]
        push    si                              ; 56
        call    L_1017                          ; E8 A6 01
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0331                          ; E8 B1 F4
        jmp     L_0D6B                          ; E9 E8 FE
;   [conditional branch target (if/else)] L_0E83
L_0E83:
        mov     word ptr [bp - 0xa], 0xf000     ; C7 46 F6 00 F0
;   [conditional branch target (if/else)] L_0E88
L_0E88:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [si + 0x28]        ; 03 44 28
        ; constant VK_SHIFT
        mov     cl, 0x10                        ; B1 10
        shl     ax, cl                          ; D3 E0
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        add     cx, word ptr [si + 0x26]        ; 03 4C 26
        or      ax, cx                          ; 0B C1
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp + 8], 0            ; C7 46 08 00 00
        push    si                              ; 56
        call    far _SEG1_1CC5                  ; 9A 01 0F 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant WM_SYSCOMMAND
        mov     ax, 0x112                       ; B8 12 01
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        or      al, 4                           ; 0C 04
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_253F                  ; 9A B2 06 00 00 [FIXUP]
        jmp     L_0D6B                          ; E9 AA FE
;   [unconditional branch target] L_0EC1
L_0EC1:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        sub     ax, 0x21                        ; 2D 21 00
        cmp     ax, 7                           ; 3D 07 00
        jbe     L_0ECF                          ; 76 03
        jmp     L_0D6B                          ; E9 9C FE
;   [conditional branch target (if/else)] L_0ECF
L_0ECF:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0xf1e]        ; 2E FF A7 1E 0F
        mov     word ptr [bp + 0xa], 6          ; C7 46 0A 06 00
        jmp     L_0EFF                          ; EB 21
        mov     word ptr [bp + 0xa], 7          ; C7 46 0A 07 00
        jmp     L_0EFF                          ; EB 1A
        mov     word ptr [bp + 0xa], 2          ; C7 46 0A 02 00
        jmp     L_0EFF                          ; EB 13
        mov     word ptr [bp + 0xa], 3          ; C7 46 0A 03 00
        jmp     L_0EFF                          ; EB 0C
        mov     word ptr [bp + 0xa], 0          ; C7 46 0A 00 00
        jmp     L_0EFF                          ; EB 05
        mov     word ptr [bp + 0xa], 1          ; C7 46 0A 01 00
;   [unconditional branch target] L_0EFF
L_0EFF:
        push    si                              ; 56
        call    far _SEG1_1CC5                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x3a6], ax            ; A3 A6 03
        mov     word ptr [0x654], si            ; 89 36 54 06
        mov     ax, word ptr [si + 0x46]        ; 8B 44 46
        mov     word ptr [0x3a4], ax            ; A3 A4 03
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_067E                          ; E8 63 F7
        jmp     L_0D6B                          ; E9 4D FE
        in      ax, 0xe                         ; E5 0E
        in      al, dx                          ; EC
        push    cs                              ; 0E
        fimul   word ptr [0xed7]                ; DE 0E D7 0E
        push    cs                              ; F3 0E
        push    cs                              ; F3 0E
        cli                                     ; FA
        push    cs                              ; 0E
        cli                                     ; FA
        push    cs                              ; 0E
        jmp     L_0D6B                          ; E9 3A FE
;   [loop start] L_0F31
L_0F31:
        mov     ax, word ptr [si + 0x40]        ; 8B 44 40
        cdq                                     ; 99
        jmp     L_100A                          ; E9 D2 00
;   [loop start] L_0F38
L_0F38:
        mov     dx, word ptr [si + 0x44]        ; 8B 54 44
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [si + 0x42]        ; 8B 44 42
        jmp     L_100A                          ; E9 C7 00
;   [loop start] L_0F43
L_0F43:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [si + 0x40], ax        ; 89 44 40
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp + 0xa], ax         ; 89 46 0A
        jmp     L_0F5D                          ; EB 0C
;   [loop start] L_0F51
L_0F51:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [si + 0x44], ax        ; 89 44 44
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [si + 0x42], ax        ; 89 44 42
;   [unconditional branch target] L_0F5D
L_0F5D:
        push    word ptr [si + 0x40]            ; FF 74 40
        push    word ptr [si + 0x44]            ; FF 74 44
        call    L_0BEC                          ; E8 86 FC
        push    ax                              ; 50
        push    word ptr [si + 0x42]            ; FF 74 42
        call    L_0C05                          ; E8 98 FC
        mov     word ptr [si + 0x40], ax        ; 89 44 40
        push    si                              ; 56
        call    L_1017                          ; E8 A3 00
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0F7D                          ; 75 03
        jmp     L_0D6B                          ; E9 EE FD
;   [conditional branch target (if/else)] L_0F7D
L_0F7D:
        push    si                              ; 56
        call    L_1338                          ; E8 B7 03
        push    si                              ; 56
        call    far _SEG1_8551                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    si                              ; 56
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B82                          ; E8 E9 FB
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_098B                          ; E8 E9 F9
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_09FD                          ; E8 51 FA
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    L_098B                          ; E8 D9 F9
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0B82                          ; E8 C6 FB
        push    si                              ; 56
        push    word ptr [bp - 0x16]            ; FF 76 EA
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0DD2                          ; E9 0A FE
;   [unconditional branch target] L_0FC8
L_0FC8:
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0FD0                          ; 75 03
        jmp     L_0E57                          ; E9 87 FE
;   [conditional branch target (if/else)] L_0FD0
L_0FD0:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_0FD8                          ; 75 03
        jmp     L_0E4E                          ; E9 76 FE
;   [conditional branch target (if/else)] L_0FD8
L_0FD8:
        cmp     ax, 0x400                       ; 3D 00 04
        jne     L_0FE0                          ; 75 03
        jmp     L_0F43                          ; E9 63 FF
;   [conditional branch target (if/else)] L_0FE0
L_0FE0:
        cmp     ax, 0x401                       ; 3D 01 04
        jne     L_0FE8                          ; 75 03
        jmp     L_0F31                          ; E9 49 FF
;   [conditional branch target (if/else)] L_0FE8
L_0FE8:
        cmp     ax, 0x402                       ; 3D 02 04
        jne     L_0FF0                          ; 75 03
        jmp     L_0F51                          ; E9 61 FF
;   [conditional branch target (if/else)] L_0FF0
L_0FF0:
        cmp     ax, 0x403                       ; 3D 03 04
        jne     L_0FF8                          ; 75 03
        jmp     L_0F38                          ; E9 40 FF
;   [branch target] L_0FF8
L_0FF8:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A B1 0B 00 00 [FIXUP]
;   [unconditional branch target] L_100A
L_100A:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_1017
L_1017:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    si                              ; 56
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        call    far _SEG1_1CC5                  ; 9A A4 0E 00 00 [FIXUP]
        mov     word ptr [0x3a6], ax            ; A3 A6 03
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [si + 0x40]            ; FF 74 40
        push    word ptr [si + 0x42]            ; FF 74 42
        push    word ptr [si + 0x44]            ; FF 74 44
        push    word ptr [si + 0x46]            ; FF 74 46
        call    L_00F9                          ; E8 B0 F0
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
SBWNDPROC ENDP


;-----------------------------------------------------------------------
; GETSCROLLPOS  (offset 0x1050, size 91 bytes)
;-----------------------------------------------------------------------
GETSCROLLPOS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A BD 10 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_109C                          ; 74 33
        cmp     word ptr [bp + 6], 2            ; 83 7E 06 02
        jne     L_1080                          ; 75 11
        push    si                              ; 56
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A DE 10 00 00 [FIXUP]
        jmp     L_109E                          ; EB 1E
;   [conditional branch target (if/else)] L_1080
L_1080:
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        je      L_109C                          ; 74 16
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1091                          ; 74 05
        ; constant WM_MOVE
        mov     bx, 3                           ; BB 03 00
        jmp     L_1093                          ; EB 02
;   [conditional branch target (if/else)] L_1091
L_1091:
        sub     bx, bx                          ; 2B DB
;   [unconditional branch target] L_1093
L_1093:
        shl     bx, 1                           ; D1 E3
        mov     di, word ptr [si + 0xa]         ; 8B 7C 0A
        mov     ax, word ptr [bx + di]          ; 8B 01
        jmp     L_109E                          ; EB 02
;   [conditional branch target (if/else)] L_109C
L_109C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_109E
L_109E:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
GETSCROLLPOS ENDP


;-----------------------------------------------------------------------
; SETSCROLLPOS  (offset 0x10AB, size 86 bytes)
;-----------------------------------------------------------------------
SETSCROLLPOS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_6092                  ; 9A 13 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_10C9                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_10F5                          ; EB 2C
;   [conditional branch target (if/else)] L_10C9
L_10C9:
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        jne     L_10E4                          ; 75 15
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 2E 11 00 00 [FIXUP]
        jmp     L_10F5                          ; EB 11
;   [conditional branch target (if/else)] L_10E4
L_10E4:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    si                              ; 56
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_11E0                          ; E8 EB 00
;   [unconditional branch target] L_10F5
L_10F5:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
SETSCROLLPOS ENDP


;-----------------------------------------------------------------------
; GETSCROLLRANGE  (offset 0x1101, size 135 bytes)
;-----------------------------------------------------------------------
GETSCROLLRANGE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _SEG1_6092                  ; 9A 96 11 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_116C                          ; 74 51
        cmp     word ptr [bp + 0xe], 2          ; 83 7E 0E 02
        jne     L_1148                          ; 75 27
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0x403                       ; B8 03 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A B9 11 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, dx                          ; 8B C2
;   [loop start] L_1143
L_1143:
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_117C                          ; EB 34
;   [conditional branch target (if/else)] L_1148
L_1148:
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        or      si, si                          ; 0B F6
        je      L_116C                          ; 74 1A
        cmp     word ptr [bp + 0xe], 0          ; 83 7E 0E 00
        je      L_115B                          ; 74 03
        add     si, 6                           ; 83 C6 06
;   [conditional branch target (if/else)] L_115B
L_115B:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        jmp     L_1143                          ; EB D7
;   [conditional branch target (if/else)] L_116C
L_116C:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
;   [unconditional branch target] L_117C
L_117C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
GETSCROLLRANGE ENDP


;-----------------------------------------------------------------------
; SETSCROLLRANGE  (offset 0x1188, size 506 bytes)
;-----------------------------------------------------------------------
SETSCROLLRANGE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_11D5                          ; 74 37
        cmp     word ptr [bp + 0xc], 2          ; 83 7E 0C 02
        jne     L_11BF                          ; 75 1B
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x402                       ; B8 02 04
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A BA 0E 00 00 [FIXUP]
        jmp     L_11D5                          ; EB 16
;   [conditional branch target (if/else)] L_11BF
L_11BF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_11E0                          ; E8 0B 00
;   [branch target] L_11D5
L_11D5:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_11E0
L_11E0:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     al, byte ptr [si + 0x32]        ; 8A 44 32
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1203                          ; 74 05
        and     ax, 0x20                        ; 25 20 00
        jmp     L_1209                          ; EB 06
;   [conditional branch target (if/else)] L_1203
L_1203:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        and     ax, 0x10                        ; 25 10 00
;   [unconditional branch target] L_1209
L_1209:
        or      ax, ax                          ; 0B C0
        je      L_1212                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_1214                          ; EB 02
;   [conditional branch target (if/else)] L_1212
L_1212:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_1214
L_1214:
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_1224                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_1224                          ; 75 03
        jmp     L_1330                          ; E9 0C 01
;   [conditional branch target (if/else)] L_1224
L_1224:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_123B                          ; 74 11
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_1237                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_123E                          ; EB 07
;   [conditional branch target (if/else)] L_1237
L_1237:
        sub     ax, ax                          ; 2B C0
        jmp     L_123E                          ; EB 03
;   [conditional branch target (if/else)] L_123B
L_123B:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [unconditional branch target] L_123E
L_123E:
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1255                          ; 74 0E
        and     byte ptr [si + 0x32], 0xdf      ; 80 64 32 DF
        or      ax, ax                          ; 0B C0
        je      L_1263                          ; 74 14
        or      byte ptr [si + 0x32], 0x20      ; 80 4C 32 20
        jmp     L_1263                          ; EB 0E
;   [conditional branch target (if/else)] L_1255
L_1255:
        and     byte ptr [si + 0x32], 0xef      ; 80 64 32 EF
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_1263                          ; 74 04
        or      byte ptr [si + 0x32], 0x10      ; 80 4C 32 10
;   [branch target] L_1263
L_1263:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_12B0                          ; 74 47
        mov     di, word ptr [si + 0xa]         ; 8B 7C 0A
        or      di, di                          ; 0B FF
        jne     L_1278                          ; 75 08
        push    si                              ; 56
        call    far _SEG1_09BE                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
;   [conditional branch target (if/else)] L_1278
L_1278:
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_1281                          ; 74 03
        add     di, 6                           ; 83 C7 06
;   [conditional branch target (if/else)] L_1281
L_1281:
        mov     ax, word ptr [di]               ; 8B 05
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_129A                          ; 74 0E
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [di + 2], ax           ; 89 45 02
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [di + 4], ax           ; 89 45 04
        jmp     L_129F                          ; EB 05
;   [conditional branch target (if/else)] L_129A
L_129A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [di], ax               ; 89 05
;   [unconditional branch target] L_129F
L_129F:
        push    word ptr [di]                   ; FF 35
        push    word ptr [di + 2]               ; FF 75 02
        call    L_0C05                          ; E8 5E F9
        push    ax                              ; 50
        push    word ptr [di + 4]               ; FF 75 04
        call    L_0BEC                          ; E8 3E F9
        mov     word ptr [di], ax               ; 89 05
;   [conditional branch target (if/else)] L_12B0
L_12B0:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_12CC                          ; 74 16
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        jne     L_12C7                          ; 75 0B
        test    byte ptr [si + 0x33], 0x10      ; F6 44 33 10
        je      L_12C7                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_12C9                          ; EB 02
;   [conditional branch target (if/else)] L_12C7
L_12C7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_12C9
L_12C9:
        mov     word ptr [bp + 4], ax           ; 89 46 04
;   [conditional branch target (if/else)] L_12CC
L_12CC:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        xor     ax, word ptr [bp - 0x12]        ; 33 46 EE
        je      L_12FD                          ; 74 29
        mov     al, byte ptr [si + 0x32]        ; 8A 44 32
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        and     ax, 0x10                        ; 25 10 00
        mov     cx, word ptr [bp - 0x14]        ; 8B 4E EC
        and     cx, 0x20                        ; 81 E1 20 00
        or      ax, cx                          ; 0B C1
        jne     L_12F5                          ; 75 0B
        push    word ptr [si + 0xa]             ; FF 74 0A
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 0xa], ax         ; 89 44 0A
;   [conditional branch target (if/else)] L_12F5
L_12F5:
        push    si                              ; 56
        call    far _SEG1_4CCC                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_132D                          ; EB 30
;   [conditional branch target (if/else)] L_12FD
L_12FD:
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        je      L_132D                          ; 74 2A
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_132D                          ; 74 24
        mov     al, byte ptr [si + 0x2e]        ; 8A 44 2E
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        je      L_131C                          ; 74 05
        and     ax, 2                           ; 25 02 00
        jmp     L_1322                          ; EB 06
;   [conditional branch target (if/else)] L_131C
L_131C:
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        and     ax, 4                           ; 25 04 00
;   [unconditional branch target] L_1322
L_1322:
        or      ax, ax                          ; 0B C0
        je      L_132D                          ; 74 07
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_09AC                          ; E8 7F F6
;   [branch target] L_132D
L_132D:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
;   [fall-through exit] L_1330
L_1330:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_1338
L_1338:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [0x62]             ; A1 62 00
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_137C                          ; 75 39
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 0x46], 0         ; 83 7F 46 00
        je      L_1351                          ; 74 05
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
        jmp     L_1354                          ; EB 03
;   [conditional branch target (if/else)] L_1351
L_1351:
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
;   [unconditional branch target] L_1354
L_1354:
        mov     cx, word ptr [0x47e]            ; 8B 0E 7E 04
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        cmp     word ptr [bx + 0x46], 0         ; 83 7F 46 00
        je      L_136B                          ; 74 05
        mov     ax, word ptr [0x5b4]            ; A1 B4 05
        jmp     L_136E                          ; EB 03
;   [conditional branch target (if/else)] L_136B
L_136B:
        mov     ax, word ptr [0x3d0]            ; A1 D0 03
;   [unconditional branch target] L_136E
L_136E:
        mov     cx, word ptr [0x480]            ; 8B 0E 80 04
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        call    far _SEG1_84B8                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_137C
L_137C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
SETSCROLLRANGE ENDP

;-------------------------------------------------------------------------
; sub_1382   offset=0x1382  size=90 instr  segment=seg8.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_0285, L_0303, L_067E, L_0AEB
;-------------------------------------------------------------------------
;   [sub-routine] L_1382
L_1382:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [0x6a]             ; A1 6A 00
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_139A                          ; 74 03
        jmp     L_1473                          ; E9 D9 00
;   [conditional branch target (if/else)] L_139A
L_139A:
        mov     ax, word ptr [0x5de]            ; A1 DE 05
        or      ax, word ptr [0x5e0]            ; 0B 06 E0 05
        jne     L_13A6                          ; 75 03
        jmp     L_1473                          ; E9 CD 00
;   [conditional branch target (if/else)] L_13A6
L_13A6:
        mov     word ptr [0x628], 0             ; C7 06 28 06 00 00
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [OFFSET _entry_430], 0x48f ; 81 3E E0 05 8F 04 [FIXUP]
        jne     L_13E5                          ; 75 2C
        cmp     word ptr [OFFSET _entry_430], 0x489 ; 81 3E DE 05 89 04 [FIXUP]
        jne     L_13E5                          ; 75 24
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_13D5                          ; 74 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x74e]                ; FF 36 4E 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0285                          ; E8 B0 EE
;   [conditional branch target (if/else)] L_13D5
L_13D5:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0303                          ; E8 28 EF
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        push    word ptr [0x3a8]                ; FF 36 A8 03
        jmp     L_1458                          ; EB 73
;   [conditional branch target (if/else)] L_13E5
L_13E5:
        cmp     word ptr [OFFSET _entry_427], 0x363 ; 81 3E E0 05 63 03 [FIXUP]
        jne     L_145B                          ; 75 6E
        cmp     word ptr [OFFSET _entry_427], 0x35d ; 81 3E DE 05 5D 03 [FIXUP]
        jne     L_145B                          ; 75 66
        cmp     word ptr [0x750], 0             ; 83 3E 50 07 00
        je      L_1408                          ; 74 0C
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far _SEG1_55B6                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1408
L_1408:
        call    far _SEG1_329D                  ; 9A 6B 05 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_60D3                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x40e                       ; B8 0E 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_64DE                  ; 9A FA 05 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_143D                          ; 74 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0AEB                          ; E8 AE F6
;   [conditional branch target (if/else)] L_143D
L_143D:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_1451                          ; 74 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x74e]                ; FF 36 4E 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0285                          ; E8 34 EE
;   [conditional branch target (if/else)] L_1451
L_1451:
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
;   [unconditional branch target] L_1458
L_1458:
        call    L_067E                          ; E8 23 F2
;   [conditional branch target (if/else)] L_145B
L_145B:
        cmp     word ptr [0x654], 0             ; 83 3E 54 06 00
        je      L_146B                          ; 74 09
        push    word ptr [0x654]                ; FF 36 54 06
        call    far _SEG1_8586                  ; 9A D4 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_146B
L_146B:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x5e0], ax            ; A3 E0 05
        mov     word ptr [0x5de], ax            ; A3 DE 05
;   [unconditional branch target] L_1473
L_1473:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

USER_TEXT ENDS

        END
