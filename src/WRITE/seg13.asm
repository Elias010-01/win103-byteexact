; ======================================================================
; WRITE / seg13.asm   (segment 13 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         1
; Total instructions:                   93
; 
; Classification (pass8):
;   C-origin (high+medium):              1
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     5 (5 unique)
;   Top:
;        1  DELETEDC
;        1  GETCARETBLINKTIME
;        1  KILLTIMER
;        1  RELEASEDC
;        1  SETTIMER
; ======================================================================
; AUTO-GENERATED from original WRITE segment 13
; segment_size=996 bytes, flags=0xf170
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
        sub     sp, 0xc                         ; 83 EC 0C
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0073                          ; 75 60
        mov     word ptr [0x1084], 0            ; C7 06 84 10 00 00
        mov     word ptr [0x108a], 0            ; C7 06 8A 10 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_143                  ; 9A 33 00 00 00 [FIXUP]
        cmp     word ptr [0x7a8], 0             ; 83 3E A8 07 00
        jne     L_0037                          ; 75 09
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0037
L_0037:
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        jne     L_006A                          ; 75 2C
        cmp     word ptr [0x7b2], 0             ; 83 3E B2 07 00
        je      L_006A                          ; 74 25
        push    word ptr [0x13ca]               ; FF 36 CA 13
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; constant VK_RETURN
        mov     ax, 0xd                         ; B8 0D 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A BA 02 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A C0 02 00 00 [FIXUP]
        mov     word ptr [0x7b2], 0             ; C7 06 B2 07 00 00
;   [conditional branch target (if/else)] L_006A
L_006A:
        mov     word ptr [0x708], 1             ; C7 06 08 07 01 00
        jmp     L_01CF                          ; E9 5C 01
;   [conditional branch target (if/else)] L_0073
L_0073:
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A 84 00 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        sub     ax, word ptr [0x10f8]           ; 2B 06 F8 10
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        sub     ax, word ptr [0x1100]           ; 2B 06 00 11
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [0x708], 0             ; 83 3E 08 07 00
        je      L_00C0                          ; 74 0F
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        jne     L_00C0                          ; 75 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_118                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00C0
L_00C0:
        push    word ptr [0x10ae]               ; FF 36 AE 10
        ;   ^ arg hWnd
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x10f8]               ; FF 36 F8 10
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 08 01 00 00 [FIXUP]
        push    word ptr [0x10ac]               ; FF 36 AC 10
        ;   ^ arg hWnd
        push    word ptr [0x13d8]               ; FF 36 D8 13
        ;   ^ arg x
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg y
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [bp + 0xa]         ; 03 46 0A
        sub     ax, word ptr [0x13d8]           ; 2B 06 D8 13
        sub     ax, word ptr [0x10f8]           ; 2B 06 F8 10
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [0x1100]               ; FF 36 00 11
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 23 01 00 00 [FIXUP]
        push    word ptr [0xee8]                ; FF 36 E8 0E
        ;   ^ arg hWnd
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg y
        push    word ptr [0x10f8]               ; FF 36 F8 10
        ;   ^ arg nWidth
        push    word ptr [0x1100]               ; FF 36 00 11
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 3E 01 00 00 [FIXUP]
        push    word ptr [0x13ca]               ; FF 36 CA 13
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg y
        push    word ptr [0x13d8]               ; FF 36 D8 13
        ;   ^ arg nWidth
        push    word ptr [0x1100]               ; FF 36 00 11
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A 68 01 00 00 [FIXUP]
        cmp     word ptr [0x7a6], 0             ; 83 3E A6 07 00
        je      L_0175                          ; 74 2C
        mov     ax, word ptr [0x658]            ; A1 58 06
        sub     ax, word ptr [0x108c]           ; 2B 06 8C 10
        inc     ax                              ; 40
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    word ptr [0x7a6]                ; FF 36 A6 07
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg nWidth
        push    word ptr [0x658]                ; FF 36 58 06
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A B9 01 00 00 [FIXUP]
        push    word ptr [0x7a6]                ; FF 36 A6 07
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 7A 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0175
L_0175:
        push    word ptr [0x10ae]               ; FF 36 AE 10
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 83 01 00 00 [FIXUP]
        push    word ptr [0x10ac]               ; FF 36 AC 10
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 8C 01 00 00 [FIXUP]
        push    word ptr [0xee8]                ; FF 36 E8 0E
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A 95 01 00 00 [FIXUP]
        push    word ptr [0x13ca]               ; FF 36 CA 13
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x10aa], 0            ; 83 3E AA 10 00
        je      L_01BD                          ; 74 1D
        push    word ptr [0x10aa]               ; FF 36 AA 10
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg y
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01BD
L_01BD:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg hWnd
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> VALIDATERECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.VALIDATERECT           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x708], 0             ; C7 06 08 07 00 00
;   [unconditional branch target] L_01CF
L_01CF:
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        cmp     word ptr [0x322], 0xf           ; 83 3E 22 03 0F
        je      L_01F8                          ; 74 09
        push    word ptr [0x322]                ; FF 36 22 03
        call    far _entry_156                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01F8
L_01F8:
        or      byte ptr [0x107e], 1            ; 80 0E 7E 10 01
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x1084], ax           ; A3 84 10
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x108a], ax           ; A3 8A 10
        call    far _entry_216                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        cmp     dx, word ptr [0x1094]           ; 3B 16 94 10
        jl      L_0286                          ; 7C 6C
        jg      L_0222                          ; 7F 06
        cmp     ax, word ptr [0x1092]           ; 3B 06 92 10
        jb      L_0286                          ; 72 64
;   [conditional branch target (if/else)] L_0222
L_0222:
        cmp     byte ptr [0x1081], 0            ; 80 3E 81 10 00
        jbe     L_0286                          ; 76 5D
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        cdq                                     ; 99
        mov     bl, byte ptr [0x1081]           ; 8A 1E 81 10
        sub     bh, bh                          ; 2A FF
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     si, word ptr [0x10b4]           ; 8B 36 B4 10
        add     bx, word ptr [si]               ; 03 1C
        sub     bx, 0x10                        ; 83 EB 10
        mov     word ptr [bp - 8], bx           ; 89 5E F8
        mov     cx, word ptr [bx + 6]           ; 8B 4F 06
        mov     si, word ptr [bx + 8]           ; 8B 77 08
        add     cx, ax                          ; 03 C8
        adc     si, dx                          ; 13 F2
        cmp     si, word ptr [bp - 4]           ; 3B 76 FC
        jl      L_0286                          ; 7C 31
        jg      L_025C                          ; 7F 05
        cmp     cx, word ptr [bp - 6]           ; 3B 4E FA
        jbe     L_0286                          ; 76 2A
;   [conditional branch target (if/else)] L_025C
L_025C:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0286                          ; 75 23
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A 82 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_215                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x322]                ; FF 36 22 03
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_152                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0286
L_0286:
        pop     si                              ; 5E
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
        cmp     word ptr [0x798], 0             ; 83 3E 98 07 00
        je      L_02E7                          ; 74 44
        cmp     word ptr [0x79a], 0             ; 83 3E 9A 07 00
        jne     L_02B1                          ; 75 07
        cmp     word ptr [0x79c], 0             ; 83 3E 9C 07 00
        je      L_02CC                          ; 74 1B
;   [conditional branch target (if/else)] L_02B1
L_02B1:
        push    word ptr [0x798]                ; FF 36 98 07
        ;   ^ arg hDC
        push    word ptr [0xe06]                ; FF 36 06 0E
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x79c], ax            ; A3 9C 07
        mov     word ptr [0x79a], ax            ; A3 9A 07
;   [conditional branch target (if/else)] L_02CC
L_02CC:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_214                  ; 9A 16 03 00 00 [FIXUP]
        push    word ptr [0x798]                ; FF 36 98 07
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 26 03 00 00 [FIXUP]
        mov     word ptr [0x798], 0             ; C7 06 98 07 00 00
;   [conditional branch target (if/else)] L_02E7
L_02E7:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_02F2                          ; 74 05
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02FD                          ; E8 0B 00
;   [conditional branch target (if/else)] L_02F2
L_02F2:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: DELETEDC, GETCARETBLINKTIME, KILLTIMER (+2 more).

;-------------------------------------------------------------------------
; sub_02FD   offset=0x02FD  size=93 instr  segment=seg13.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   GETCARETBLINKTIME
;   KILLTIMER
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETTIMER
;-------------------------------------------------------------------------
;   [sub-routine] L_02FD
L_02FD:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x79e], 0             ; 83 3E 9E 07 00
        je      L_034B                          ; 74 3D
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_214                  ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x31c], 0             ; 83 3E 1C 03 00
        je      L_032C                          ; 74 0B
        push    word ptr [0x79e]                ; FF 36 9E 07
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0339                          ; EB 0D
;   [conditional branch target (if/else)] L_032C
L_032C:
        push    word ptr [0x780]                ; FF 36 80 07
        ;   ^ arg hWnd
        push    word ptr [0x79e]                ; FF 36 9E 07
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0339
L_0339:
        mov     word ptr [0x79e], 0             ; C7 06 9E 07 00 00
        cmp     word ptr [0x2de], -1            ; 83 3E DE 02 FF
        je      L_034B                          ; 74 05
        call    far _entry_219                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_034B
L_034B:
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
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        jne     L_0399                          ; 75 34
        mov     word ptr [0x7ae], 1             ; C7 06 AE 07 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e36                      ; B8 36 1E
        push    ax                              ; 50
        call    far USER.GETCARETBLINKTIME      ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0xf28], 0             ; 83 3E 28 0F 00
        jne     L_0394                          ; 75 0C
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e36                      ; B8 36 1E
        push    ax                              ; 50
        call    far _entry_218                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0394
L_0394:
        call    far _entry_217                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0399
L_0399:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x7ae], 0             ; 83 3E AE 07 00
        je      L_03DA                          ; 74 25
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x1e36                      ; B8 36 1E
        push    ax                              ; 50
        call    far USER.KILLTIMER              ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7ae], 0             ; C7 06 AE 07 00 00
        mov     word ptr [0x7c], 0              ; C7 06 7C 00 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_03DA
L_03DA:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
