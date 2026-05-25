; ======================================================================
; WRITE / seg31.asm   (segment 31 of WRITE)
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
; AUTO-GENERATED from original WRITE segment 31
; segment_size=355 bytes, flags=0xf130
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
        sub     sp, 0x2a                        ; 83 EC 2A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0088                          ; 74 73
        cmp     ax, 5                           ; 3D 05 00
        je      L_0080                          ; 74 66
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0032                          ; 74 13
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0027                          ; 75 03
        jmp     L_0137                          ; E9 10 01
;   [conditional branch target (if/else)] L_0027
L_0027:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_002F                          ; 75 03
        jmp     L_0137                          ; E9 08 01
;   [conditional branch target (if/else)] L_002F
L_002F:
        jmp     L_0145                          ; E9 13 01
;   [conditional branch target (if/else)] L_0032
L_0032:
        call    far _entry_166                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_165                  ; 9A 67 00 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x2a]                 ; 8D 46 D6
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_165                  ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_006B
L_006B:
        cmp     word ptr [0x44], 0              ; 83 3E 44 00 00
        je      L_007A                          ; 74 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_007A
L_007A:
        sub     ax, ax                          ; 2B C0
        cdq                                     ; 99
        jmp     L_0159                          ; E9 D9 00
;   [conditional branch target (if/else)] L_0080
L_0080:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x13c4], ax           ; A3 C4 13
        jmp     L_006B                          ; EB E3
;   [conditional branch target (if/else)] L_0088
L_0088:
        cmp     word ptr [0x7bc], 0             ; 83 3E BC 07 00
        je      L_0098                          ; 74 09
        push    word ptr [0x7bc]                ; FF 36 BC 07
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A B7 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0098
L_0098:
        cmp     word ptr [0x7be], 0             ; 83 3E BE 07 00
        je      L_00BB                          ; 74 1C
        push    word ptr [0x7be]                ; FF 36 BE 07
        ;   ^ arg hDC
        push    word ptr [0xe06]                ; FF 36 06 0E
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A D1 00 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A D7 00 00 00 [FIXUP]
        push    word ptr [0x7be]                ; FF 36 BE 07
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00BB
L_00BB:
        cmp     word ptr [0x7ba], 0             ; 83 3E BA 07 00
        je      L_0113                          ; 74 51
        push    word ptr [0x7ba]                ; FF 36 BA 07
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A E3 00 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A E9 00 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 02 01 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A F6 00 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FC 00 00 00 [FIXUP]
        push    word ptr [0x7ba]                ; FF 36 BA 07
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 1F 01 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        ;   ^ arg hWnd
        push    word ptr [0x7ba]                ; FF 36 BA 07
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0113
L_0113:
        cmp     word ptr [0x7c4], 0             ; 83 3E C4 07 00
        je      L_0129                          ; 74 0F
        push    word ptr [0x7c4]                ; FF 36 C4 07
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7c4], 0             ; C7 06 C4 07 00 00
;   [conditional branch target (if/else)] L_0129
L_0129:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x7bc], ax            ; A3 BC 07
        mov     word ptr [0x7be], ax            ; A3 BE 07
        mov     word ptr [0x7ba], ax            ; A3 BA 07
        jmp     L_006B                          ; E9 34 FF
;   [unconditional branch target] L_0137
L_0137:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_164                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_006B                          ; E9 26 FF
;   [unconditional branch target] L_0145
L_0145:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg wMsg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg wParam
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lParam (low/offset)
        ; --> DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.DEFWINDOWPROC          ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0159
L_0159:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
