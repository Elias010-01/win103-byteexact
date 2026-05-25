; ======================================================================
; WRITE / seg68.asm   (segment 68 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  258
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     1 (1 unique)
;   Top:
;        1  LOCALREALLOC
; ======================================================================
; AUTO-GENERATED from original WRITE segment 68
; segment_size=693 bytes, flags=0xf130
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0059                          ; E8 40 00
        or      ax, ax                          ; 0B C0
        je      L_0028                          ; 74 0B
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        cmp     ax, 0xf                         ; 3D 0F 00
        jge     L_003F                          ; 7D 17
;   [conditional branch target (if/else)] L_0028
L_0028:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        cmp     ax, 0xf                         ; 3D 0F 00
        jl      L_004C                          ; 7C 19
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_00F2                          ; E8 B7 00
        or      ax, ax                          ; 0B C0
        je      L_004C                          ; 74 0D
;   [conditional branch target (if/else)] L_003F
L_003F:
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0165                          ; E8 1E 01
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_004E                          ; EB 02
;   [conditional branch target (if/else)] L_004C
L_004C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_004E
L_004E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (74 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0059   offset=0x0059  size=74 instr  segment=seg68.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0059
L_0059:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        mov     word ptr [bp - 4], di           ; 89 7E FC
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        jmp     L_0081                          ; EB 0E
;   [loop start] L_0073
L_0073:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        jne     L_007B                          ; 75 01
        inc     di                              ; 47
;   [conditional branch target (if/else)] L_007B
L_007B:
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     si, 9                           ; 83 C6 09
;   [unconditional branch target] L_0081
L_0081:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0073                          ; 7C EA
        mov     ax, 9                           ; B8 09 00
        imul    di                              ; F7 EF
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     dx, di                          ; 8B D7
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jae     L_00C4                          ; 73 23
;   [loop start] L_00A1
L_00A1:
        inc     di                              ; 47
        mov     ax, 9                           ; B8 09 00
        imul    di                              ; F7 EF
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     dx, di                          ; 8B D7
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jb      L_00A1                          ; 72 E7
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], di               ; 89 3F
        sub     ax, ax                          ; 2B C0
        jmp     L_00E5                          ; EB 22
;   [loop start] L_00C3
L_00C3:
        dec     di                              ; 4F
;   [conditional branch target (if/else)] L_00C4
L_00C4:
        mov     ax, 9                           ; B8 09 00
        imul    di                              ; F7 EF
        mov     cx, di                          ; 8B CF
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        mov     dx, di                          ; 8B D7
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        cmp     ax, word ptr [bp + 8]           ; 3B 46 08
        jae     L_00C3                          ; 73 E7
        inc     di                              ; 47
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], di               ; 89 3F
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00E5
L_00E5:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_00F2   offset=0x00F2  size=47 instr  segment=seg68.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_00F2
L_00F2:
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_014E                          ; EB 47
;   [loop start] L_0107
L_0107:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_357                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, 9                           ; B9 09 00
        imul    cx                              ; F7 E9
        mov     si, ax                          ; 8B F0
        add     si, word ptr [0x123e]           ; 03 36 3E 12
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_0141                          ; 74 20
        test    byte ptr [si + 6], 1            ; F6 44 06 01
        je      L_0137                          ; 74 10
        push    word ptr [si + 2]               ; FF 74 02
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0137                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0159                          ; EB 22
;   [conditional branch target (if/else)] L_0137
L_0137:
        push    word ptr [si + 2]               ; FF 74 02
        push    word ptr [si]                   ; FF 34
        call    far _entry_358                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0141
L_0141:
        inc     word ptr [0x1bf4]               ; FF 06 F4 1B
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        mov     word ptr [si + 4], ax           ; 89 44 04
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_014E
L_014E:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_0107                          ; 7C B1
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0159
L_0159:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: LOCALREALLOC.

;-------------------------------------------------------------------------
; sub_0165   offset=0x0165  size=88 instr  segment=seg68.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;
; Near calls (internal): L_0246
;-------------------------------------------------------------------------
;   [sub-routine] L_0165
L_0165:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    si                              ; 56
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        mov     word ptr [bp - 8], si           ; 89 76 F8
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_01C3                          ; EB 42
;   [loop start] L_0181
L_0181:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_01BD                          ; 74 35
        cmp     word ptr [bp - 8], si           ; 39 76 F8
        je      L_01B0                          ; 74 23
        push    si                              ; 56
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 14 02 00 00 [FIXUP]
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si + 2], 0x7fff       ; C7 44 02 FF 7F
        mov     byte ptr [si + 8], 0xff         ; C6 44 08 FF
;   [conditional branch target (if/else)] L_01B0
L_01B0:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bp - 6]           ; 8A 46 FA
        mov     byte ptr [bx + 8], al           ; 88 47 08
        add     word ptr [bp - 8], 9            ; 83 46 F8 09
;   [conditional branch target (if/else)] L_01BD
L_01BD:
        add     si, 9                           ; 83 C6 09
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_01C3
L_01C3:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jl      L_0181                          ; 7C B6
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0246                          ; E8 76 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [0x1bd2], ax           ; 29 06 D2 1B
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        mov     word ptr [0x1070], ax           ; A3 70 10
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [0x1bfe], ax           ; A3 FE 1B
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x123e]               ; FF 36 3E 12
        mov     ax, word ptr [0x1bfe]           ; A1 FE 1B
        add     ax, word ptr [0x1070]           ; 03 06 70 10
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [0x123e], ax           ; A3 3E 12
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_45                   ; 9A 97 02 00 00 [FIXUP]
        call    far _entry_58                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1070]           ; A1 70 10
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        add     ax, word ptr [bp - 0xa]         ; 03 46 F6
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0xa58]                ; FF 36 58 0A
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0246   offset=0x0246  size=49 instr  segment=seg68.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_0246
L_0246:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x123e]           ; 8B 36 3E 12
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_02A5                          ; EB 39
;   [loop start] L_026C
L_026C:
        cmp     word ptr [si + 2], 0x7fff       ; 81 7C 02 FF 7F
        je      L_029F                          ; 74 2C
        mov     al, byte ptr [si + 8]           ; 8A 44 08
        sub     ah, ah                          ; 2A E4
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 6], di           ; 39 7E FA
        je      L_029B                          ; 74 1C
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, cl                          ; D3 E0
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        push    ax                              ; 50
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_029B
L_029B:
        mov     byte ptr [si + 8], 0xff         ; C6 44 08 FF
;   [conditional branch target (if/else)] L_029F
L_029F:
        inc     word ptr [bp - 6]               ; FF 46 FA
        add     si, 9                           ; 83 C6 09
;   [unconditional branch target] L_02A5
L_02A5:
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        ja      L_026C                          ; 77 C2
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

WRITE_TEXT ENDS

        END
