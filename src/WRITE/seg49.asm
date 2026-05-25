; ======================================================================
; WRITE / seg49.asm   (segment 49 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         6
; Total instructions:                  396
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     8 (8 unique)
;   Top:
;        1  MESSAGEBEEP
;        1  RELEASECAPTURE
;        1  SETCAPTURE
;        1  SETFOCUS
;        1  DISPATCHMESSAGE
;        1  GETKEYSTATE
;        1  PEEKMESSAGE
;        1  TRANSLATEMESSAGE
; ======================================================================
; AUTO-GENERATED from original WRITE segment 49
; segment_size=1039 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x7b8], 0             ; 83 3E B8 07 00
        jne     L_001C                          ; 75 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0025                          ; E8 0F 00
        mov     word ptr [0x7b8], 1             ; C7 06 B8 07 01 00
;   [conditional branch target (if/else)] L_001C
L_001C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;-------------------------------------------------------------------------
; sub_0025   offset=0x0025  size=152 instr  segment=seg49.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   MESSAGEBEEP
;   RELEASECAPTURE
;   SETCAPTURE
;   SETFOCUS
;
; Near calls (internal): L_01BC, L_0250, L_02A5, L_0313, L_0390
;-------------------------------------------------------------------------
;   [sub-routine] L_0025
L_0025:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x1030                      ; B8 30 10
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jl      L_0059                          ; 7C 03
        jmp     L_01B1                          ; E9 58 01
;   [conditional branch target (if/else)] L_0059
L_0059:
        mov     ax, word ptr [0x108c]           ; A1 8C 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_0064                          ; 7D 03
        jmp     L_01B1                          ; E9 4D 01
;   [conditional branch target (if/else)] L_0064
L_0064:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02A5                          ; E8 3C 02
        or      ax, ax                          ; 0B C0
        je      L_0090                          ; 74 23
        mov     ax, 0x1be2                      ; B8 E2 1B
        push    ax                              ; 50
        mov     ax, 0x1bd6                      ; B8 D6 1B
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_62                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x2ca], ax            ; A3 CA 02
        mov     word ptr [0x2cc], ax            ; A3 CC 02
        mov     word ptr [0x796], ax            ; A3 96 07
        cmp     word ptr [0x13e4], 3            ; 83 3E E4 13 03
        je      L_00E2                          ; 74 52
;   [conditional branch target (if/else)] L_0090
L_0090:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0250                          ; E8 B5 01
;   [loop start] L_009B
L_009B:
        mov     word ptr [0xa54], ax            ; A3 54 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x326]                ; FF 36 26 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0313                          ; E8 69 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x100a], 0xffff       ; C7 06 0A 10 FF FF
        mov     word ptr [0x100c], 0xffff       ; C7 06 0C 10 FF FF
        mov     word ptr [0x110a], 0            ; C7 06 0A 11 00 00
        mov     word ptr [0x7b6], 1             ; C7 06 B6 07 01 00
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa54]                ; FF 36 54 0A
        push    word ptr [0x2ca]                ; FF 36 CA 02
        call    far _entry_250                  ; 9A 6B 01 00 00 [FIXUP]
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_016F                          ; E9 8D 00
;   [conditional branch target (if/else)] L_00E2
L_00E2:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_009B                          ; EB B4
;   [loop start] L_00E7
L_00E7:
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jle     L_00FA                          ; 7E 0B
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_154                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_010B                          ; EB 11
;   [conditional branch target (if/else)] L_00FA
L_00FA:
        mov     ax, word ptr [0x108c]           ; A1 8C 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_0117                          ; 7D 15
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_010B
L_010B:
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 38 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0117
L_0117:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [0x326]                ; FF 36 26 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0313                          ; E8 F0 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0133                          ; 7D 07
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_013E                          ; EB 0B
;   [conditional branch target (if/else)] L_0133
L_0133:
        mov     ax, word ptr [0x1084]           ; A1 84 10
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_013E                          ; 7E 03
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [branch target] L_013E
L_013E:
        cmp     word ptr [0x2ce], 0             ; 83 3E CE 02 00
        je      L_0151                          ; 74 0C
        mov     word ptr [0x100a], 0xffff       ; C7 06 0A 10 FF FF
        mov     word ptr [0x100c], 0xffff       ; C7 06 0C 10 FF FF
;   [conditional branch target (if/else)] L_0151
L_0151:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa54]                ; FF 36 54 0A
        cmp     word ptr [0x2ce], 0             ; 83 3E CE 02 00
        jne     L_0167                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0169                          ; EB 02
;   [conditional branch target (if/else)] L_0167
L_0167:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0169
L_0169:
        push    ax                              ; 50
        call    far _entry_250                  ; 9A FE 01 00 00 [FIXUP]
;   [unconditional branch target] L_016F
L_016F:
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0390                          ; E8 18 02
        or      ax, ax                          ; 0B C0
        je      L_017F                          ; 74 03
        jmp     L_00E7                          ; E9 68 FF
;   [conditional branch target (if/else)] L_017F
L_017F:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_01BC                          ; E8 2D 00
        push    word ptr [0x10aa]               ; FF 36 AA 10
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        cmp     word ptr [0x1be4], dx           ; 39 16 E4 1B
        jne     L_01B1                          ; 75 0C
        cmp     word ptr [0x1be2], ax           ; 39 06 E2 1B
        jne     L_01B1                          ; 75 06
        mov     word ptr [0x7ac], 1             ; C7 06 AC 07 01 00
;   [branch target] L_01B1
L_01B1:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_01BC   offset=0x01BC  size=57 instr  segment=seg49.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0313
;-------------------------------------------------------------------------
;   [sub-routine] L_01BC
L_01BC:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0x108a]           ; A1 8A 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        jge     L_01D6                          ; 7D 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_01D9                          ; EB 03
;   [conditional branch target (if/else)] L_01D6
L_01D6:
        mov     ax, word ptr [0x108a]           ; A1 8A 10
;   [unconditional branch target] L_01D9
L_01D9:
        push    ax                              ; 50
        push    word ptr [0x326]                ; FF 36 26 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0313                          ; E8 30 01
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xa54]                ; FF 36 54 0A
        cmp     word ptr [0x13e4], 0            ; 83 3E E4 13 00
        jne     L_01FA                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01FC                          ; EB 02
;   [conditional branch target (if/else)] L_01FA
L_01FA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01FC
L_01FC:
        push    ax                              ; 50
        call    far _entry_250                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x13e4]           ; A1 E4 13
        or      ax, ax                          ; 0B C0
        je      L_022B                          ; 74 22
        cmp     ax, 1                           ; 3D 01 00
        je      L_021F                          ; 74 11
        cmp     ax, 2                           ; 3D 02 00
        je      L_0226                          ; 74 13
        cmp     ax, 3                           ; 3D 03 00
        jne     L_022B                          ; 75 13
        call    far _entry_325                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_022B                          ; EB 0C
;   [conditional branch target (if/else)] L_021F
L_021F:
        call    far _entry_324                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_022B                          ; EB 05
;   [conditional branch target (if/else)] L_0226
L_0226:
        call    far _entry_323                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_022B
L_022B:
        mov     word ptr [0x31a], 0             ; C7 06 1A 03 00 00
        mov     ax, word ptr [0x1be6]           ; A1 E6 1B
        mov     dx, word ptr [0x1be8]           ; 8B 16 E8 1B
        mov     word ptr [0x2c6], ax            ; A3 C6 02
        mov     word ptr [0x2c8], dx            ; 89 16 C8 02
        mov     word ptr [0x7b6], 0             ; C7 06 B6 07 00 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0250   offset=0x0250  size=36 instr  segment=seg49.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0250
L_0250:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x1112]           ; A1 12 11
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jle     L_027F                          ; 7E 1D
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        je      L_026E                          ; 74 05
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_029A                          ; EB 2C
;   [conditional branch target (if/else)] L_026E
L_026E:
        cmp     word ptr [0x796], 0             ; 83 3E 96 07 00
        je      L_027A                          ; 74 05
        mov     ax, 2                           ; B8 02 00
        jmp     L_029A                          ; EB 20
;   [conditional branch target (if/else)] L_027A
L_027A:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_029A                          ; EB 1B
;   [conditional branch target (if/else)] L_027F
L_027F:
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        je      L_028B                          ; 74 05
        mov     ax, 6                           ; B8 06 00
        jmp     L_029A                          ; EB 0F
;   [conditional branch target (if/else)] L_028B
L_028B:
        cmp     word ptr [0x796], 0             ; 83 3E 96 07 00
        je      L_0297                          ; 74 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_029A                          ; EB 03
;   [conditional branch target (if/else)] L_0297
L_0297:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
;   [unconditional branch target] L_029A
L_029A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_02A5   offset=0x02A5  size=39 instr  segment=seg49.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_02A5
L_02A5:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x13e4], 0            ; C7 06 E4 13 00 00
        cmp     word ptr [0x2ce], 0             ; 83 3E CE 02 00
        je      L_02FC                          ; 74 40
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        je      L_02D2                          ; 74 0F
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        jne     L_02D2                          ; 75 08
        mov     word ptr [0x13e4], 2            ; C7 06 E4 13 02 00
        jmp     L_02FC                          ; EB 2A
;   [conditional branch target (if/else)] L_02D2
L_02D2:
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        je      L_02E8                          ; 74 0F
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        jne     L_02E8                          ; 75 08
        mov     word ptr [0x13e4], 3            ; C7 06 E4 13 03 00
        jmp     L_02FC                          ; EB 14
;   [conditional branch target (if/else)] L_02E8
L_02E8:
        cmp     word ptr [0x2cc], 0             ; 83 3E CC 02 00
        jne     L_02FC                          ; 75 0D
        cmp     word ptr [0x2ca], 0             ; 83 3E CA 02 00
        jne     L_02FC                          ; 75 06
        mov     word ptr [0x13e4], 1            ; C7 06 E4 13 01 00
;   [branch target] L_02FC
L_02FC:
        cmp     word ptr [0x13e4], 0            ; 83 3E E4 13 00
        je      L_0308                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_030A                          ; EB 02
;   [conditional branch target (if/else)] L_0308
L_0308:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_030A
L_030A:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;-------------------------------------------------------------------------
; sub_0313   offset=0x0313  size=53 instr  segment=seg49.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0313
L_0313:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_033C                          ; 74 14
        mov     ax, bx                          ; 8B C3
        sub     ax, 0x107e                      ; 2D 7E 10
        cdq                                     ; 99
        mov     cx, 0x38                        ; B9 38 00
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_033C
L_033C:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bx + 0x36]        ; 8B 5F 36
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_037C                          ; EB 1D
;   [loop start] L_035F
L_035F:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jle     L_0375                          ; 7E 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0385                          ; EB 10
;   [conditional branch target (if/else)] L_0375
L_0375:
        inc     word ptr [bp - 8]               ; FF 46 F8
        add     word ptr [bp - 4], 0x10         ; 83 46 FC 10
;   [unconditional branch target] L_037C
L_037C:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_035F                          ; 7C DB
        dec     ax                              ; 48
;   [unconditional branch target] L_0385
L_0385:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0390   offset=0x0390  size=59 instr  segment=seg49.asm
;
; Classification (pass8): unclear  (score C=3, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   GETKEYSTATE
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_0390
L_0390:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03F1                          ; 74 3D
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_03C1                          ; 72 05
        cmp     ax, 0x202                       ; 3D 02 02
        jbe     L_03D7                          ; 76 16
;   [conditional branch target (if/else)] L_03C1
L_03C1:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03FE                          ; EB 27
;   [conditional branch target (if/else)] L_03D7
L_03D7:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        mov     word ptr [bx], ax               ; 89 07
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bx + 2], ax           ; 89 47 02
        cmp     word ptr [bp - 0x12], 0x202     ; 81 7E EE 02 02
        je      L_0403                          ; 74 14
        jmp     L_03FE                          ; EB 0D
;   [conditional branch target (if/else)] L_03F1
L_03F1:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0403                          ; 7D 05
;   [unconditional branch target] L_03FE
L_03FE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0405                          ; EB 02
;   [conditional branch target (if/else)] L_0403
L_0403:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0405
L_0405:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      002h                            ; 02

WRITE_TEXT ENDS

        END
