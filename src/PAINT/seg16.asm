; ======================================================================
; PAINT / seg16.asm   (segment 16 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         0
; Total instructions:                    0
; 
; Classification (pass8):
;   C-origin (high+medium):              0
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     0 (0 unique)
; ======================================================================
; AUTO-GENERATED from original PAINT segment 16
; segment_size=313 bytes, flags=0xf130
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A B6 00 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0077                          ; 74 58
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A BE 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0x1172]               ; FF 36 72 11
        ;   ^ arg x
        push    word ptr [0x1174]               ; FF 36 74 11
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A CE 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        ;   ^ arg x
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 53 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        ;   ^ arg x
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A DE 00 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A E6 00 00 00 [FIXUP]
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        call    far _entry_132                  ; 9A 2B 01 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_67                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_012F                          ; E9 B8 00
;   [conditional branch target (if/else)] L_0077
L_0077:
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0088                          ; 74 0B
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        jmp     L_012A                          ; E9 A2 00
;   [conditional branch target (if/else)] L_0088
L_0088:
        mov     ax, word ptr [0x1172]           ; A1 72 11
        cmp     word ptr [0xc8a], ax            ; 39 06 8A 0C
        jne     L_009D                          ; 75 0C
        mov     ax, word ptr [0x1174]           ; A1 74 11
        cmp     word ptr [0xc8c], ax            ; 39 06 8C 0C
        jne     L_009D                          ; 75 03
        jmp     L_012F                          ; E9 92 00
;   [conditional branch target (if/else)] L_009D
L_009D:
        cmp     word ptr [0x554], 0             ; 83 3E 54 05 00
        je      L_00F2                          ; 74 4E
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_134                  ; 9A F6 00 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        push    word ptr [0x1172]               ; FF 36 72 11
        ;   ^ arg x
        push    word ptr [0x1174]               ; FF 36 74 11
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A 06 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        ;   ^ arg x
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 16 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_133                  ; 9A 1E 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00F2
L_00F2:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_134                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0x1172]               ; FF 36 72 11
        ;   ^ arg x
        push    word ptr [0x1174]               ; FF 36 74 11
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hDC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        ;   ^ arg x
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_133                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        push    word ptr [0xc8c]                ; FF 36 8C 0C
;   [unconditional branch target] L_012A
L_012A:
        call    far _entry_132                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_012F
L_012F:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      008h                            ; 08

PAINT_TEXT ENDS

        END
