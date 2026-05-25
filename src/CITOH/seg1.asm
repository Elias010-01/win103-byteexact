; ======================================================================
; CITOH / seg1.asm   (segment 1 of CITOH)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         1
; Total instructions:                  291
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     3 (3 unique)
;   Top:
;        1  STARTSPOOLPAGE
;        1  SETRECT
;        1  SETRECTEMPTY
; ======================================================================
; AUTO-GENERATED from original CITOH segment 1
; segment_size=4890 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CITOH_TEXT SEGMENT BYTE PUBLIC 'CODE'

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=291 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   STARTSPOOLPAGE
;   SETRECT
;   SETRECTEMPTY
;
; Near calls (internal): L_048D, L_0879, L_09D7, L_0B1F
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        lds     bx, ptr [bp + 8]                ; C5 5E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 4]           ; 8B 56 04
        xor     ax, ax                          ; 33 C0
        sub     word ptr [bx], cx               ; 29 0F
        jns     L_0015                          ; 79 02
        mov     word ptr [bx], ax               ; 89 07
;   [conditional branch target (if/else)] L_0015
L_0015:
        sub     word ptr [bx + 2], dx           ; 29 57 02
        jns     L_001D                          ; 79 03
        mov     word ptr [bx + 2], ax           ; 89 47 02
;   [conditional branch target (if/else)] L_001D
L_001D:
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
        sub     ax, word ptr [bx]               ; 2B 07
        jle     L_0032                          ; 7E 09
        sub     word ptr [bx + 6], dx           ; 29 57 06
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
;   [error/early exit] L_0032
L_0032:
        pop     ds                              ; 1F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_0039
L_0039:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        push    ds                              ; 1E
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        les     di, ptr [bp + 0xc]              ; C4 7E 0C
        lds     si, ptr [bp + 8]                ; C5 76 08
        cld                                     ; FC
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_007C                          ; 76 03
        jmp     L_034C                          ; E9 D0 02
;   [conditional branch target (if/else)] L_007C
L_007C:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x465]        ; 2E FF A7 65 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0091                          ; 74 03
        jmp     L_02DC                          ; E9 4B 02
;   [conditional branch target (if/else)] L_0091
L_0091:
        mov     ax, word ptr es:[bx + 0x28]     ; 26 8B 47 28
        inc     word ptr es:[bx + 0x28]         ; 26 FF 47 28
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_00A2                          ; 74 03
        jmp     L_012A                          ; E9 88 00
;   [conditional branch target (if/else)] L_00A2
L_00A2:
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.STARTSPOOLPAGE          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
        cmp     ax, 1                           ; 3D 01 00
        je      L_00BA                          ; 74 03
        jmp     L_02DC                          ; E9 22 02
;   [conditional branch target (if/else)] L_00BA
L_00BA:
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe0                        ; B8 E0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 0D 09
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 8      ; 26 F6 47 26 08
        je      L_00E4                          ; 74 10
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xe9                        ; B8 E9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 F3 08
;   [conditional branch target (if/else)] L_00E4
L_00E4:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x3e], 0      ; 26 C7 47 3E 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        push    word ptr [bx + 0xc]             ; FF 77 0C
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B1F                          ; E8 24 0A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        sub     ax, ax                          ; 2B C0
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xec                        ; B8 EC 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 BB 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 8      ; 26 C7 47 38 08 00
        push    es                              ; 06
        push    bx                              ; 53
        call    L_048D                          ; E8 63 03
;   [unconditional branch target] L_012A
L_012A:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_017A                          ; 74 46
        or      si, si                          ; 0B F6
        jne     L_0152                          ; 75 1A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        mov     ax, 0x2d0                       ; B8 D0 02
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A D6 01 00 00 [FIXUP]
        jmp     L_0407                          ; E9 B5 02
;   [conditional branch target (if/else)] L_0152
L_0152:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x38], 8      ; 26 83 7F 38 08
        je      L_0175                          ; 74 19
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0xef                        ; B8 EF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 6B 08
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x38], 8      ; 26 C7 47 38 08 00
;   [conditional branch target (if/else)] L_0175
L_0175:
        mov     si, 0xa                         ; BE 0A 00
        jmp     L_0183                          ; EB 09
;   [conditional branch target (if/else)] L_017A
L_017A:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [unconditional branch target] L_0183
L_0183:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_01AF                          ; 75 22
        mov     ax, 0x48                        ; B8 48 00
        imul    si                              ; F7 EE
        mov     word ptr es:[bx + 0x2a], ax     ; 26 89 47 2A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x48                        ; 05 48 00
        push    ax                              ; 50
        mov     ax, 0x300                       ; B8 00 03
        jmp     L_01D4                          ; EB 25
;   [conditional branch target (if/else)] L_01AF
L_01AF:
        mov     ax, 0x48                        ; B8 48 00
        imul    si                              ; F7 EE
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2c], ax     ; 26 89 47 2C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, 0x48                        ; 05 48 00
;   [unconditional branch target] L_01D4
L_01D4:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        mov     ax, si                          ; 8B C6
        or      ax, ax                          ; 0B C0
        je      L_01FF                          ; 74 1F
        cmp     ax, 0xa                         ; 3D 0A 00
        je      L_022C                          ; 74 47
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 4      ; 26 F6 47 26 04
        jne     L_01F2                          ; 75 03
        jmp     L_0310                          ; E9 1E 01
;   [conditional branch target (if/else)] L_01F2
L_01F2:
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0879                          ; E8 82 06
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        and     byte ptr es:[bx + 0x26], 0xfb   ; 26 80 67 26 FB
;   [conditional branch target (if/else)] L_01FF
L_01FF:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
;   [loop start] L_0213
L_0213:
        cmp     word ptr [bp - 0xc], 0x1b00     ; 81 7E F4 00 1B
        jb      L_021D                          ; 72 03
        jmp     L_0327                          ; E9 0A 01
;   [conditional branch target (if/else)] L_021D
L_021D:
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        mov     byte ptr es:[bx], 0xff          ; 26 C6 07 FF
        inc     word ptr [bp - 0xc]             ; FF 46 F4
        jmp     L_0213                          ; EB E7
;   [conditional branch target (if/else)] L_022C
L_022C:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A E3 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_0246                          ; 75 05
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0879                          ; E8 33 06
;   [conditional branch target (if/else)] L_0246
L_0246:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x28], 0      ; 26 C7 47 28 00 00
        push    es                              ; 06
        push    bx                              ; 53
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, 0x318                       ; B8 18 03
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B1F                          ; E8 BE 08
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        mov     bx, word ptr [bp + 0x10]        ; 8B 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        sub     ax, word ptr [bx + 0xc]         ; 2B 47 0C
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B1F                          ; E8 9E 08
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xf2                        ; B8 F2 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 42 07
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        mov     ax, 0xf5                        ; B8 F5 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 2E 07
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_048D                          ; E8 DB 01
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_02CC                          ; 75 10
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.ENDSPOOLPAGE            ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
;   [loop start (also forward branch)] L_02CC
L_02CC:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_0306                          ; 74 2A
;   [unconditional branch target] L_02DC
L_02DC:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETRECTEMPTY           ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x2e], 0      ; 26 83 7F 2E 00
        je      L_0306                          ; 74 15
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A 7D 03 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], 0      ; 26 C7 47 2E 00 00
;   [conditional branch target (if/else)] L_0306
L_0306:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x32]     ; 26 8B 47 32
        jmp     L_0481                          ; E9 71 01
;   [unconditional branch target] L_0310
L_0310:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_02CC                          ; 74 B2
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0A54                          ; E8 2D 07
;   [unconditional branch target] L_0327
L_0327:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    L_048D                          ; E8 5D 01
        jmp     L_02CC                          ; EB 9A
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x24], ax     ; 26 89 47 24
        jmp     L_0407                          ; E9 C5 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_0351                          ; 75 05
;   [loop start (also forward branch)] L_034C
L_034C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0481                          ; E9 30 01
;   [conditional branch target (if/else)] L_0351
L_0351:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_035F                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0361                          ; EB 02
;   [conditional branch target (if/else)] L_035F
L_035F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0361
L_0361:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        or      word ptr es:[bx + 0x26], ax     ; 26 09 47 26
        jmp     L_0407                          ; E9 9C 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03D3                          ; 75 5E
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far GDI.DELETEJOB               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03D3                          ; EB 50
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_03B6                          ; 74 29
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr es:[bx + 0x24]         ; 26 FF 77 24
        call    far GDI.OPENJOB                 ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x2e], ax     ; 26 89 47 2E
        or      ax, ax                          ; 0B C0
        jle     L_03B6                          ; 7E 06
        mov     word ptr es:[bx + 0x32], 1      ; 26 C7 47 32 01 00
;   [conditional branch target (if/else)] L_03B6
L_03B6:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     ax, word ptr es:[bx + 0x2e]     ; 26 8B 47 2E
        jmp     L_0481                          ; E9 C1 00
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_03D3                          ; 75 09
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        call    far GDI.CLOSEJOB                ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_03D3
L_03D3:
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     word ptr es:[bx + 0x32], 0      ; 26 C7 47 32 00 00
        jmp     L_0407                          ; EB 29
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        sub     ax, 1                           ; 2D 01 00
        cmp     ax, 0xc                         ; 3D 0C 00
        jbe     L_03F2                          ; 76 03
        jmp     L_034C                          ; E9 5A FF
;   [conditional branch target (if/else)] L_03F2
L_03F2:
        add     ax, ax                          ; 03 C0
        xchg    bx, ax                          ; 93
        jmp     word ptr cs:[bx + 0x40c]        ; 2E FF A7 0C 04
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        je      L_0407                          ; 74 03
        jmp     L_034C                          ; E9 45 FF
;   [loop start (also forward branch)] L_0407
L_0407:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0481                          ; EB 75
        pop     es                              ; 07
        add     al, 7                           ; 04 07
        add     al, 7                           ; 04 07
        add     al, 0x4c                        ; 04 4C
        add     cx, word ptr [si + 3]           ; 03 4C 03
        dec     sp                              ; 4C
        add     di, dx                          ; 03 FA
        add     ax, word ptr [bx]               ; 03 07
        add     al, 0x4c                        ; 04 4C
        add     ax, word ptr [bx]               ; 03 07
        add     al, 7                           ; 04 07
        add     al, 7                           ; 04 07
        add     al, 7                           ; 04 07
        add     al, 0xc4                        ; 04 C4
        pop     si                              ; 5E
        adc     byte ptr [0x5f8b], ah           ; 10 26 8B 5F
        and     cl, byte ptr [bp + di + 0x247]  ; 22 8B 47 02
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        jmp     L_045C                          ; EB 1A
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        mov     bx, word ptr es:[bx + 0x22]     ; 26 8B 5F 22
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
;   [unconditional branch target] L_045C
L_045C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_0407                          ; EB A2
        push    es                              ; 06
        add     bp, word ptr [bp + di + 3]      ; 03 6B 03
        test    byte ptr [bx + si], al          ; 84 00
        dec     sp                              ; 4C
        add     cx, word ptr [si + 3]           ; 03 4C 03
        dec     sp                              ; 4C
        add     ax, word ptr [bp + si + 3]      ; 03 42 03
        fiadd   word ptr [bp + di]              ; DE 03
        xor     al, byte ptr [bp + di]          ; 32 03
        add     word ptr [bp + di], -0x40       ; 83 03 C0
        add     sp, word ptr [0x4204]           ; 03 26 04 42
        add     al, 0xeb                        ; 04 EB
        xchg    byte ptr [bp - 0x7d], bl        ; 86 5E 83
        in      ax, dx                          ; ED
        add     cl, byte ptr [bp + di + 0x1fe5] ; 02 8B E5 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
;   [sub-routine] L_048D
L_048D:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x30], 0      ; 26 83 7F 30 00
        je      L_04A4                          ; 74 07
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        je      L_04A8                          ; 74 04
;   [conditional branch target (if/else)] L_04A4
L_04A4:
        sub     ax, ax                          ; 2B C0
        jmp     L_04DD                          ; EB 35
;   [conditional branch target (if/else)] L_04A8
L_04A8:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x2e]         ; 26 FF 77 2E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr es:[bx + 0x30]         ; 26 FF 77 30
        call    far GDI.WRITESPOOL              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     ax, word ptr es:[bx + 0x30]     ; 26 3B 47 30
        je      L_04D1                          ; 74 04
        mov     word ptr es:[bx + 0x32], ax     ; 26 89 47 32
;   [conditional branch target (if/else)] L_04D1
L_04D1:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
;   [fall-through exit] L_04DD
L_04DD:
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
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 6], 0xa          ; C7 46 FA 0A 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ax, word ptr [bp + 8]           ; 0B 46 08
        je      L_0526                          ; 74 29
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg lpsz1 (low/offset)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz2 (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_051C                          ; 74 0A
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp + 8], ax           ; 89 46 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
        jmp     L_0526                          ; EB 0A
;   [conditional branch target (if/else)] L_051C
L_051C:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x20]     ; 26 8B 47 20
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [branch target] L_0526
L_0526:
        test    byte ptr [bp + 0x12], 1         ; F6 46 12 01
        je      L_0569                          ; 74 3D
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_053D                          ; 75 05
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_0540                          ; EB 03
;   [conditional branch target (if/else)] L_053D
L_053D:
        mov     ax, 0x78                        ; B8 78 00
;   [unconditional branch target] L_0540
L_0540:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x68                        ; B8 68 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 EC FA
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        je      L_0559                          ; 74 05
        mov     ax, 0x48                        ; B8 48 00
        jmp     L_055C                          ; EB 03
;   [conditional branch target (if/else)] L_0559
L_0559:
        mov     ax, 0x2be8                      ; B8 E8 2B
;   [unconditional branch target] L_055C
L_055C:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x1a], ax     ; 26 89 47 1A
        mov     ax, 0x68                        ; B8 68 00
        jmp     L_060B                          ; E9 A2 00
;   [conditional branch target (if/else)] L_0569
L_0569:
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        cmp     word ptr [bp - 6], 0xb          ; 83 7E FA 0B
        jne     L_057A                          ; 75 05
        mov     ax, 0xf8                        ; B8 F8 00
        jmp     L_057D                          ; EB 03
;   [conditional branch target (if/else)] L_057A
L_057A:
        mov     ax, 0x140                       ; B8 40 01
;   [unconditional branch target] L_057D
L_057D:
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x48                        ; B8 48 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 AF FA
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_064D                          ; E8 B4 00
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x2e], 0xffff ; 26 C7 47 2E FF FF
        mov     word ptr es:[bx + 0x38], 8      ; 26 C7 47 38 08 00
        test    word ptr [bp + 0x12], 0x8000    ; F7 46 12 00 80
        jne     L_0601                          ; 75 52
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x48                        ; 05 48 00
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_05EC                          ; 75 1F
        push    es                              ; 06
        push    bx                              ; 53
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05FD                          ; 74 25
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.CREATEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        mov     word ptr es:[bx + 0x34], ax     ; 26 89 47 34
        or      ax, ax                          ; 0B C0
        je      L_05F1                          ; 74 05
;   [loop start (also forward branch)] L_05EC
L_05EC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_060B                          ; EB 1A
;   [conditional branch target (if/else)] L_05F1
L_05F1:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 3B 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05FD
L_05FD:
        sub     ax, ax                          ; 2B C0
        jmp     L_060B                          ; EB 0A
;   [conditional branch target (if/else)] L_0601
L_0601:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        or      byte ptr es:[bx + 0x26], 0x20   ; 26 80 4F 26 20
        jmp     L_05EC                          ; EB E1
;   [unconditional branch target] L_060B
L_060B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_063F                          ; 75 15
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.DELETEPQ                ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_063F
L_063F:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_064D
L_064D:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        jne     L_066C                          ; 75 14
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06BB                          ; E8 5E 00
        or      ax, ax                          ; 0B C0
        jne     L_06B5                          ; 75 54
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], 0x384  ; 26 C7 47 22 84 03
        jmp     L_06B5                          ; EB 49
;   [conditional branch target (if/else)] L_066C
L_066C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        or      byte ptr es:[bx + 0x26], 8      ; 26 80 4F 26 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_068E                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x26], 0x10   ; 26 83 7F 26 10
        jne     L_068E                          ; 75 08
        les     bx, ptr [bp + 8]                ; C4 5E 08
        and     byte ptr es:[bx + 0x26], 0xf7   ; 26 80 67 26 F7
;   [conditional branch target (if/else)] L_068E
L_068E:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 0x20], 0xb    ; 26 83 7F 20 0B
        jne     L_069D                          ; 75 05
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_069F                          ; EB 02
;   [conditional branch target (if/else)] L_069D
L_069D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_069F
L_069F:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        add     ax, word ptr es:[bx + 0x24]     ; 26 03 47 24
        ; constant WM_GETTEXTLENGTH
        mov     cx, 0xe                         ; B9 0E 00
        imul    cx                              ; F7 E9
        add     ax, 0x25e                       ; 05 5E 02
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x22], ax     ; 26 89 47 22
;   [error/early exit] L_06B5
L_06B5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;   [sub-routine] L_06BB
L_06BB:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x52                        ; 83 EC 52
        mov     ax, 0x192                       ; B8 92 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x189                       ; B8 89 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x188                       ; B8 88 01
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_06FA                          ; 74 11
        lea     ax, [bp - 0x52]                 ; 8D 46 AE
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0706                          ; E8 15 00
        cmp     ax, 1                           ; 3D 01 00
        je      L_06FA                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_06FD                          ; EB 03
;   [conditional branch target (if/else)] L_06FA
L_06FA:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_06FD
L_06FD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;   [sub-routine] L_0706
L_0706:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_0720                          ; EB 09
;   [loop start] L_0717
L_0717:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 2]               ; F7 6E FE
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [unconditional branch target] L_0720
L_0720:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     si, ptr [bp + 4]                ; C4 76 04
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x30                        ; 2D 30 00
        add     word ptr [bp - 2], ax           ; 01 46 FE
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     byte ptr es:[bx + si], 0        ; 26 80 38 00
        jne     L_0717                          ; 75 DA
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_0747
L_0747:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [bp + 8]           ; 03 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
;   [loop start] L_075D
L_075D:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0772                          ; 74 0F
        dec     word ptr [bp - 6]               ; FF 4E FA
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_07A3                          ; 74 31
;   [conditional branch target (if/else)] L_0772
L_0772:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_077B                          ; 75 03
        jmp     L_0850                          ; E9 D5 00
;   [conditional branch target (if/else)] L_077B
L_077B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_09AD                          ; E8 26 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B1F                          ; E8 8A 03
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_07AB                          ; EB 08
;   [conditional branch target (if/else)] L_07A3
L_07A3:
        dec     word ptr [bp + 6]               ; FF 4E 06
        jmp     L_075D                          ; EB B5
;   [loop start] L_07A8
L_07A8:
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_07AB
L_07AB:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_07A8                          ; 74 F4
        mov     si, bx                          ; 8B F3
        sub     si, word ptr [bp + 8]           ; 2B 76 08
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C10                          ; E8 48 04
        sub     si, ax                          ; 2B F0
        sub     word ptr [bp + 6], si           ; 29 76 06
        add     word ptr [bp + 8], si           ; 01 76 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cdq                                     ; 99
        mov     cx, 0x3e8                       ; B9 E8 03
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x408], al            ; A2 08 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x409], al            ; A2 09 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x40a], al            ; A2 0A 04
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr [0x40b], dl            ; 88 16 0B 04
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x198                       ; B8 98 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 AF 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0x408                       ; B8 08 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 9B 01
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 87 01
;   [unconditional branch target] L_0850
L_0850:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        test    byte ptr es:[bx + 0x26], 0x10   ; 26 F6 47 26 10
        je      L_0872                          ; 74 18
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 8                           ; 05 08 00
        push    ax                              ; 50
        call    L_0A54                          ; E8 EE 01
        or      ax, ax                          ; 0B C0
        jne     L_0872                          ; 75 08
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        and     byte ptr es:[bx + 0x26], 0xef   ; 26 80 67 26 EF
;   [error/early exit] L_0872
L_0872:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
;   [sub-routine] L_0879
L_0879:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0x28e8                      ; 05 E8 28
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        je      L_089B                          ; 74 03
        jmp     L_0925                          ; E9 8A 00
;   [conditional branch target (if/else)] L_089B
L_089B:
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     ax, 0x48                        ; 2D 48 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
;   [loop start] L_08AA
L_08AA:
        cmp     word ptr [bp - 0x12], 9         ; 83 7E EE 09
        jl      L_08B3                          ; 7C 03
        jmp     L_0986                          ; E9 D3 00
;   [conditional branch target (if/else)] L_08B3
L_08B3:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        add     ah, 3                           ; 80 C4 03
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, word ptr [bp - 0x12]        ; 03 46 EE
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 2], 0x300        ; C7 46 FE 00 03
;   [loop start] L_08D9
L_08D9:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        mov     byte ptr es:[bx], al            ; 26 88 07
        dec     word ptr [bp - 2]               ; FF 4E FE
        add     word ptr [bp - 6], 9            ; 83 46 FA 09
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_08D9                          ; 75 E4
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        call    L_0D3E                          ; E8 3C 04
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0747                          ; E8 27 FE
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        jmp     L_08AA                          ; EB 85
;   [unconditional branch target] L_0925
L_0925:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     ax, 0x48                        ; 2D 48 00
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x12], 0         ; C7 46 EE 00 00
;   [loop start] L_0946
L_0946:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xffa0                      ; B8 A0 FF
        push    ax                              ; 50
        call    far GDI.DMTRANSPOSE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0x300                       ; B8 00 03
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        push    ax                              ; 50
        call    L_0747                          ; E8 CE FD
        add     byte ptr [bp - 5], 3            ; 80 46 FB 03
        inc     word ptr [bp - 0x12]            ; FF 46 EE
        cmp     word ptr [bp - 0x12], 9         ; 83 7E EE 09
        jl      L_0946                          ; 7C C0
;   [unconditional branch target] L_0986
L_0986:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A 9D 09 00 00 [FIXUP]
        inc     ax                              ; 40
        je      L_09A7                          ; 74 12
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        call    far GDI.MINPQ                   ; 9A 77 0A 00 00 [FIXUP]
        push    ax                              ; 50
        call    far KERNEL.FATALEXIT            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_09A7
L_09A7:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
;   [sub-routine] L_09AD
L_09AD:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     byte ptr [bp - 2], 0x1a         ; C6 46 FE 1A
        jmp     L_09C7                          ; EB 0E
;   [loop start] L_09B9
L_09B9:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        mov     byte ptr es:[bx], al            ; 26 88 07
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_09C7
L_09C7:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        or      ax, ax                          ; 0B C0
        jne     L_09B9                          ; 75 E8
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_09D7
L_09D7:
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
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        cmp     word ptr es:[bx + 0x32], 1      ; 26 83 7F 32 01
        jne     L_0A48                          ; 75 59
        mov     si, word ptr es:[bx + 0x30]     ; 26 8B 77 30
        mov     ax, si                          ; 8B C6
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     si, ax                          ; 03 F0
        cmp     si, 0xd80                       ; 81 FE 80 0D
        jl      L_0A2D                          ; 7C 20
        push    dx                              ; 52
        push    bx                              ; 53
        call    L_048D                          ; E8 7B FA
        or      ax, ax                          ; 0B C0
        jge     L_0A1B                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0A48                          ; EB 2D
;   [conditional branch target (if/else)] L_0A1B
L_0A1B:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        add     ax, 0x68                        ; 05 68 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     si, word ptr [bp + 6]           ; 8B 76 06
;   [conditional branch target (if/else)] L_0A2D
L_0A2D:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     word ptr es:[bx + 0x30], si     ; 26 89 77 30
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 F1 F5
;   [branch target] L_0A48
L_0A48:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_0A54
L_0A54:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     ax, word ptr es:[bx + 0x34]     ; 26 8B 47 34
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [loop start] L_0A73
L_0A73:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.MINPQ                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     ax                              ; 40
        jne     L_0A9A                          ; 75 19
;   [loop start] L_0A81
L_0A81:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], -1         ; 83 7E F4 FF
        je      L_0A96                          ; 74 03
        jmp     L_0B16                          ; E9 80 00
;   [conditional branch target (if/else)] L_0A96
L_0A96:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B19                          ; EB 7F
;   [conditional branch target (if/else)] L_0A9A
L_0A9A:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jge     L_0A81                          ; 7D CD
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far GDI.EXTRACTPQ               ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_0A81                          ; 75 C0
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx]                ; 26 FF 37
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0B1F                          ; E8 4D 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 2]            ; 26 FF 77 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C10                          ; E8 28 01
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 D2 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        les     bx, ptr [bp + 6]                ; C4 5E 06
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        jmp     L_0A73                          ; E9 5D FF
;   [unconditional branch target] L_0B16
L_0B16:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_0B19
L_0B19:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;   [sub-routine] L_0B1F
L_0B1F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     ax, word ptr es:[bx + 0x3e]     ; 26 2B 47 3E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_0B44                          ; 75 06
;   [loop start] L_0B3E
L_0B3E:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C04                          ; E9 C0 00
;   [conditional branch target (if/else)] L_0B44
L_0B44:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0B54                          ; 74 06
        cmp     word ptr [bp - 4], 9            ; 83 7E FC 09
        jl      L_0B3E                          ; 7C EA
;   [conditional branch target (if/else)] L_0B54
L_0B54:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x3a]     ; 26 8B 47 3A
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1a1                       ; B8 A1 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 69 FE
        jmp     L_0BE4                          ; EB 74
;   [loop start] L_0B70
L_0B70:
        cmp     word ptr [bp - 4], 0x31         ; 83 7E FC 31
        jl      L_0B7B                          ; 7C 05
        mov     ax, 0x31                        ; B8 31 00
        jmp     L_0B7E                          ; EB 03
;   [conditional branch target (if/else)] L_0B7B
L_0B7B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
;   [unconditional branch target] L_0B7E
L_0B7E:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        je      L_0BCC                          ; 74 47
        mov     word ptr [bp - 6], si           ; 89 76 FA
        shl     ax, 1                           ; D1 E0
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x19e], al            ; A2 9E 01
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr [0x19f], dl            ; 88 16 9F 01
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x19c                       ; B8 9C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 16 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1a3                       ; B8 A3 01
        jmp     L_0BD5                          ; EB 09
;   [conditional branch target (if/else)] L_0BCC
L_0BCC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1a5                       ; B8 A5 01
;   [unconditional branch target] L_0BD5
L_0BD5:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 F7 FD
        sub     word ptr [bp - 4], 0x31         ; 83 6E FC 31
;   [unconditional branch target] L_0BE4
L_0BE4:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jg      L_0B70                          ; 7F 86
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0x3a], ax     ; 26 89 47 3A
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx + 0x3e], ax     ; 26 89 47 3E
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        jmp     L_0B3E                          ; E9 3A FF
;   [unconditional branch target] L_0C04
L_0C04:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [sub-routine] L_0C10
L_0C10:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jl      L_0C2C                          ; 7C 07
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        jle     L_0C31                          ; 7E 05
;   [loop start (also forward branch)] L_0C2C
L_0C2C:
        sub     ax, ax                          ; 2B C0
        jmp     L_0D31                          ; E9 00 01
;   [conditional branch target (if/else)] L_0C31
L_0C31:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr es:[bx + 0x3c], ax     ; 26 39 47 3C
        jle     L_0C62                          ; 7E 25
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        jne     L_0C2C                          ; 75 E8
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 0x1a7                       ; B8 A7 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 83 FD
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx + 0x3c], 0      ; 26 C7 47 3C 00 00
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        jmp     L_0C6C                          ; EB 0A
;   [conditional branch target (if/else)] L_0C62
L_0C62:
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        sub     di, word ptr es:[bx + 0x3c]     ; 26 2B 7F 3C
;   [unconditional branch target] L_0C6C
L_0C6C:
        or      di, di                          ; 0B FF
        je      L_0C2C                          ; 74 BC
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     si, word ptr es:[bx + 0x38]     ; 26 8B 77 38
        jmp     L_0C8F                          ; EB 16
;   [loop start] L_0C79
L_0C79:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1a9                       ; B8 A9 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 4A FD
        sub     di, si                          ; 2B FE
;   [unconditional branch target] L_0C8F
L_0C8F:
        cmp     di, si                          ; 3B FE
        jge     L_0C79                          ; 7D E6
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0C9C                          ; 75 03
        jmp     L_0D23                          ; E9 87 00
;   [conditional branch target (if/else)] L_0C9C
L_0C9C:
        or      di, di                          ; 0B FF
        jne     L_0CA3                          ; 75 03
        jmp     L_0D23                          ; E9 80 00
;   [conditional branch target (if/else)] L_0CA3
L_0CA3:
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        mov     cx, 0x3e8                       ; B9 E8 03
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x408], al            ; A2 08 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x409], al            ; A2 09 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        mov     ax, dx                          ; 8B C2
        cdq                                     ; 99
        mov     cx, 0xa                         ; B9 0A 00
        idiv    cx                              ; F7 F9
        add     al, 0x30                        ; 04 30
        mov     byte ptr [0x40a], al            ; A2 0A 04
        mov     ax, di                          ; 8B C7
        cdq                                     ; 99
        idiv    cx                              ; F7 F9
        add     dl, 0x30                        ; 80 C2 30
        mov     byte ptr [0x40b], dl            ; 88 16 0B 04
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1ab                       ; B8 AB 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 E3 FC
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x408                       ; B8 08 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 CF FC
        jmp     L_0D1F                          ; EB 15
;   [loop start] L_0D0A
L_0D0A:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1ae                       ; B8 AE 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_09D7                          ; E8 B9 FC
        dec     di                              ; 4F
;   [unconditional branch target] L_0D1F
L_0D1F:
        or      di, di                          ; 0B FF
        jne     L_0D0A                          ; 75 E7
;   [unconditional branch target] L_0D23
L_0D23:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        sub     ax, di                          ; 2B C7
        mov     word ptr es:[bx + 0x3c], ax     ; 26 89 47 3C
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0D31
L_0D31:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;   [sub-routine] L_0D3E
L_0D3E:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
;   [loop start] L_0D55
L_0D55:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0D6A                          ; 74 0F
        dec     word ptr [bp - 0xa]             ; FF 4E F6
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        not     al                              ; F6 D0
        or      al, al                          ; 0A C0
        je      L_0DA9                          ; 74 3F
;   [conditional branch target (if/else)] L_0D6A
L_0D6A:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_0D6F
L_0D6F:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0DBF                          ; 7D 48
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        sub     si, si                          ; 2B F6
;   [loop start] L_0D7E
L_0D7E:
        cmp     si, 8                           ; 83 FE 08
        jge     L_0DAE                          ; 7D 2B
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        sub     ah, ah                          ; 2A E4
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        mov     cx, si                          ; 8B CE
        shl     dx, cl                          ; D3 E2
        test    dx, ax                          ; 85 C2
        je      L_0DA6                          ; 74 0D
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        sub     cl, 7                           ; 80 E9 07
        neg     cl                              ; F6 D9
        shl     ax, cl                          ; D3 E0
        or      word ptr [bp - 2], ax           ; 09 46 FE
;   [conditional branch target (if/else)] L_0DA6
L_0DA6:
        inc     si                              ; 46
        jmp     L_0D7E                          ; EB D5
;   [conditional branch target (if/else)] L_0DA9
L_0DA9:
        dec     word ptr [bp + 4]               ; FF 4E 04
        jmp     L_0D55                          ; EB A7
;   [conditional branch target (if/else)] L_0DAE
L_0DAE:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        les     di, ptr [bp + 6]                ; C4 7E 06
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_0D6F                          ; EB B0
;   [error/early exit] L_0DBF
L_0DBF:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        lea     ax, [bp + 0x22]                 ; 8D 46 22
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x20]                 ; 8D 46 20
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x1e]                 ; 8D 46 1E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_125F                          ; E8 78 04
        or      ax, ax                          ; 0B C0
        jne     L_0DEF                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0E26                          ; EB 37
;   [conditional branch target (if/else)] L_0DEF
L_0DEF:
        push    word ptr [bp + 0x24]            ; FF 76 24
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMBITBLT                ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_0E26
L_0E26:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x20                            ; CA 20 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        lea     ax, [bp + 0x12]                 ; 8D 46 12
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_125F                          ; E8 0D 04
        or      ax, ax                          ; 0B C0
        jne     L_0E5A                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0E79                          ; EB 1F
;   [conditional branch target (if/else)] L_0E5A
L_0E5A:
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMPIXEL                 ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_0E79
L_0E79:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jne     L_0EA9                          ; 75 03
        jmp     L_0F59                          ; E9 B0 00
;   [conditional branch target (if/else)] L_0EA9
L_0EA9:
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0EB5                          ; 74 05
;   [loop start] L_0EB0
L_0EB0:
        sub     ax, ax                          ; 2B C0
        jmp     L_0FA6                          ; E9 F1 00
;   [conditional branch target (if/else)] L_0EB5
L_0EB5:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0EB0                          ; 74 E1
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 69 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        mov     ax, word ptr [bp + 0x1a]        ; 8B 46 1A
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 49 F1
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     word ptr [bp + 0x16], ax        ; 89 46 16
        mov     word ptr [bp + 0x18], dx        ; 89 56 18
        cmp     word ptr [bp + 0x1c], 4         ; 83 7E 1C 04
        je      L_0F05                          ; 74 03
        jmp     L_0F8D                          ; E9 88 00
;   [conditional branch target (if/else)] L_0F05
L_0F05:
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        mov     si, word ptr [bp + 0x1a]        ; 8B 76 1A
        shl     si, 1                           ; D1 E6
        sub     si, 2                           ; 83 EE 02
        jmp     L_0F36                          ; EB 12
;   [loop start] L_0F24
L_0F24:
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp - 0xa]              ; C4 5E F6
        add     word ptr [bp - 0xa], 2          ; 83 46 F6 02
        sub     word ptr es:[bx], ax            ; 26 29 07
        dec     si                              ; 4E
;   [unconditional branch target] L_0F36
L_0F36:
        or      si, si                          ; 0B F6
        jne     L_0F24                          ; 75 EA
        les     bx, ptr [bp + 0x1e]             ; C4 5E 1E
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [unconditional branch target] L_0F59
L_0F59:
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [0x1b4]                ; FF 36 B4 01
        push    word ptr [0x1b2]                ; FF 36 B2 01
        call    far GDI.DMOUTPUT                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [unconditional branch target] L_0F8D
L_0F8D:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0FA3                          ; 74 10
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 89 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A F9 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0FA3
L_0FA3:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0FA6
L_0FA6:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1c                            ; CA 1C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_103C                          ; 7E 77
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1007                          ; 74 39
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_1007                          ; 74 32
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_1003
L_1003:
        cdq                                     ; 99
        jmp     L_1107                          ; E9 00 01
;   [conditional branch target (if/else)] L_1007
L_1007:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0039                          ; E8 1E F0
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [bp + 0x18], ax        ; 89 46 18
        mov     word ptr [bp + 0x1a], ss        ; 8C 56 1A
        push    ss                              ; 16
        push    ax                              ; 50
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        push    word ptr es:[bx + 0x2a]         ; 26 FF 77 2A
        push    word ptr es:[bx + 0x2c]         ; 26 FF 77 2C
        call    0                               ; E8 CC EF
        or      ax, ax                          ; 0B C0
        jg      L_103C                          ; 7F 04
;   [loop start] L_1038
L_1038:
        sub     ax, ax                          ; 2B C0
        jmp     L_1003                          ; EB C7
;   [conditional branch target (if/else)] L_103C
L_103C:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        je      L_10A2                          ; 74 59
        cmp     word ptr [bp + 0x12], 0         ; 83 7E 12 00
        jle     L_106E                          ; 7E 1F
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1c]        ; 8B 46 1C
        cmp     word ptr es:[bx + 0x2c], ax     ; 26 39 47 2C
        jg      L_1038                          ; 7F DD
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        add     ax, 0x48                        ; 05 48 00
        cmp     ax, word ptr [bp + 0x1c]        ; 3B 46 1C
        jle     L_1038                          ; 7E D1
        cmp     word ptr [bp + 0x1e], 0x300     ; 81 7E 1E 00 03
        jge     L_1038                          ; 7D CA
;   [conditional branch target (if/else)] L_106E
L_106E:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1107                          ; EB 65
;   [conditional branch target (if/else)] L_10A2
L_10A2:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_10D5                          ; 74 2A
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        sub     word ptr [bp + 0x1c], ax        ; 29 46 1C
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        sub     word ptr [bp + 0x1e], ax        ; 29 46 1E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, bx                          ; 8B C3
        add     ax, 2                           ; 05 02 00
        mov     word ptr [bp + 0x20], ax        ; 89 46 20
;   [conditional branch target (if/else)] L_10D5
L_10D5:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSTRBLT                ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1107
L_1107:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        lea     ax, [bp + 0x10]                 ; 8D 46 10
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xe]                  ; 8D 46 0E
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp + 0xc]                  ; 8D 46 0C
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_125F                          ; E8 2E 01
        or      ax, ax                          ; 0B C0
        jne     L_1139                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_1153                          ; EB 1A
;   [conditional branch target (if/else)] L_1139
L_1139:
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMSCANLR                ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1153
L_1153:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0x10]             ; C4 5E 10
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_117A                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1180                          ; EB 06
;   [conditional branch target (if/else)] L_117A
L_117A:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        mov     dx, word ptr [bp + 0x12]        ; 8B 56 12
;   [unconditional branch target] L_1180
L_1180:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMENUMOBJ               ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_11BD                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_11C3                          ; EB 06
;   [conditional branch target (if/else)] L_11BD
L_11BD:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     dx, word ptr [bp + 0x10]        ; 8B 56 10
;   [unconditional branch target] L_11C3
L_11C3:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMCOLORINFO             ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0x12], -3        ; 83 7E 12 FD
        jne     L_11F5                          ; 75 04
;   [loop start] L_11F1
L_11F1:
        sub     ax, ax                          ; 2B C0
        jmp     L_1254                          ; EB 5F
;   [conditional branch target (if/else)] L_11F5
L_11F5:
        cmp     word ptr [bp + 0x12], 3         ; 83 7E 12 03
        jne     L_1220                          ; 75 25
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0x8888        ; 26 81 3F 88 88
        jne     L_11F1                          ; 75 EC
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_1254                          ; EB 34
;   [conditional branch target (if/else)] L_1220
L_1220:
        les     bx, ptr [bp + 0x14]             ; C4 5E 14
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_1232                          ; 74 09
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 2                           ; 05 02 00
        jmp     L_1238                          ; EB 06
;   [conditional branch target (if/else)] L_1232
L_1232:
        mov     ax, word ptr [bp + 0x14]        ; 8B 46 14
        mov     dx, word ptr [bp + 0x16]        ; 8B 56 16
;   [unconditional branch target] L_1238
L_1238:
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.DMREALIZEOBJECT         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1254
L_1254:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
;   [sub-routine] L_125F
L_125F:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     dx, word ptr es:[bx + 2]        ; 26 8B 57 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        je      L_12DA                          ; 74 5C
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_1289                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_12DD                          ; EB 54
;   [conditional branch target (if/else)] L_1289
L_1289:
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0xde8                       ; 05 E8 0D
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     word ptr es:[bx + 0xe], dx      ; 26 89 57 0E
        or      byte ptr es:[bx + 0x26], 4      ; 26 80 4F 26 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        or      ax, word ptr [bp + 6]           ; 0B 46 06
        je      L_12B2                          ; 74 0A
        mov     ax, word ptr es:[bx + 0x2c]     ; 26 8B 47 2C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_12B2
L_12B2:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        or      ax, word ptr [bp + 0xa]         ; 0B 46 0A
        je      L_12C7                          ; 74 0D
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr es:[bx + 0x2a]     ; 26 8B 47 2A
        les     bx, ptr [bp + 8]                ; C4 5E 08
        sub     word ptr es:[bx], ax            ; 26 29 07
;   [conditional branch target (if/else)] L_12C7
L_12C7:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     dx, word ptr [bp - 2]           ; 8B 56 FE
        add     ax, 2                           ; 05 02 00
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], dx        ; 26 89 57 02
;   [conditional branch target (if/else)] L_12DA
L_12DA:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_12DD
L_12DD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xc                             ; C2 0C 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bp + di + 0x2b], bl   ; 00 5B 2B
        les     si, ptr [bp + di + 0x18]        ; C4 73 18
        neg     ax                              ; F7 D8
        cmp     word ptr ss:[0xa], ax           ; 36 39 06 0A 00
        ja      L_130D                          ; 77 0F
        cmp     word ptr ss:[0xc], ax           ; 36 39 06 0C 00
        jbe     L_1309                          ; 76 04
        mov     word ptr ss:[0xc], ax           ; 36 A3 0C 00
;   [conditional branch target (if/else)] L_1309
L_1309:
        mov     sp, ax                          ; 8B E0
        jmp     bx                              ; FF E3
;   [conditional branch target (if/else)] L_130D
L_130D:
        mov     al, 0xff                        ; B0 FF
        mov     bx, 0xfeb0                      ; BB B0 FE
        mov     bx, 0xfdb0                      ; BB B0 FD
        cwde                                    ; 98
        push    ax                              ; 50
        db      09ah                            ; 9A
        db      0a3h                            ; A3
        db      009h                            ; 09

CITOH_TEXT ENDS

        END
