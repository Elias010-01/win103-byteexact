; ======================================================================
; PAINT / seg26.asm   (segment 26 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         5
; Total instructions:                 1046
; 
; Classification (pass8):
;   C-origin (high+medium):              5
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     27 (11 unique)
;   Top:
;        4  BITBLT
;        4  DELETEDC
;        3  SETRECT
;        3  PATBLT
;        3  SELECTOBJECT
;        3  COPYRECT
;        2  CREATEBITMAP
;        2  GETSTOCKOBJECT
; ======================================================================
; AUTO-GENERATED from original PAINT segment 26
; segment_size=2859 bytes, flags=0xf130
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
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        je      L_0069                          ; 74 58
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0053                          ; 74 3C
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xbf2]                ; FF 36 F2 0B
        push    word ptr [0xbf0]                ; FF 36 F0 0B
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0035                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0083                          ; E8 50 00
        jmp     L_0078                          ; EB 43
;   [conditional branch target (if/else)] L_0035
L_0035:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.GETPARENT              ; 9A 3F 02 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_125                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x564], 0             ; C7 06 64 05 00 00
        jmp     L_0069                          ; EB 16
;   [conditional branch target (if/else)] L_0053
L_0053:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0061                          ; 74 08
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
        jmp     L_0078                          ; EB 17
;   [conditional branch target (if/else)] L_0061
L_0061:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_03D5                          ; E8 6E 03
        jmp     L_0078                          ; EB 0F
;   [branch target] L_0069
L_0069:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0166                          ; E8 EE 00
;   [unconditional branch target] L_0078
L_0078:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: BITBLT, DELETEDC, GETKEYSTATE (+1 more).

;-------------------------------------------------------------------------
; sub_0083   offset=0x0083  size=76 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETKEYSTATE
;   SETRECT
;
; Near calls (internal): L_0A3E
;-------------------------------------------------------------------------
;   [sub-routine] L_0083
L_0083:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 B0 09
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xa08], ax            ; A3 08 0A
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xa0a], ax            ; A3 0A 0A
        mov     ax, 0xa00                       ; B8 00 0A
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0xa08]                ; FF 36 08 0A
        push    word ptr [0xa0a]                ; FF 36 0A 0A
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        sub     ax, word ptr [0xdba]            ; 2B 06 BA 0D
        add     ax, word ptr [0xbf0]            ; 03 06 F0 0B
        push    ax                              ; 50
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        sub     ax, word ptr [0xdbc]            ; 2B 06 BC 0D
        add     ax, word ptr [0xbf2]            ; 03 06 F2 0B
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A CA 01 00 00 [FIXUP]
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A F2 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_00ED                          ; 7D 08
        mov     word ptr [0x56a], 2             ; C7 06 6A 05 02 00
        jmp     L_0160                          ; EB 73
;   [conditional branch target (if/else)] L_00ED
L_00ED:
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_015A                          ; 7D 60
        mov     word ptr [0x56a], 1             ; C7 06 6A 05 01 00
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 11 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 4E 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 54 01 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0160                          ; EB 06
;   [error/early exit] L_015A
L_015A:
        mov     word ptr [0x56a], 0             ; C7 06 6A 05 00 00
;   [fall-through exit] L_0160
L_0160:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: BITBLT, CREATEBITMAP, DELETEDC (+6 more).

;-------------------------------------------------------------------------
; sub_0166   offset=0x0166  size=142 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   COPYRECT
;   GETPARENT
;   SETRECT
;
; Near calls (internal): L_02D8
;-------------------------------------------------------------------------
;   [sub-routine] L_0166
L_0166:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_017A                          ; 75 08
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 5E 01
;   [conditional branch target (if/else)] L_017A
L_017A:
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jge     L_018D                          ; 7D 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_0190                          ; EB 03
;   [conditional branch target (if/else)] L_018D
L_018D:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_0190
L_0190:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jge     L_019F                          ; 7D 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01A2                          ; EB 03
;   [conditional branch target (if/else)] L_019F
L_019F:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_01A2
L_01A2:
        push    ax                              ; 50
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        cmp     word ptr [0xbf0], ax            ; 39 06 F0 0B
        jle     L_01B1                          ; 7E 05
        mov     ax, word ptr [0xbf0]            ; A1 F0 0B
        jmp     L_01B4                          ; EB 03
;   [conditional branch target (if/else)] L_01B1
L_01B1:
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
;   [unconditional branch target] L_01B4
L_01B4:
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        cmp     word ptr [0xbf2], ax            ; 39 06 F2 0B
        jle     L_01C4                          ; 7E 05
        mov     ax, word ptr [0xbf2]            ; A1 F2 0B
        jmp     L_01C7                          ; EB 03
;   [conditional branch target (if/else)] L_01C4
L_01C4:
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
;   [unconditional branch target] L_01C7
L_01C7:
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 02 01
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_01DF                          ; 75 03
        jmp     L_02D2                          ; E9 F3 00
;   [conditional branch target (if/else)] L_01DF
L_01DF:
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [0xbc6], ax            ; A3 C6 0B
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [0xbc8], ax            ; A3 C8 0B
        mov     ax, 0xc96                       ; B8 96 0C
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 0D 02 00 00 [FIXUP]
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1170], ax           ; A3 70 11
        or      ax, ax                          ; 0B C0
        jne     L_0235                          ; 75 03
        jmp     L_02CA                          ; E9 95 00
;   [conditional branch target (if/else)] L_0235
L_0235:
        mov     word ptr [0x56a], 0xffff        ; C7 06 6A 05 FF FF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_143                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 5A 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCSrc
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg xSrc
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A B3 04 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A ED 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 47 03 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A C4 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 4C 01 00 00 [FIXUP]
        jmp     L_02D2                          ; EB 08
;   [unconditional branch target] L_02CA
L_02CA:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 06 00
;   [fall-through exit] L_02D2
L_02D2:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (1 use)
;   Locals:
;     [bp-0x4]   HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: PATBLT, SELECTOBJECT.

;-------------------------------------------------------------------------
; sub_02D8   offset=0x02D8  size=105 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_02D8
L_02D8:
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
        ;   ^ arg hDC
        push    word ptr [0xacc]                ; FF 36 CC 0A
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A C6 03 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [0xdba]            ; 3B 06 BA 0D
        jg      L_030A                          ; 7F 0B
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        inc     ax                              ; 40
        cmp     ax, word ptr [0xdbc]            ; 3B 06 BC 0D
        jle     L_0327                          ; 7E 1D
;   [conditional branch target (if/else)] L_030A
L_030A:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        jmp     L_03B1                          ; E9 8A 00
;   [conditional branch target (if/else)] L_0327
L_0327:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        ;   ^ arg nWidth
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 6E 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 96 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        dec     ax                              ; 48
        dec     ax                              ; 48
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A BB 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_03B1
L_03B1:
        push    ax                              ; 50
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: BITBLT, CREATEBITMAP, DELETEDC (+3 more).

;-------------------------------------------------------------------------
; sub_03D5   offset=0x03D5  size=636 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   DELETEDC(HDC hDC) -> BOOL
;   COPYRECT
;   INVERTRECT
;   SETRECT
;
; Near calls (internal): L_02D8, L_0A3E
;-------------------------------------------------------------------------
;   [sub-routine] L_03D5
L_03D5:
        ;   = cProc <32> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x20                        ; 83 EC 20
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0xa00]            ; A1 00 0A
        cmp     word ptr [0xc8a], ax            ; 39 06 8A 0C
        jle     L_03EB                          ; 7E 05
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        jmp     L_03EE                          ; EB 03
;   [conditional branch target (if/else)] L_03EB
L_03EB:
        mov     ax, word ptr [0xa00]            ; A1 00 0A
;   [unconditional branch target] L_03EE
L_03EE:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa04]            ; A1 04 0A
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jge     L_03FE                          ; 7D 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0401                          ; EB 03
;   [conditional branch target (if/else)] L_03FE
L_03FE:
        mov     ax, word ptr [0xa04]            ; A1 04 0A
;   [unconditional branch target] L_0401
L_0401:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0xa02]            ; A1 02 0A
        cmp     word ptr [0xc8c], ax            ; 39 06 8C 0C
        jle     L_0412                          ; 7E 05
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        jmp     L_0415                          ; EB 03
;   [conditional branch target (if/else)] L_0412
L_0412:
        mov     ax, word ptr [0xa02]            ; A1 02 0A
;   [unconditional branch target] L_0415
L_0415:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xa06]            ; A1 06 0A
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jge     L_0425                          ; 7D 05
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0428                          ; EB 03
;   [conditional branch target (if/else)] L_0425
L_0425:
        mov     ax, word ptr [0xa06]            ; A1 06 0A
;   [unconditional branch target] L_0428
L_0428:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0xa08]            ; A1 08 0A
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        mov     ax, word ptr [0xa0a]            ; A1 0A 0A
        sub     word ptr [bp - 8], ax           ; 29 46 F8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        sub     ax, word ptr [0x9fc]            ; 2B 06 FC 09
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [0x9fe]            ; 2B 06 FE 09
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 8]               ; FF 76 F8
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A C8 00 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7C 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 05 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 4D FE
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        push    word ptr [bp - 0x14]            ; FF 76 EC
        ;   ^ arg x
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg y
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, word ptr [bp - 0x14]        ; 2B 46 EC
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 8A 05 00 00 [FIXUP]
        cmp     word ptr [0x56a], 2             ; 83 3E 6A 05 02
        je      L_04D8                          ; 74 1A
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        jmp     L_04EE                          ; EB 16
;   [conditional branch target (if/else)] L_04D8
L_04D8:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     word ptr [bp - 0x1c], 1         ; C7 46 E4 01 00
        mov     word ptr [bp - 0x1e], 1         ; C7 46 E2 01 00
;   [unconditional branch target] L_04EE
L_04EE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_04F9                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_04FE                          ; EB 05
;   [conditional branch target (if/else)] L_04F9
L_04F9:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_04FE
L_04FE:
        cmp     ax, word ptr [0xbc6]            ; 3B 06 C6 0B
        jl      L_0507                          ; 7C 03
        jmp     L_0657                          ; E9 50 01
;   [conditional branch target (if/else)] L_0507
L_0507:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0519                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_051B                          ; EB 02
;   [conditional branch target (if/else)] L_0519
L_0519:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_051B
L_051B:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jl      L_0524                          ; 7C 03
        jmp     L_0657                          ; E9 33 01
;   [conditional branch target (if/else)] L_0524
L_0524:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_058E                          ; 74 64
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_0534                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_053B                          ; EB 07
;   [conditional branch target (if/else)] L_0534
L_0534:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0xbc8]            ; 03 06 C8 0B
;   [unconditional branch target] L_053B
L_053B:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        push    ax                              ; 50
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0559                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_055B                          ; EB 02
;   [conditional branch target (if/else)] L_0559
L_0559:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_055B
L_055B:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jge     L_0570                          ; 7D 0F
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_056C                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0573                          ; EB 07
;   [conditional branch target (if/else)] L_056C
L_056C:
        mov     ax, si                          ; 8B C6
        jmp     L_0573                          ; EB 03
;   [conditional branch target (if/else)] L_0570
L_0570:
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
;   [unconditional branch target] L_0573
L_0573:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 44 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_058E
L_058E:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0597                          ; 75 03
        jmp     L_0680                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0597
L_0597:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_05A9                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_05AB                          ; EB 02
;   [conditional branch target (if/else)] L_05A9
L_05A9:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_05AB
L_05AB:
        cmp     ax, word ptr [0xbc8]            ; 3B 06 C8 0B
        jne     L_05B4                          ; 75 03
        jmp     L_0680                          ; E9 CC 00
;   [conditional branch target (if/else)] L_05B4
L_05B4:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jle     L_05BE                          ; 7E 04
        sub     ax, ax                          ; 2B C0
        jmp     L_05C5                          ; EB 07
;   [conditional branch target (if/else)] L_05BE
L_05BE:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0xbc6]            ; 03 06 C6 0B
;   [unconditional branch target] L_05C5
L_05C5:
        mov     word ptr [bp - 0x20], ax        ; 89 46 E0
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jle     L_05D3                          ; 7E 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_05D5                          ; EB 02
;   [conditional branch target (if/else)] L_05D3
L_05D3:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05D5
L_05D5:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        mov     di, ax                          ; 8B F8
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [0xdb6]            ; 03 06 B6 0D
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0xdb8]            ; 03 06 B8 0D
        push    ax                              ; 50
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_05FD                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_05FF                          ; EB 02
;   [conditional branch target (if/else)] L_05FD
L_05FD:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_05FF
L_05FF:
        cmp     ax, word ptr [0xbc6]            ; 3B 06 C6 0B
        jge     L_0614                          ; 7D 0F
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0610                          ; 7C 05
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0617                          ; EB 07
;   [conditional branch target (if/else)] L_0610
L_0610:
        mov     ax, di                          ; 8B C7
        jmp     L_0617                          ; EB 03
;   [conditional branch target (if/else)] L_0614
L_0614:
        mov     ax, word ptr [0xbc6]            ; A1 C6 0B
;   [unconditional branch target] L_0617
L_0617:
        push    ax                              ; 50
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0623                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0625                          ; EB 02
;   [conditional branch target (if/else)] L_0623
L_0623:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_0625
L_0625:
        cmp     word ptr [0xbc8], ax            ; 39 06 C8 0B
        jle     L_0641                          ; 7E 16
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jl      L_0636                          ; 7C 05
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        jmp     L_0638                          ; EB 02
;   [conditional branch target (if/else)] L_0636
L_0636:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_0638
L_0638:
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xbc8]            ; A1 C8 0B
        sub     ax, cx                          ; 2B C1
        jmp     L_0643                          ; EB 02
;   [conditional branch target (if/else)] L_0641
L_0641:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0643
L_0643:
        push    ax                              ; 50
        push    word ptr [bp - 0x16]            ; FF 76 EA
        mov     ax, word ptr [bp - 0x1c]        ; 8B 46 E4
        add     ax, word ptr [bp - 0x20]        ; 03 46 E0
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        add     ax, word ptr [bp - 4]           ; 03 46 FC
        push    ax                              ; 50
        jmp     L_0673                          ; EB 1C
;   [unconditional branch target] L_0657
L_0657:
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        push    word ptr [bp - 0x16]            ; FF 76 EA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0x1e]            ; FF 76 E2
;   [unconditional branch target] L_0673
L_0673:
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 48 07 00 00 [FIXUP]
;   [unconditional branch target] L_0680
L_0680:
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A FE 01 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 41 FC
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A A3 06 00 00 [FIXUP]
        push    word ptr [bp - 0x18]            ; FF 76 E8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 08 08 00 00 [FIXUP]
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr [0x9fc], ax            ; A3 FC 09
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [0x9fe], ax            ; A3 FE 09
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        push    si                              ; 56
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_06D3                          ; 75 03
        jmp     L_0854                          ; E9 81 01
;   [conditional branch target (if/else)] L_06D3
L_06D3:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 66 03
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [0xdb6]            ; A1 B6 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [0xdb8]            ; A1 B8 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 27 07 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        inc     ax                              ; 40
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nHeight
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nPlanes
        push    ax                              ; 50
        ;   ^ arg nBitCount
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpBits (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBits (low/offset)
        ; --> CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
        call    far GDI.CREATEBITMAP            ; 9A 27 02 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        je      L_074C                          ; 74 27
        push    ax                              ; 50
        call    far _entry_27                   ; 9A E1 08 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 6D 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_074C
L_074C:
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        dec     si                              ; 4E
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    si                              ; 56
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 91 07 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    si                              ; 56
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A B9 07 00 00 [FIXUP]
        mov     si, word ptr [bp - 6]           ; 8B 76 FA
        dec     si                              ; 4E
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    si                              ; 56
        ;   ^ arg nWidth
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A DA 07 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg x
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg y
        push    si                              ; 56
        ;   ^ arg nWidth
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0xc6                        ; B8 C6 00
        mov     dx, 0x88                        ; BA 88 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 00 08 00 00 [FIXUP]
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0814                          ; 74 30
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg nWidth
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg nHeight
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x226                       ; B8 26 02
        mov     dx, 0xbb                        ; BA BB 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 40 08 00 00 [FIXUP]
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 50 08 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0814
L_0814:
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 BC FA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 0C 09 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 8C FA
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A B6 09 00 00 [FIXUP]
;   [unconditional branch target] L_0854
L_0854:
        pop     si                              ; 5E
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
        sub     sp, 0x12                        ; 83 EC 12
        cmp     word ptr [0x564], 0             ; 83 3E 64 05 00
        jne     L_0877                          ; 75 03
        jmp     L_09BA                          ; E9 43 01
;   [conditional branch target (if/else)] L_0877
L_0877:
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 C2 01
        cmp     word ptr [bp + 6], 0x33         ; 83 7E 06 33
        jne     L_08AC                          ; 75 2A
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        jmp     L_08D4                          ; EB 28
;   [conditional branch target (if/else)] L_08AC
L_08AC:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
;   [unconditional branch target] L_08D4
L_08D4:
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A F9 09 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_096E                          ; E9 83 00
;   [loop start] L_08EB
L_08EB:
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg x
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg y
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nWidth
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg xSrc
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 31 09 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg x
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg y
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nWidth
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg xSrc
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 56 09 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg x
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg y
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nWidth
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg xSrc
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg ySrc
        mov     ax, 0x46                        ; B8 46 00
        mov     dx, 0x66                        ; BA 66 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A A6 09 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x33         ; 83 7E 06 33
        jne     L_0968                          ; 75 08
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        dec     word ptr [bp - 0x10]            ; FF 4E F0
        jmp     L_096E                          ; EB 06
;   [conditional branch target (if/else)] L_0968
L_0968:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        dec     word ptr [bp - 0xc]             ; FF 4E F4
;   [unconditional branch target] L_096E
L_096E:
        dec     word ptr [bp - 0x12]            ; FF 4E EE
        cmp     word ptr [bp - 0x12], 0         ; 83 7E EE 00
        jl      L_097A                          ; 7C 03
        jmp     L_08EB                          ; E9 71 FF
;   [conditional branch target (if/else)] L_097A
L_097A:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 56 F9
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDCDest
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 27 0A 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 26 F9
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 2F 0A 00 00 [FIXUP]
;   [unconditional branch target] L_09BA
L_09BA:
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
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0A3E                          ; E8 67 00
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 F9 F8
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.INVERTRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_02D8                          ; E8 E4 F8
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A 70 04 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [0xdba]            ; A1 BA 0D
        sub     ax, word ptr [0xdb6]            ; 2B 06 B6 0D
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [0xdbc]            ; A1 BC 0D
        sub     ax, word ptr [0xdb8]            ; 2B 06 B8 0D
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCSrc
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 9                           ; B8 09 00
        mov     dx, 0x55                        ; BA 55 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 83 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A BC 02 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: BITBLT, DELETEDC, GETSTOCKOBJECT (+3 more).

;-------------------------------------------------------------------------
; sub_0A3E   offset=0x0A3E  size=87 instr  segment=seg26.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   COPYRECT
;-------------------------------------------------------------------------
;   [sub-routine] L_0A3E
L_0A3E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        cmp     word ptr [0x56c], 0             ; 83 3E 6C 05 00
        jl      L_0A55                          ; 7C 03
        jmp     L_0B22                          ; E9 CD 00
;   [conditional branch target (if/else)] L_0A55
L_0A55:
        mov     ax, word ptr [0x56c]            ; A1 6C 05
        neg     ax                              ; F7 D8
        mov     word ptr [0x56c], ax            ; A3 6C 05
        mov     ax, 0x10e8                      ; B8 E8 10
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdb6                       ; B8 B6 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.COPYRECT               ; 9A 8B 06 00 00 [FIXUP]
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A 7D 0A 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0xbf4]                ; FF 36 F4 0B
        call    far _entry_27                   ; 9A 89 0A 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [0x1170]               ; FF 36 70 11
        call    far _entry_27                   ; 9A FD 06 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A D5 0A 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDCDest
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDCSrc
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg xSrc
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg ySrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A 7C 06 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 8E 02 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 94 02 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        push    word ptr [0xdb6]                ; FF 36 B6 0D
        ;   ^ arg x
        push    word ptr [0xdb8]                ; FF 36 B8 0D
        ;   ^ arg y
        push    word ptr [0xbc6]                ; FF 36 C6 0B
        ;   ^ arg nWidth
        push    word ptr [0xbc8]                ; FF 36 C8 0B
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A B4 02 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 16 0B 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 1E 0B 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 9B 06 00 00 [FIXUP]
;   [unconditional branch target] L_0B22
L_0B22:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

PAINT_TEXT ENDS

        END
