; ======================================================================
; PAINT / seg19.asm   (segment 19 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         3
; Total instructions:                  186
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     9 (7 unique)
;   Top:
;        2  ELLIPSE
;        2  SETROP2
;        1  GETSTOCKOBJECT
;        1  SELECTOBJECT
;        1  GETBKMODE
;        1  SETBKMODE
;        1  GETKEYSTATE
; ======================================================================
; AUTO-GENERATED from original PAINT segment 19
; segment_size=597 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

PAINT_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_004F                          ; E8 33 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_004F                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Small helper using 2 API(s): GETSTOCKOBJECT, SELECTOBJECT.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_004F   offset=0x004F  size=18 instr  segment=seg19.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_004F
L_004F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 6F 00 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 75 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_0082                          ; 75 03
        jmp     L_019B                          ; E9 19 01
; Description (heuristic):
;   Mixed routine using: ELLIPSE, GETBKMODE, SETBKMODE (+2 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0082   offset=0x0082  size=100 instr  segment=seg19.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
;   GETBKMODE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETROP2
;   GETKEYSTATE
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0082
L_0082:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_009F                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_00A2                          ; EB 03
;   [conditional branch target (if/else)] L_009F
L_009F:
        mov     ax, word ptr [0x1172]           ; A1 72 11
;   [unconditional branch target] L_00A2
L_00A2:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_00B1                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_00B4                          ; EB 03
;   [conditional branch target (if/else)] L_00B1
L_00B1:
        mov     ax, word ptr [0x1174]           ; A1 74 11
;   [unconditional branch target] L_00B4
L_00B4:
        push    ax                              ; 50
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_00C3                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_00C6                          ; EB 03
;   [conditional branch target (if/else)] L_00C3
L_00C3:
        mov     ax, word ptr [0x1172]           ; A1 72 11
;   [unconditional branch target] L_00C6
L_00C6:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_00D5                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_00D8                          ; EB 03
;   [conditional branch target (if/else)] L_00D5
L_00D5:
        mov     ax, word ptr [0x1174]           ; A1 74 11
;   [unconditional branch target] L_00D8
L_00D8:
        push    ax                              ; 50
        ; --> ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.ELLIPSE                 ; 9A 70 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A AC 01 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_011C                          ; 74 2C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_131                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far GDI.GETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_011C                          ; 7D 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A 8C 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_011C
L_011C:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_0135                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0138                          ; EB 03
;   [conditional branch target (if/else)] L_0135
L_0135:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_0138
L_0138:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_0147                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_014A                          ; EB 03
;   [conditional branch target (if/else)] L_0147
L_0147:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_014A
L_014A:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_0159                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_015C                          ; EB 03
;   [conditional branch target (if/else)] L_0159
L_0159:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_015C
L_015C:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_016B                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_016E                          ; EB 03
;   [conditional branch target (if/else)] L_016B
L_016B:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_016E
L_016E:
        push    ax                              ; 50
        ; --> ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.ELLIPSE                 ; 9A FC 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0185                          ; 75 03
        jmp     L_0250                          ; E9 CB 00
;   [conditional branch target (if/else)] L_0185
L_0185:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_130                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0250                          ; E9 B5 00
;   [unconditional branch target] L_019B
L_019B:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01A4                          ; 74 03
        jmp     L_0250                          ; E9 AC 00
; Description (heuristic):
;   Mixed routine using: ELLIPSE, SETROP2.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_01A4   offset=0x01A4  size=68 instr  segment=seg19.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
;   SETROP2
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01A4
L_01A4:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_01C1                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01C4                          ; EB 03
;   [conditional branch target (if/else)] L_01C1
L_01C1:
        mov     ax, word ptr [0x1172]           ; A1 72 11
;   [unconditional branch target] L_01C4
L_01C4:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_01D3                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01D6                          ; EB 03
;   [conditional branch target (if/else)] L_01D3
L_01D3:
        mov     ax, word ptr [0x1174]           ; A1 74 11
;   [unconditional branch target] L_01D6
L_01D6:
        push    ax                              ; 50
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_01E5                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01E8                          ; EB 03
;   [conditional branch target (if/else)] L_01E5
L_01E5:
        mov     ax, word ptr [0x1172]           ; A1 72 11
;   [unconditional branch target] L_01E8
L_01E8:
        push    ax                              ; 50
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_01F7                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01FA                          ; EB 03
;   [conditional branch target (if/else)] L_01F7
L_01F7:
        mov     ax, word ptr [0x1174]           ; A1 74 11
;   [unconditional branch target] L_01FA
L_01FA:
        push    ax                              ; 50
        ; --> ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.ELLIPSE                 ; 9A 4C 02 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_0211                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0214                          ; EB 03
;   [conditional branch target (if/else)] L_0211
L_0211:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_0214
L_0214:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_0223                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_0226                          ; EB 03
;   [conditional branch target (if/else)] L_0223
L_0223:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_0226
L_0226:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_0235                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0238                          ; EB 03
;   [conditional branch target (if/else)] L_0235
L_0235:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_0238
L_0238:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_0247                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_024A                          ; EB 03
;   [conditional branch target (if/else)] L_0247
L_0247:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_024A
L_024A:
        push    ax                              ; 50
        ; --> ELLIPSE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.ELLIPSE                 ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0250
L_0250:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      00ah                            ; 0A

PAINT_TEXT ENDS

        END
