; ======================================================================
; USER / seg26.asm   (segment 26 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        12
; Total instructions:                  688
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            5
;   Unclear:                             3
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     7 (5 unique)
;   Top:
;        2  LSTRCPY
;        2  LSTRLEN
;        1  GETTEXTEXTENT
;        1  ANSINEXT
;        1  INQUIRESYSTEM
; ======================================================================
; AUTO-GENERATED from original USER segment 26
; segment_size=1938 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; DLGDIRLIST  (offset 0x0000, size 871 bytes)
;-----------------------------------------------------------------------
DLGDIRLIST PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x7e                        ; 83 EC 7E
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [bp - 0x7c], ax        ; 89 46 84
        mov     word ptr [bp - 0x7a], dx        ; 89 56 86
        mov     word ptr [bp - 0x72], 0         ; C7 46 8E 00 00
        or      ax, dx                          ; 0B C2
        jne     L_0025                          ; 75 03
        jmp     L_01AB                          ; E9 86 01
;   [conditional branch target (if/else)] L_0025
L_0025:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0742                          ; E8 18 07
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0705                          ; E8 C9 06
        or      ax, ax                          ; 0B C0
        je      L_0045                          ; 74 05
;   [loop start] L_0040
L_0040:
        sub     ax, ax                          ; 2B C0
        jmp     L_0259                          ; E9 14 02
;   [conditional branch target (if/else)] L_0045
L_0045:
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        cmp     byte ptr es:[bx + 1], 0x3a      ; 26 80 7F 01 3A
        jne     L_0086                          ; 75 37
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        or      al, 0x20                        ; 0C 20
        sub     ax, 0x61                        ; 2D 61 00
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06C5                          ; E8 64 06
        or      ax, ax                          ; 0B C0
        je      L_0040                          ; 74 DB
        add     word ptr [bp - 0x7c], 2         ; 83 46 84 02
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x78]        ; 8B 46 88
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0705                          ; E8 8D 06
        or      ax, ax                          ; 0B C0
        je      L_0086                          ; 74 0A
;   [loop start] L_007C
L_007C:
        push    word ptr [bp - 0x7e]            ; FF 76 82
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06C5                          ; E8 41 06
        jmp     L_0040                          ; EB BA
;   [conditional branch target (if/else)] L_0086
L_0086:
        mov     word ptr [bp - 0x6c], 1         ; C7 46 94 01 00
        mov     ax, 0xc24                       ; B8 24 0C
        mov     dx, OFFSET _SEG1_0C24           ; BA 47 02 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        mov     word ptr [bp - 0x6e], dx        ; 89 56 92
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        jne     L_00A4                          ; 75 03
        jmp     L_019A                          ; E9 F6 00
;   [conditional branch target (if/else)] L_00A4
L_00A4:
        push    es                              ; 06
        ;   ^ arg lpsz (high/segment)
        push    bx                              ; 53
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A AC 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        push    word ptr [bp - 0x7a]            ; FF 76 86
        push    word ptr [bp - 0x7c]            ; FF 76 84
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E3                          ; E8 2A 06
        or      ax, ax                          ; 0B C0
        jne     L_00C0                          ; 75 03
        jmp     L_019A                          ; E9 DA 00
;   [conditional branch target (if/else)] L_00C0
L_00C0:
        mov     word ptr [bp - 0x6c], 0         ; C7 46 94 00 00
        mov     ax, word ptr [bp - 0x76]        ; 8B 46 8A
        add     ax, word ptr [bp - 0x7c]        ; 03 46 84
        mov     dx, word ptr [bp - 0x7a]        ; 8B 56 86
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        mov     word ptr [bp - 0x6e], dx        ; 89 56 92
        les     bx, ptr [bp - 0x70]             ; C4 5E 90
        cmp     byte ptr es:[bx - 1], 0x5c      ; 26 80 7F FF 5C
        jne     L_00E3                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_00E5                          ; EB 02
;   [conditional branch target (if/else)] L_00E3
L_00E3:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_00E5
L_00E5:
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
;   [loop start] L_00E8
L_00E8:
        mov     ax, word ptr [bp - 0x76]        ; 8B 46 8A
        dec     word ptr [bp - 0x76]            ; FF 4E 8A
        or      ax, ax                          ; 0B C0
        je      L_012B                          ; 74 39
        les     bx, ptr [bp - 0x70]             ; C4 5E 90
        mov     al, byte ptr es:[bx - 1]        ; 26 8A 47 FF
        mov     byte ptr [bp - 0x74], al        ; 88 46 8C
        cmp     al, 0x2a                        ; 3C 2A
        je      L_0104                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_0109                          ; 75 05
;   [conditional branch target (if/else)] L_0104
L_0104:
        mov     word ptr [bp - 0x6c], 1         ; C7 46 94 01 00
;   [conditional branch target (if/else)] L_0109
L_0109:
        cmp     byte ptr [bp - 0x74], 0x5c      ; 80 7E 8C 5C
        je      L_011B                          ; 74 0C
        cmp     byte ptr [bp - 0x74], 0x2f      ; 80 7E 8C 2F
        je      L_011B                          ; 74 06
        cmp     byte ptr [bp - 0x74], 0x3a      ; 80 7E 8C 3A
        jne     L_0134                          ; 75 19
;   [conditional branch target (if/else)] L_011B
L_011B:
        cmp     word ptr [bp - 0x76], 0         ; 83 7E 8A 00
        jne     L_0126                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0128                          ; EB 02
;   [conditional branch target (if/else)] L_0126
L_0126:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0128
L_0128:
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
;   [conditional branch target (if/else)] L_012B
L_012B:
        cmp     word ptr [bp - 0x6c], 0         ; 83 7E 94 00
        jne     L_0139                          ; 75 08
        jmp     L_007C                          ; E9 48 FF
;   [conditional branch target (if/else)] L_0134
L_0134:
        dec     word ptr [bp - 0x70]            ; FF 4E 90
        jmp     L_00E8                          ; EB AF
;   [conditional branch target (if/else)] L_0139
L_0139:
        cmp     word ptr [bp - 0x72], 0         ; 83 7E 8E 00
        je      L_0142                          ; 74 03
        inc     word ptr [bp - 0x70]            ; FF 46 90
;   [conditional branch target (if/else)] L_0142
L_0142:
        cmp     word ptr [bp - 0x72], 0         ; 83 7E 8E 00
        jne     L_014E                          ; 75 06
        cmp     word ptr [bp - 0x76], 0         ; 83 7E 8A 00
        jl      L_0188                          ; 7C 3A
;   [conditional branch target (if/else)] L_014E
L_014E:
        dec     word ptr [bp - 0x70]            ; FF 4E 90
        les     bx, ptr [bp - 0x70]             ; C4 5E 90
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x74], al        ; 88 46 8C
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
        les     bx, ptr [bp - 0x7c]             ; C4 5E 84
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_017C                          ; 74 15
        push    es                              ; 06
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06E3                          ; E8 75 05
        or      ax, ax                          ; 0B C0
        jne     L_0177                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0179                          ; EB 02
;   [conditional branch target (if/else)] L_0177
L_0177:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0179
L_0179:
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
;   [conditional branch target (if/else)] L_017C
L_017C:
        les     bx, ptr [bp - 0x70]             ; C4 5E 90
        inc     word ptr [bp - 0x70]            ; FF 46 90
        mov     al, byte ptr [bp - 0x74]        ; 8A 46 8C
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [conditional branch target (if/else)] L_0188
L_0188:
        cmp     word ptr [bp - 0x6c], 0         ; 83 7E 94 00
        jne     L_0191                          ; 75 03
        jmp     L_007C                          ; E9 EB FE
;   [conditional branch target (if/else)] L_0191
L_0191:
        cmp     word ptr [bp - 0x72], 0         ; 83 7E 8E 00
        je      L_019A                          ; 74 03
        dec     word ptr [bp - 0x70]            ; FF 4E 90
;   [branch target] L_019A
L_019A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp - 0x6e]            ; FF 76 92
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp - 0x70]            ; FF 76 90
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_01AB
L_01AB:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0742                          ; E8 92 05
        mov     word ptr [bp - 0x7e], ax        ; 89 46 82
        mov     al, byte ptr [bp - 0x7e]        ; 8A 46 82
        add     al, 0x41                        ; 04 41
        mov     byte ptr [bp - 0x6a], al        ; 88 46 96
        mov     byte ptr [bp - 0x69], 0x3a      ; C6 46 97 3A
        lea     ax, [bp - 0x68]                 ; 8D 46 98
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x7e]        ; 8B 46 82
        inc     ax                              ; 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0705                          ; E8 37 05
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01EF                          ; 74 1B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 8]               ; FF 76 08
        lea     ax, [bp - 0x6a]                 ; 8D 46 96
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0264                          ; E8 7C 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_92                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01EF
L_01EF:
        cmp     word ptr [bp - 0x6c], 0         ; 83 7E 94 00
        je      L_0256                          ; 74 61
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0256                          ; 74 5B
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x405                       ; B8 05 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_101                  ; 9A 27 02 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x40e                       ; B8 0E 04
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0xbfef                      ; 25 EF BF
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _entry_101                  ; 9A 52 02 00 00 [FIXUP]
        and     word ptr [bp + 6], 0x4010       ; 81 66 06 10 40
        je      L_0256                          ; 74 24
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x40e                       ; B8 0E 04
        push    ax                              ; 50
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      ah, 0x80                        ; 80 CC 80
        push    ax                              ; 50
        mov     ax, 0xc24                       ; B8 24 0C
        mov     dx, OFFSET _SEG1_0C24           ; BA FF FF [FIXUP]
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_101                  ; 9A 85 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0256
L_0256:
        mov     ax, word ptr [bp - 0x6c]        ; 8B 46 94
;   [unconditional branch target] L_0259
L_0259:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
;   [sub-routine] L_0264
L_0264:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    far _entry_91                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_6121                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
;   [loop start] L_029C
L_029C:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A B8 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A D8 02 00 00 [FIXUP]
        cmp     ax, word ptr [bp - 0x14]        ; 3B 46 EC
        jbe     L_02E5                          ; 76 27
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0343                          ; 75 7F
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        call    far GDI.GETTEXTEXTENT           ; 9A FF FF 00 00 [FIXUP]
        sub     word ptr [bp - 0x14], ax        ; 29 46 EC
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        jne     L_033F                          ; 75 5A
;   [conditional branch target (if/else)] L_02E5
L_02E5:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 0x12]            ; FF 76 EE
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0337                          ; 74 41
        dec     word ptr [bp + 4]               ; FF 4E 04
        dec     word ptr [bp + 4]               ; FF 4E 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr es:[bx], 0x5c          ; 26 C6 07 5C
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     byte ptr es:[bx], 0x3a          ; 26 C6 07 3A
        dec     word ptr [bp + 4]               ; FF 4E 04
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bp - 0xe]         ; 8A 46 F2
        mov     byte ptr es:[bx], al            ; 26 88 07
;   [conditional branch target (if/else)] L_0337
L_0337:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        jmp     L_0361                          ; EB 22
;   [conditional branch target (if/else)] L_033F
L_033F:
        add     word ptr [bp + 4], 7            ; 83 46 04 07
;   [loop start (also forward branch)] L_0343
L_0343:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        or      ax, ax                          ; 0B C0
        jle     L_0359                          ; 7E 0C
        les     bx, ptr [bp + 4]                ; C4 5E 04
        inc     word ptr [bp + 4]               ; FF 46 04
        cmp     byte ptr es:[bx], 0x5c          ; 26 80 3F 5C
        jne     L_0343                          ; 75 EA
;   [conditional branch target (if/else)] L_0359
L_0359:
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        jmp     L_029C                          ; E9 3B FF
;   [fall-through exit] L_0361
L_0361:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
DLGDIRLIST ENDP


;-----------------------------------------------------------------------
; DLGDIRSELECT  (offset 0x0367, size 256 bytes)
;-----------------------------------------------------------------------
DLGDIRSELECT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x78                        ; 83 EC 78
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x409                       ; B8 09 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_101                  ; 9A A8 03 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jge     L_0395                          ; 7D 05
        sub     ax, ax                          ; 2B C0
        jmp     L_045B                          ; E9 C6 00
;   [conditional branch target (if/else)] L_0395
L_0395:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x6e]                 ; 8D 46 92
        mov     word ptr [bp - 0x76], ax        ; 89 46 8A
        mov     word ptr [bp - 0x74], ss        ; 8C 56 8C
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x78], ax        ; 89 46 88
        cmp     byte ptr [bp - 0x6e], 0x5b      ; 80 7E 92 5B
        jne     L_03CA                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03CC                          ; EB 02
;   [conditional branch target (if/else)] L_03CA
L_03CA:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_03CC
L_03CC:
        mov     word ptr [bp - 0x72], ax        ; 89 46 8E
        or      ax, ax                          ; 0B C0
        je      L_03FF                          ; 74 2C
        inc     word ptr [bp - 0x76]            ; FF 46 8A
        dec     word ptr [bp - 0x78]            ; FF 4E 88
        mov     si, word ptr [bp - 0x78]        ; 8B 76 88
        les     bx, ptr [bp - 0x76]             ; C4 5E 8A
        mov     byte ptr es:[bx + si - 1], 0x5c ; 26 C6 40 FF 5C
        cmp     byte ptr [bp - 0x6d], 0x2d      ; 80 7E 93 2D
        jne     L_0447                          ; 75 5D
        inc     word ptr [bp - 0x76]            ; FF 46 8A
        dec     word ptr [bp - 0x78]            ; FF 4E 88
        mov     bx, word ptr [bp - 0x76]        ; 8B 5E 8A
        mov     byte ptr es:[bx + 1], 0x3a      ; 26 C6 47 01 3A
        mov     byte ptr es:[bx + 2], 0         ; 26 C6 47 02 00
        jmp     L_0447                          ; EB 48
;   [conditional branch target (if/else)] L_03FF
L_03FF:
        mov     ax, word ptr [bp - 0x76]        ; 8B 46 8A
        mov     dx, word ptr [bp - 0x74]        ; 8B 56 8C
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 03 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x70], ax        ; 89 46 90
        jmp     L_0430                          ; EB 19
;   [loop start] L_0417
L_0417:
        les     bx, ptr [bp - 8]                ; C4 5E F8
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        je      L_0447                          ; 74 27
        dec     word ptr [bp - 0x70]            ; FF 4E 90
        push    es                              ; 06
        push    bx                              ; 53
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
;   [unconditional branch target] L_0430
L_0430:
        cmp     word ptr [bp - 0x70], 0         ; 83 7E 90 00
        jg      L_0417                          ; 7F E1
        les     bx, ptr [bp - 8]                ; C4 5E F8
        inc     word ptr [bp - 8]               ; FF 46 F8
        mov     byte ptr es:[bx], 0x2e          ; 26 C6 07 2E
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     byte ptr es:[bx], 0             ; 26 C6 07 00
;   [branch target] L_0447
L_0447:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp - 0x74]            ; FF 76 8C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp - 0x76]            ; FF 76 8A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A A7 01 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x72]        ; 8B 46 8E
;   [unconditional branch target] L_045B
L_045B:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
DLGDIRSELECT ENDP

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     word ptr [bp - 4], 0xffff       ; C7 46 FC FF FF
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg wSeg
        ; --> GLOBALHANDLE(WORD wSeg) -> DWORD
        call    far KERNEL.GLOBALHANDLE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, dx                          ; 8B C2
        mov     word ptr [bp + 8], ax           ; 89 46 08
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.5                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     byte ptr [bx + 0x31], 0         ; C6 47 31 00
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        and     ah, 0x7f                        ; 80 E4 7F
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0662                          ; E8 B0 01
        or      ax, ax                          ; 0B C0
        je      L_04B9                          ; 74 03
        jmp     L_054C                          ; E9 93 00
;   [conditional branch target (if/else)] L_04B9
L_04B9:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_173                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _SEG1_375A                  ; 9A 48 05 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_04D0
L_04D0:
        mov     word ptr [bp - 0x3c], 0x1e      ; C7 46 C4 1E 00
        cmp     word ptr [bp - 0x16], 0x2e      ; 83 7E EA 2E
        je      L_0530                          ; 74 55
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_05A5                          ; E8 BF 00
        or      ax, ax                          ; 0B C0
        je      L_0530                          ; 74 46
        test    byte ptr [bp - 0x1f], 0x10      ; F6 46 E1 10
        je      L_051D                          ; 74 2D
        dec     word ptr [bp - 0x3c]            ; FF 4E C4
        mov     si, word ptr [bp - 0x3c]        ; 8B 76 C4
        mov     byte ptr [bp + si - 0x34], 0x5b ; C6 42 CC 5B
        mov     si, word ptr [bp - 0x3c]        ; 8B 76 C4
        lea     ax, [bp + si - 0x34]            ; 8D 42 CC
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A A7 00 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x3c]        ; 03 46 C4
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        mov     si, ax                          ; 8B F0
        inc     word ptr [bp - 0x3a]            ; FF 46 C6
        mov     byte ptr [bp + si - 0x34], 0x5d ; C6 42 CC 5D
        mov     si, word ptr [bp - 0x3a]        ; 8B 76 C6
        mov     byte ptr [bp + si - 0x34], 0    ; C6 42 CC 00
;   [conditional branch target (if/else)] L_051D
L_051D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     si, word ptr [bp - 0x3c]        ; 8B 76 C4
        lea     ax, [bp + si - 0x34]            ; 8D 42 CC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_527                  ; 9A 3B 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0530
L_0530:
        cmp     word ptr [bp - 4], -1           ; 83 7E FC FF
        jl      L_0544                          ; 7C 0E
        lea     ax, [bp - 0x34]                 ; 8D 46 CC
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0698                          ; E8 58 01
        or      ax, ax                          ; 0B C0
        je      L_04D0                          ; 74 8C
;   [conditional branch target (if/else)] L_0544
L_0544:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_375A                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_054C
L_054C:
        cmp     word ptr [bp - 4], -2           ; 83 7E FC FE
        je      L_0562                          ; 74 10
        test    word ptr [bp + 0xa], 0x4000     ; F7 46 0A 00 40
        je      L_0562                          ; 74 09
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_05D0                          ; E8 71 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0562
L_0562:
        cmp     word ptr [bp - 4], -2           ; 83 7E FC FE
        jne     L_0574                          ; 75 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, 0xfffe                      ; B8 FE FF
        push    ax                              ; 50
        call    far _entry_529                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0574
L_0574:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     byte ptr [bx + 0x31], 1         ; C6 47 31 01
        push    bx                              ; 53
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_528                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
;-------------------------------------------------------------------------
; sub_05A5   offset=0x05A5  size=17 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_05A5
L_05A5:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        test    word ptr [bp + 8], 0x8000       ; F7 46 08 00 80
        je      L_05C3                          ; 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x15]     ; 26 8A 47 15
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        test    word ptr [bp + 8], ax           ; 85 46 08
        je      L_05C8                          ; 74 05
;   [conditional branch target (if/else)] L_05C3
L_05C3:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05CA                          ; EB 02
;   [error/early exit] L_05C8
L_05C8:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_05CA
L_05CA:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_05D0   offset=0x05D0  size=59 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INQUIRESYSTEM
;
; Near calls (internal): L_075B, L_0779
;-------------------------------------------------------------------------
;   [sub-routine] L_05D0
L_05D0:
        ;   = cProc <14> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xe                         ; 83 EC 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0779                          ; E8 9E 01
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075B                          ; E8 75 01
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     byte ptr [bp - 8], 0x5b         ; C6 46 F8 5B
        mov     byte ptr [bp - 7], 0x2d         ; C6 46 F9 2D
        mov     byte ptr [bp - 6], 0x20         ; C6 46 FA 20
        mov     byte ptr [bp - 5], 0x2d         ; C6 46 FB 2D
        mov     byte ptr [bp - 4], 0x5d         ; C6 46 FC 5D
        mov     byte ptr [bp - 3], 0            ; C6 46 FD 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0649                          ; EB 41
;   [loop start] L_0608
L_0608:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075B                          ; E8 4B 01
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0779                          ; E8 64 01
        cmp     ax, word ptr [bp - 0xc]         ; 3B 46 F4
        jne     L_0646                          ; 75 2C
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far SYSTEM.INQUIRESYSTEM        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0646                          ; 74 1C
        mov     al, byte ptr [bp - 0xc]         ; 8A 46 F4
        add     al, 0x41                        ; 04 41
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        push    word ptr [bp + 4]               ; FF 76 04
        lea     ax, [bp - 8]                    ; 8D 46 F8
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _entry_527                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jl      L_0651                          ; 7C 0B
;   [conditional branch target (if/else)] L_0646
L_0646:
        inc     word ptr [bp - 0xc]             ; FF 46 F4
;   [unconditional branch target] L_0649
L_0649:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jl      L_0608                          ; 7C B7
;   [conditional branch target (if/else)] L_0651
L_0651:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075B                          ; E8 02 01
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_0662   offset=0x0662  size=30 instr  segment=seg26.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0662
L_0662:
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
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     ds, word ptr [bp + 0xe]         ; 8E 5E 0E
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     ds, word ptr [bp + 0xa]         ; 8E 5E 0A
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_068A                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_068A
L_068A:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_0698   offset=0x0698  size=27 instr  segment=seg26.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0698
L_0698:
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
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ds, word ptr [bp + 8]           ; 8E 5E 08
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jb      L_06B7                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_06B7
L_06B7:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_06C5   offset=0x06C5  size=17 instr  segment=seg26.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_06C5
L_06C5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        ; constant WM_GETTEXTLENGTH
        mov     ah, 0xe                         ; B4 0E
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;-------------------------------------------------------------------------
; sub_06E3   offset=0x06E3  size=20 instr  segment=seg26.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_06E3
L_06E3:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x3b                        ; B4 3B
        int     0x21                            ; CD 21
        jb      L_06F9                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_06F9
L_06F9:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0705   offset=0x0705  size=37 instr  segment=seg26.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=8)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0705
L_0705:
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
        les     di, ptr [bp + 8]                ; C4 7E 08
        push    es                              ; 06
        pop     ds                              ; 1F
        cld                                     ; FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      al, al                          ; 0A C0
        jne     L_0725                          ; 75 06
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        inc     al                              ; FE C0
;   [conditional branch target (if/else)] L_0725
L_0725:
        mov     dl, al                          ; 8A D0
        mov     al, 0x5c                        ; B0 5C
        stosb   byte ptr es:[di], al            ; AA
        mov     si, di                          ; 8B F7
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        jb      L_0734                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0734
L_0734:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;-------------------------------------------------------------------------
; sub_0742   offset=0x0742  size=16 instr  segment=seg26.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=5)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_0742
L_0742:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;-------------------------------------------------------------------------
; sub_075B   offset=0x075B  size=17 instr  segment=seg26.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_075B
L_075B:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        ; constant WM_GETTEXTLENGTH
        mov     ah, 0xe                         ; B4 0E
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;-------------------------------------------------------------------------
; sub_0779   offset=0x0779  size=16 instr  segment=seg26.asm
;
; Classification (pass8): asm_medium  (score C=2, ASM=5)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_0779
L_0779:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        sub     ah, ah                          ; 2A E4
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

USER_TEXT ENDS

        END
