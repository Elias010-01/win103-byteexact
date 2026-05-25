; ======================================================================
; PAINT / seg8.asm   (segment 8 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         8
; Total instructions:                 1029
; 
; Classification (pass8):
;   C-origin (high+medium):              8
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     44 (25 unique)
;   Top:
;        5  DELETEDC
;        4  BITBLT
;        3  GETSTOCKOBJECT
;        3  SELECTOBJECT
;        2  PATBLT
;        2  GETDC
;        2  RELEASEDC
;        2  SETCURSOR
; ======================================================================
; AUTO-GENERATED from original PAINT segment 8
; segment_size=3184 bytes, flags=0xf130
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
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0x572]                ; FF 36 72 05
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x572], 0             ; C7 06 72 05 00 00
        push    word ptr [0x574]                ; FF 36 74 05
        call    far USER.SETFOCUS               ; 9A 64 01 00 00 [FIXUP]
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0xc8a], ax            ; 01 06 8A 0C
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0xc8c], ax            ; 01 06 8C 0C
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0x1172], ax           ; 01 06 72 11
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0x1174], ax           ; 01 06 74 11
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     word ptr [0xbf0], ax            ; 01 06 F0 0B
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     word ptr [0xbf2], ax            ; 01 06 F2 0B
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
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     dx, word ptr [0xda8]            ; 8B 16 A8 0D
        mov     cl, 4                           ; B1 04
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1114], ax           ; A3 14 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     dx, word ptr [0xdb4]            ; 8B 16 B4 0D
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
        mov     si, word ptr [0xda8]            ; 8B 36 A8 0D
        add     si, 7                           ; 83 C6 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     si, cl                          ; D3 FE
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, si                          ; 03 C6
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        cmp     word ptr [0x1114], 0            ; 83 3E 14 11 00
        jge     L_00BB                          ; 7D 0C
        mov     word ptr [0x1114], 0            ; C7 06 14 11 00 00
        mov     word ptr [0x1118], si           ; 89 36 18 11
        jmp     L_00D5                          ; EB 1A
;   [conditional branch target (if/else)] L_00BB
L_00BB:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [0x1118], ax           ; 39 06 18 11
        jle     L_00D5                          ; 7E 11
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1114], ax           ; A3 14 11
;   [branch target] L_00D5
L_00D5:
        cmp     word ptr [0x1116], 0            ; 83 3E 16 11 00
        jge     L_00F1                          ; 7D 15
        mov     word ptr [0x1116], 0            ; C7 06 16 11 00 00
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x111a], ax           ; A3 1A 11
        jmp     L_010B                          ; EB 1A
;   [conditional branch target (if/else)] L_00F1
L_00F1:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [0x111a], ax           ; 39 06 1A 11
        jle     L_010B                          ; 7E 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
;   [branch target] L_010B
L_010B:
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0xc8a], ax            ; 29 06 8A 0C
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0xc8c], ax            ; 29 06 8C 0C
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0x1172], ax           ; 29 06 72 11
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0x1174], ax           ; 29 06 74 11
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     word ptr [0xbf0], ax            ; 29 06 F0 0B
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     word ptr [0xbf2], ax            ; 29 06 F2 0B
        mov     ax, 0x832                       ; B8 32 08
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x7e2                       ; B8 E2 07
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x111c]               ; FF 36 1C 11
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x572], ax            ; A3 72 05
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (37 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0174   offset=0x0174  size=37 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0174
L_0174:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        add     si, 7                           ; 83 C6 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     si, cl                          ; D3 FE
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, si                          ; 03 C6
        mov     word ptr [0x1118], ax           ; A3 18 11
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     ax, word ptr [0x1118]           ; A1 18 11
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jg      L_01AC                          ; 7F 0B
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x1118], ax           ; A3 18 11
        sub     ax, si                          ; 2B C6
        mov     word ptr [0x1114], ax           ; A3 14 11
;   [conditional branch target (if/else)] L_01AC
L_01AC:
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jg      L_01C8                          ; 7F 14
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x111a], ax           ; A3 1A 11
        mov     dx, ax                          ; 8B D0
        add     dx, 7                           ; 83 C2 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     dx, cl                          ; D3 FA
        sub     ax, dx                          ; 2B C2
        mov     word ptr [0x1116], ax           ; A3 16 11
;   [error/early exit] L_01C8
L_01C8:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (6 uses)
;   Locals:
;     [bp-0x2]   HDC       (3 uses)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).

;-------------------------------------------------------------------------
; sub_01CF   offset=0x01CF  size=106 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   LINETO(HDC hDC, INT x, INT y) -> BOOL
;   MOVETO(HDC hDC, INT x, INT y) -> DWORD
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_01CF
L_01CF:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     si, word ptr [0x111a]           ; 8B 36 1A 11
        sub     si, word ptr [0x1116]           ; 2B 36 16 11
        mov     di, word ptr [0x1118]           ; 8B 3E 18 11
        sub     di, word ptr [0x1114]           ; 2B 3E 14 11
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xDest
        push    ax                              ; 50
        ;   ^ arg yDest
        mov     ax, di                          ; 8B C7
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        ;   ^ arg wDest
        mov     ax, si                          ; 8B C6
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        ;   ^ arg hDest
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        push    di                              ; 57
        ;   ^ arg wSrc
        push    si                              ; 56
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
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A A6 02 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        ;   ^ arg x
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg y
        ; --> MOVETO(HDC hDC, INT x, INT y) -> DWORD
        call    far GDI.MOVETO                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        ; --> LINETO(HDC hDC, INT x, INT y) -> BOOL
        call    far GDI.LINETO                  ; 9A 90 02 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 5D 03 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Mixed routine using: DELETEDC, GETPIXEL, GETSTOCKOBJECT (+2 more).

;-------------------------------------------------------------------------
; sub_02D7   offset=0x02D7  size=96 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   GETPIXEL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_02D7
L_02D7:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [0x552], 1             ; C7 06 52 05 01 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7B 04 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0312                          ; 74 1D
        push    ax                              ; 50
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, word ptr [0xc8a]            ; 03 06 8A 0C
        push    ax                              ; 50
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     ax, word ptr [0xc8c]            ; 03 06 8C 0C
        push    ax                              ; 50
        call    far GDI.GETPIXEL                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xdac], ax            ; A3 AC 0D
        mov     word ptr [0xdae], dx            ; 89 16 AE 0D
;   [conditional branch target (if/else)] L_0312
L_0312:
        mov     ax, word ptr [0xdac]            ; A1 AC 0D
        or      ax, word ptr [0xdae]            ; 0B 06 AE 0D
        je      L_0320                          ; 74 05
        mov     ax, 4                           ; B8 04 00
        jmp     L_0322                          ; EB 02
;   [conditional branch target (if/else)] L_0320
L_0320:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0322
L_0322:
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 57 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 68 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, word ptr [0xc8a]            ; 03 06 8A 0C
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     ax, word ptr [0xc8c]            ; 03 06 8C 0C
        push    ax                              ; 50
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 85 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A B5 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 5D 02 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        push    word ptr [0xc8a]                ; FF 36 8A 0C
        ;   ^ arg x
        push    word ptr [0xc8c]                ; FF 36 8C 0C
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A CE 03 00 00 [FIXUP]
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8a]            ; 8B 16 8A 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jl      L_03AF                          ; 7C 12
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8c]            ; 8B 16 8C 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jge     L_03D2                          ; 7D 23
;   [conditional branch target (if/else)] L_03AF
L_03AF:
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDC
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        shl     ax, cl                          ; D3 E0
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_03D2
L_03D2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: BITBLT, DELETEDC.

;-------------------------------------------------------------------------
; sub_03D8   offset=0x03D8  size=112 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;
; Near calls (internal): L_01CF
;-------------------------------------------------------------------------
;   [sub-routine] L_03D8
L_03D8:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0x1172]           ; A1 72 11
        sub     ax, word ptr [0xc8a]            ; 2B 06 8A 0C
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x1174]           ; A1 74 11
        sub     ax, word ptr [0xc8c]            ; 2B 06 8C 0C
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_040E                          ; 7C 16
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1118]           ; 03 06 18 11
        cmp     ax, word ptr [0xda8]            ; 3B 06 A8 0D
        jle     L_0421                          ; 7E 1C
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [0x1118]           ; 2B 06 18 11
        jmp     L_041E                          ; EB 10
;   [conditional branch target (if/else)] L_040E
L_040E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0x1114]           ; 03 06 14 11
        or      ax, ax                          ; 0B C0
        jge     L_0421                          ; 7D 08
        mov     ax, word ptr [0x1114]           ; A1 14 11
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_041E
L_041E:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_0421
L_0421:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_043D                          ; 7C 16
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x111a]           ; 03 06 1A 11
        cmp     ax, word ptr [0xdb4]            ; 3B 06 B4 0D
        jle     L_0450                          ; 7E 1C
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [0x111a]           ; 2B 06 1A 11
        jmp     L_044D                          ; EB 10
;   [conditional branch target (if/else)] L_043D
L_043D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        or      ax, ax                          ; 0B C0
        jge     L_0450                          ; 7D 08
        mov     ax, word ptr [0x1116]           ; A1 16 11
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_044D
L_044D:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0450
L_0450:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [0x1114], ax           ; 01 06 14 11
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [0x1116], ax           ; 01 06 16 11
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     word ptr [0x1118], ax           ; 01 06 18 11
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     word ptr [0x111a], ax           ; 01 06 1A 11
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0476                          ; 75 04
        or      ax, ax                          ; 0B C0
        je      L_04B9                          ; 74 43
;   [conditional branch target (if/else)] L_0476
L_0476:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A DB 04 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 0D 05 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 15 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04B9
L_04B9:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_04CA                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_01CF                          ; E8 07 FD
        jmp     L_0519                          ; EB 4F
;   [conditional branch target (if/else)] L_04CA
L_04CA:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_04D6                          ; 75 06
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0519                          ; 74 43
;   [conditional branch target (if/else)] L_04D6
L_04D6:
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A DC 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 4B 02 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0519
L_0519:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: GETDC, GETKEYSTATE, GETPARENT (+4 more).

;-------------------------------------------------------------------------
; sub_051F   offset=0x051F  size=205 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   GETKEYSTATE
;   GETPARENT
;   RELEASECAPTURE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCAPTURE
;   SETCURSOR
;
; Near calls (internal): L_02D7, L_03D8, L_0BFF
;-------------------------------------------------------------------------
;   [sub-routine] L_051F
L_051F:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx], 0             ; 26 83 3F 00
        jge     L_0535                          ; 7D 07
        mov     word ptr es:[bx], 0             ; 26 C7 07 00 00
        jmp     L_0544                          ; EB 0F
;   [conditional branch target (if/else)] L_0535
L_0535:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr es:[bx], ax            ; 26 39 07
        jl      L_0544                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr es:[bx], ax            ; 26 89 07
;   [branch target] L_0544
L_0544:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], 0         ; 26 83 7F 02 00
        jge     L_0556                          ; 7D 08
        mov     word ptr es:[bx + 2], 0         ; 26 C7 47 02 00 00
        jmp     L_0567                          ; EB 11
;   [conditional branch target (if/else)] L_0556
L_0556:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr es:[bx + 2], ax        ; 26 39 47 02
        jl      L_0567                          ; 7C 05
        dec     ax                              ; 48
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
;   [branch target] L_0567
L_0567:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0590                          ; 7E 22
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
;   [conditional branch target (if/else)] L_0590
L_0590:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_05B3                          ; 74 1B
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_05A0                          ; 75 03
        jmp     L_0636                          ; E9 96 00
;   [conditional branch target (if/else)] L_05A0
L_05A0:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_05A8                          ; 75 03
        jmp     L_06C9                          ; E9 21 01
;   [conditional branch target (if/else)] L_05A8
L_05A8:
        cmp     ax, 0x203                       ; 3D 03 02
        jne     L_05B0                          ; 75 03
        jmp     L_0728                          ; E9 78 01
;   [conditional branch target (if/else)] L_05B0
L_05B0:
        jmp     L_075C                          ; E9 A9 01
;   [conditional branch target (if/else)] L_05B3
L_05B3:
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        jne     L_05CE                          ; 75 14
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_05D4                          ; 7F 13
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_05D4                          ; 7D 06
;   [conditional branch target (if/else)] L_05CE
L_05CE:
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        jmp     L_05D8                          ; EB 04
;   [conditional branch target (if/else)] L_05D4
L_05D4:
        push    word ptr [0xe10]                ; FF 36 10 0E
;   [unconditional branch target] L_05D8
L_05D8:
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_05E7                          ; 7F 03
        jmp     L_075C                          ; E9 75 01
;   [conditional branch target (if/else)] L_05E7
L_05E7:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0x1172], ax           ; 39 06 72 11
        jne     L_05FC                          ; 75 0C
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0x1174], ax           ; 39 06 74 11
        jne     L_05FC                          ; 75 03
        jmp     L_075C                          ; E9 60 01
;   [conditional branch target (if/else)] L_05FC
L_05FC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        je      L_061B                          ; 74 0D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_03D8                          ; E8 BF FD
        jmp     L_0628                          ; EB 0D
;   [conditional branch target (if/else)] L_061B
L_061B:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_02D7                          ; E8 AF FC
;   [unconditional branch target] L_0628
L_0628:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A B6 06 00 00 [FIXUP]
        jmp     L_075C                          ; E9 26 01
;   [unconditional branch target] L_0636
L_0636:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        je      L_0640                          ; 74 03
        jmp     L_06C2                          ; E9 82 00
;   [conditional branch target (if/else)] L_0640
L_0640:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     word ptr [0xbf0], ax            ; A3 F0 0B
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        sar     ax, cl                          ; D3 F8
        mov     word ptr [0x1174], ax           ; A3 74 11
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        mov     word ptr [0xbf2], ax            ; A3 F2 0B
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0BFF                          ; E8 98 05
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A E2 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A C6 05 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0684                          ; 7D 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0686                          ; EB 02
;   [conditional branch target (if/else)] L_0684
L_0684:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0686
L_0686:
        mov     word ptr [0xaf0], ax            ; A3 F0 0A
        or      ax, ax                          ; 0B C0
        je      L_069F                          ; 74 12
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_03D8                          ; E8 3B FD
        jmp     L_06AF                          ; EB 10
;   [conditional branch target (if/else)] L_069F
L_069F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_02D7                          ; E8 28 FC
;   [unconditional branch target] L_06AF
L_06AF:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 17 07 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_06C2
L_06C2:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_075C                          ; E9 93 00
;   [unconditional branch target] L_06C9
L_06C9:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_06D3                          ; 7F 03
        jmp     L_075C                          ; E9 89 00
;   [conditional branch target (if/else)] L_06D3
L_06D3:
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_075C                          ; 75 7E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 00 06 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0xaf0], 0             ; 83 3E F0 0A 00
        je      L_0700                          ; 74 10
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_03D8                          ; E8 DA FC
        jmp     L_0710                          ; EB 10
;   [conditional branch target (if/else)] L_0700
L_0700:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 2]               ; FF 76 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_02D7                          ; E8 C7 FB
;   [unconditional branch target] L_0710
L_0710:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xaf0], 0             ; C7 06 F0 0A 00 00
        jmp     L_075C                          ; EB 34
;   [unconditional branch target] L_0728
L_0728:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        add     ax, 7                           ; 05 07 00
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8a]            ; 8B 16 8A 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jle     L_075C                          ; 7E 20
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        add     ax, 7                           ; 05 07 00
        sar     ax, cl                          ; D3 F8
        mov     dx, word ptr [0xc8c]            ; 8B 16 8C 0C
        shl     dx, cl                          ; D3 E2
        cmp     ax, dx                          ; 3B C2
        jle     L_075C                          ; 7E 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_76                   ; 9A 6D 08 00 00 [FIXUP]
;   [error/early exit] L_075C
L_075C:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: CLIENTTOSCREEN, GETCURSORPOS, SCREENTOCLIENT (+2 more).

;-------------------------------------------------------------------------
; sub_0762   offset=0x0762  size=153 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CLIENTTOSCREEN
;   GETCURSORPOS
;   SCREENTOCLIENT
;   SETCURSOR
;   SETCURSORPOS
;
; Near calls (internal): L_051F
;-------------------------------------------------------------------------
;   [sub-routine] L_0762
L_0762:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A 5B 09 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A 68 09 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_07B6                          ; 74 0F
        jbe     L_07AC                          ; 76 03
        jmp     L_0903                          ; E9 57 01
;   [conditional branch target (if/else)] L_07AC
L_07AC:
        cmp     ax, 0xd                         ; 3D 0D 00
        jne     L_07B4                          ; 75 03
        jmp     L_0841                          ; E9 8D 00
;   [conditional branch target (if/else)] L_07B4
L_07B4:
        jmp     L_07EE                          ; EB 38
;   [conditional branch target (if/else)] L_07B6
L_07B6:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_07EE                          ; 7C 32
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_07EE                          ; 7D 2A
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jl      L_07EE                          ; 7C 24
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_07EE                          ; 7D 1C
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_07EE                          ; 7F 15
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jl      L_07E5                          ; 7C 06
        push    word ptr [0xe0e]                ; FF 36 0E 0E
        jmp     L_07E9                          ; EB 04
;   [conditional branch target (if/else)] L_07E5
L_07E5:
        push    word ptr [0xe10]                ; FF 36 10 0E
;   [unconditional branch target] L_07E9
L_07E9:
        call    far USER.SETCURSOR              ; 9A D9 05 00 00 [FIXUP]
;   [loop start (also forward branch)] L_07EE
L_07EE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0802                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_051F                          ; E8 1D FD
;   [conditional branch target (if/else)] L_0802
L_0802:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_080B                          ; 74 03
        jmp     L_091E                          ; E9 13 01
;   [conditional branch target (if/else)] L_080B
L_080B:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0814                          ; 74 03
        jmp     L_091E                          ; E9 0A 01
;   [conditional branch target (if/else)] L_0814
L_0814:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0920                          ; E9 06 01
;   [loop start] L_081A
L_081A:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_082D                          ; 7D 0D
        mov     word ptr [0x556], 0             ; C7 06 56 05 00 00
        mov     word ptr [bp - 6], 0x202        ; C7 46 FA 02 02
        jmp     L_07EE                          ; EB C1
;   [conditional branch target (if/else)] L_082D
L_082D:
        cmp     word ptr [0x556], 0             ; 83 3E 56 05 00
        jne     L_07EE                          ; 75 BA
        mov     word ptr [0x556], 1             ; C7 06 56 05 01 00
        mov     word ptr [bp - 6], 0x201        ; C7 46 FA 01 02
        jmp     L_07EE                          ; EB AD
;   [unconditional branch target] L_0841
L_0841:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_084F                          ; 7D 08
        mov     word ptr [0x558], 0             ; C7 06 58 05 00 00
        jmp     L_07EE                          ; EB 9F
;   [conditional branch target (if/else)] L_084F
L_084F:
        cmp     word ptr [0x558], 0             ; 83 3E 58 05 00
        jne     L_07EE                          ; 75 98
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [0x558], 1             ; C7 06 58 05 01 00
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_07EE                          ; 7F 86
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_76                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_07EE                          ; E9 7A FF
;   [loop start] L_0874
L_0874:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_087D                          ; 7D 03
        jmp     L_07EE                          ; E9 71 FF
;   [conditional branch target (if/else)] L_087D
L_087D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_08AD                          ; 74 28
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_0896                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_08B3                          ; 74 24
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_08A7                          ; 74 13
        jmp     L_089A                          ; EB 04
;   [conditional branch target (if/else)] L_0896
L_0896:
        sub     word ptr [bp - 8], 8            ; 83 6E F8 08
;   [loop start (also forward branch)] L_089A
L_089A:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jge     L_08B9                          ; 7D 19
        mov     word ptr [bp - 0xa], 4          ; C7 46 F6 04 00
        jmp     L_08CA                          ; EB 23
;   [conditional branch target (if/else)] L_08A7
L_08A7:
        add     word ptr [bp - 8], 8            ; 83 46 F8 08
        jmp     L_089A                          ; EB ED
;   [conditional branch target (if/else)] L_08AD
L_08AD:
        sub     word ptr [bp - 0xa], 8          ; 83 6E F6 08
        jmp     L_089A                          ; EB E7
;   [conditional branch target (if/else)] L_08B3
L_08B3:
        add     word ptr [bp - 0xa], 8          ; 83 46 F6 08
        jmp     L_089A                          ; EB E1
;   [conditional branch target (if/else)] L_08B9
L_08B9:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_08CA                          ; 7C 09
        dec     ax                              ; 48
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [branch target] L_08CA
L_08CA:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_08D7                          ; 7D 07
        mov     word ptr [bp - 8], 4            ; C7 46 F8 04 00
        jmp     L_08E8                          ; EB 11
;   [conditional branch target (if/else)] L_08D7
L_08D7:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_08E8                          ; 7C 09
        dec     ax                              ; 48
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [branch target] L_08E8
L_08E8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A B1 09 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A BC 09 00 00 [FIXUP]
        jmp     L_07EE                          ; E9 EB FE
;   [unconditional branch target] L_0903
L_0903:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_090B                          ; 75 03
        jmp     L_081A                          ; E9 0F FF
;   [conditional branch target (if/else)] L_090B
L_090B:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_0913                          ; 73 03
        jmp     L_07EE                          ; E9 DB FE
;   [conditional branch target (if/else)] L_0913
L_0913:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_091B                          ; 77 03
        jmp     L_0874                          ; E9 59 FF
;   [conditional branch target (if/else)] L_091B
L_091B:
        jmp     L_07EE                          ; E9 D0 FE
;   [fall-through exit] L_091E
L_091E:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_0920
L_0920:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Drawing routine (6 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0926   offset=0x0926  size=278 instr  segment=seg8.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
;   CLIENTTOSCREEN
;   DEFWINDOWPROC(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
;   GETCURSORPOS
;   GETDC(HWND hWnd) -> HDC
;   GETSYSTEMMETRICS
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SCREENTOCLIENT
;   SETCURSORPOS
;   SHOWCURSOR
;
; Near calls (internal): L_0174, L_01CF, L_051F, L_0762, L_0926
;-------------------------------------------------------------------------
;   [sub-routine] L_0926
L_0926:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_093C                          ; 74 03
        jmp     L_09C0                          ; E9 84 00
;   [conditional branch target (if/else)] L_093C
L_093C:
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0947                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0949                          ; EB 02
;   [conditional branch target (if/else)] L_0947
L_0947:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0949
L_0949:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_09C0                          ; 75 6B
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jl      L_0988                          ; 7C 16
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0988                          ; 7D 0E
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_0988                          ; 7C 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_09C0                          ; 7C 38
;   [conditional branch target (if/else)] L_0988
L_0988:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        and     al, 0xf8                        ; 24 F8
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_09C0
L_09C0:
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
        sub     sp, 0x26                        ; 83 EC 26
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_09E6                          ; 76 03
        jmp     L_0A76                          ; E9 90 00
;   [conditional branch target (if/else)] L_09E6
L_09E6:
        cmp     ax, 7                           ; 3D 07 00
        jae     L_0A38                          ; 73 4D
        cmp     ax, 5                           ; 3D 05 00
        je      L_0A43                          ; 74 53
        jmp     L_0A1C                          ; EB 2A
;   [loop start] L_09F2
L_09F2:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_051F                          ; E8 1F FB
;   [loop start] L_0A00
L_0A00:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0A94                          ; E9 8B 00
;   [loop start] L_0A09
L_0A09:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0762                          ; E8 4A FD
        or      ax, ax                          ; 0B C0
        je      L_0A00                          ; 74 E4
;   [loop start (also forward branch)] L_0A1C
L_0A1C:
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
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        jmp     L_0A00                          ; EB C8
;   [conditional branch target (if/else)] L_0A38
L_0A38:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_0926                          ; E8 E5 FE
        jmp     L_0A00                          ; EB BD
;   [conditional branch target (if/else)] L_0A43
L_0A43:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_0174                          ; E8 25 F7
        jmp     L_0A00                          ; EB AF
;   [loop start] L_0A51
L_0A51:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> BEGINPAINT(HWND hWnd, LPVOID lpPaintStruct) -> HDC
        call    far USER.BEGINPAINT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp - 0x26]            ; FF 76 DA
        call    L_01CF                          ; E8 68 F7
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0A00                          ; EB 8A
;   [unconditional branch target] L_0A76
L_0A76:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_0A51                          ; 74 D6
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_0A1C                          ; 72 9C
        cmp     ax, 0x101                       ; 3D 01 01
        jbe     L_0A09                          ; 76 84
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_0A1C                          ; 72 92
        cmp     ax, 0x203                       ; 3D 03 02
        ja      L_0A92                          ; 77 03
        jmp     L_09F2                          ; E9 60 FF
;   [conditional branch target (if/else)] L_0A92
L_0A92:
        jmp     L_0A1C                          ; EB 88
;   [unconditional branch target] L_0A94
L_0A94:
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
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 1D 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 24 03 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 30 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg x
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 55 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A CB 0B 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_01CF                          ; E8 CF F6
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 29 0B 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 11 0C 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        ;   ^ arg hDCDest
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg x
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 90 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg x
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A C3 0B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg x
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 53 0C 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A D3 0B 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 5B 0C 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 6B 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        push    ax                              ; 50
        call    L_01CF                          ; E8 E6 F5
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 2F 06 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x4]   HDC       (2 uses)
;     [bp-0x6]   HDC       (2 uses)

; Description (heuristic):
;   Mixed routine using: BITBLT, DELETEDC.

;-------------------------------------------------------------------------
; sub_0BFF   offset=0x0BFF  size=42 instr  segment=seg8.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_0BFF
L_0BFF:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 1D 0C 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A E8 02 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg x
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg y
        mov     ax, word ptr [0x1118]           ; A1 18 11
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0x111a]           ; A1 1A 11
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg xSrc
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A AD 04 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 63 0C 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A CB 02 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PAINT_TEXT ENDS

        END
