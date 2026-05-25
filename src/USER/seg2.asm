; ======================================================================
; USER / seg2.asm   (segment 2 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        36
; Total instructions:                 2375
; 
; Classification (pass8):
;   C-origin (high+medium):             32
;   ASM-origin (high+medium):            0
;   Unclear:                             4
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     42 (14 unique)
;   Top:
;       13  LOCALUNLOCK
;       12  LOCALLOCK
;        3  SELECTOBJECT
;        2  PATBLT
;        2  SETBKMODE
;        2  GETTEXTMETRICS
;        1  SETBKCOLOR
;        1  SETTEXTCOLOR
; ======================================================================
; AUTO-GENERATED from original USER segment 2
; segment_size=6073 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: PATBLT, SELECTOBJECT, SETBKCOLOR (+3 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=171 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
;   LOCALLOCK(HANDLE hMem) -> PSTR
;
; Near calls (internal): L_021A
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <24> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x18                        ; 83 EC 18
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 05 03 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     si, di                          ; 8B F7
        add     si, 0xc                         ; 83 C6 0C
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A 2C 00 00 00 [FIXUP]
        push    word ptr [0x3b2]                ; FF 36 B2 03
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A E1 01 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_01CE                          ; E9 96 01
;   [loop start] L_0038
L_0038:
        mov     al, byte ptr [si]               ; 8A 04
        and     al, 0x60                        ; 24 60
        cmp     al, 0x20                        ; 3C 20
        jne     L_0073                          ; 75 33
        test    byte ptr [di], 1                ; F6 05 01
        je      L_0073                          ; 74 2E
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x3c8]                ; FF 36 C8 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 81 00 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        sub     ax, word ptr [0x47e]            ; 2B 06 7E 04
        push    ax                              ; 50
        ;   ^ arg x
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0x47e]                ; FF 36 7E 04
        ;   ^ arg nWidth
        push    word ptr [di + 6]               ; FF 75 06
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A A4 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0073
L_0073:
        cmp     word ptr [si + 0xe], 0          ; 83 7C 0E 00
        jne     L_00AB                          ; 75 32
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x3c8]                ; FF 36 C8 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 78 01 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [si + 6]               ; FF 74 06
        ;   ^ arg x
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [si + 4]           ; 03 44 04
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [si + 0xa]             ; FF 74 0A
        ;   ^ arg nWidth
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 94 01 00 00 [FIXUP]
        jmp     L_01C8                          ; E9 1D 01
;   [conditional branch target (if/else)] L_00AB
L_00AB:
        test    byte ptr [si], 8                ; F6 04 08
        je      L_00F4                          ; 74 44
        test    byte ptr [di], 1                ; F6 05 01
        je      L_00F4                          ; 74 3F
        mov     ax, word ptr [si + 8]           ; 8B 44 08
        sub     ax, word ptr [0x452]            ; 2B 06 52 04
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jge     L_00C8                          ; 7D 05
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [conditional branch target (if/else)] L_00C8
L_00C8:
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x3ca]                ; FF 36 CA 03
        push    word ptr [0x44e]                ; FF 36 4E 04
        push    word ptr [si + 6]               ; FF 74 06
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [si + 4]           ; 03 44 04
        push    ax                              ; 50
        push    word ptr [0x450]                ; FF 36 50 04
        push    word ptr [0x452]                ; FF 36 52 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_4ECE                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00F4
L_00F4:
        mov     word ptr [bp - 0x14], 1         ; C7 46 EC 01 00
        mov     al, byte ptr [si]               ; 8A 04
        and     al, 3                           ; 24 03
        cmp     al, 1                           ; 3C 01
        jne     L_0137                          ; 75 36
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [0x3ca]                ; FF 36 CA 03
        mov     ax, OFFSET _entry_352           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_352           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        sub     dx, dx                          ; 2B D2
        mov     dx, ax                          ; 8B D0
        sub     ax, ax                          ; 2B C0
        mov     ax, si                          ; 8B C6
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 4]               ; FF 74 04
        push    word ptr [si + 0xa]             ; FF 74 0A
        push    word ptr [si + 8]               ; FF 74 08
        call    far _SEG1_4D62                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0198                          ; 75 63
        jmp     L_013C                          ; EB 05
;   [conditional branch target (if/else)] L_0137
L_0137:
        mov     word ptr [bp - 0x14], 0         ; C7 46 EC 00 00
;   [unconditional branch target] L_013C
L_013C:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x3fc]                ; FF 36 FC 03
        ;   ^ arg clrText (high/segment)
        push    word ptr [0x3fa]                ; FF 36 FA 03
        ;   ^ arg clrText (low/offset)
        ; --> SETTEXTCOLOR(HDC hDC, DWORD clrText) -> DWORD
        call    far GDI.SETTEXTCOLOR            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x3f0]                ; FF 36 F0 03
        ;   ^ arg clrBk (high/segment)
        push    word ptr [0x3ee]                ; FF 36 EE 03
        ;   ^ arg clrBk (low/offset)
        ; --> SETBKCOLOR(HDC hDC, DWORD clrBk) -> DWORD
        call    far GDI.SETBKCOLOR              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 4]               ; FF 74 04
        call    L_021A                          ; E8 B0 00
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_0198                          ; 74 28
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x550]                ; FF 36 50 05
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 60 02 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [si + 6]               ; FF 74 06
        ;   ^ arg x
        push    word ptr [si + 4]               ; FF 74 04
        ;   ^ arg y
        push    word ptr [si + 0xa]             ; FF 74 0A
        ;   ^ arg nWidth
        push    word ptr [si + 8]               ; FF 74 08
        ;   ^ arg nHeight
        mov     ax, 0x89                        ; B8 89 00
        mov     dx, 0xfa                        ; BA FA 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0198
L_0198:
        test    byte ptr [si], 0x80             ; F6 04 80
        je      L_01C8                          ; 74 2B
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 4]               ; FF 74 04
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xa]         ; 03 44 0A
        push    ax                              ; 50
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        add     ax, word ptr [si + 8]           ; 03 44 08
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 3F 03 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_01C8
L_01C8:
        add     si, 0x10                        ; 83 C6 10
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [unconditional branch target] L_01CE
L_01CE:
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jge     L_01D9                          ; 7D 03
        jmp     L_0038                          ; E9 5F FE
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)
;     [bp+0x6]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: SETBKMODE, LOCALUNLOCK.

;-------------------------------------------------------------------------
; sub_01D9   offset=0x01D9  size=32 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_021A
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01D9
L_01D9:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A DC 03 00 00 [FIXUP]
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
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_021A                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: BITBLT, CREATECOMPATIBLEDC, DELETEDC (+1 more).

;-------------------------------------------------------------------------
; sub_021A   offset=0x021A  size=73 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;
; Near calls (internal): L_04F7, L_15D3
;-------------------------------------------------------------------------
;   [sub-routine] L_021A
L_021A:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        test    byte ptr [bx], 4                ; F6 07 04
        jne     L_022B                          ; 75 03
        jmp     L_02C1                          ; E9 96 00
;   [conditional branch target (if/else)] L_022B
L_022B:
        mov     ax, word ptr [0x3b2]            ; A1 B2 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     ax, word ptr [bp + 0xc]         ; 3B 46 0C
        jne     L_0248                          ; 75 12
        push    ax                              ; 50
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0248                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_02D6                          ; E9 8E 00
;   [conditional branch target (if/else)] L_0248
L_0248:
        push    word ptr [bp + 8]               ; FF 76 08
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_15D3                          ; E8 83 13
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        push    word ptr [bx + 0xe]             ; FF 77 0E
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A AB 02 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        je      L_02AF                          ; 74 44
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_027B                          ; 74 05
        mov     ax, word ptr [0x450]            ; A1 50 04
        jmp     L_0280                          ; EB 05
;   [conditional branch target (if/else)] L_027B
L_027B:
        mov     ax, word ptr [0x450]            ; A1 50 04
        sar     ax, 1                           ; D1 F8
;   [unconditional branch target] L_0280
L_0280:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        add     ax, word ptr [bx + 6]           ; 03 47 06
        push    ax                              ; 50
        push    word ptr [bx + 4]               ; FF 77 04
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        push    word ptr [bp - 6]               ; FF 76 FA
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02AF
L_02AF:
        mov     ax, word ptr [0x3b2]            ; A1 B2 03
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_02D3                          ; 75 1C
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02D3                          ; EB 12
;   [unconditional branch target] L_02C1
L_02C1:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_04F7                          ; E8 24 02
;   [branch target] L_02D3
L_02D3:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_02D6
L_02D6:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (1 use)

; Description (heuristic):
;   Mixed routine using: LOCALLOCK.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_02DC   offset=0x02DC  size=86 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_02DC
L_02DC:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, word ptr [bx + 0x20]        ; 2B 47 20
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     ax, word ptr [bx]               ; 8B 07
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        sub     ax, word ptr [bx + 0x1e]        ; 2B 47 1E
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     si, di                          ; 8B F7
        add     si, 0xc                         ; 83 C6 0C
        mov     word ptr [bp - 0xc], 0xffff     ; C7 46 F4 FF FF
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x80                        ; 3C 80
        jne     L_035C                          ; 75 3B
        mov     bx, word ptr [bx + 4]           ; 8B 5F 04
        test    byte ptr [bx + 0xa], 0x80       ; F6 47 0A 80
        je      L_035C                          ; 74 32
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [di + 8]               ; FF 75 08
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 85 03 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _SEG1_64DE                  ; 9A 95 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03B9                          ; 74 62
        mov     word ptr [bp - 0xc], 0xfffe     ; C7 46 F4 FE FF
;   [conditional branch target (if/else)] L_035C
L_035C:
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_0361
L_0361:
        mov     ax, word ptr [di + 0xa]         ; 8B 45 0A
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_03B9                          ; 7D 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [si + 6]               ; FF 74 06
        push    word ptr [si + 4]               ; FF 74 04
        mov     ax, word ptr [si + 6]           ; 8B 44 06
        add     ax, word ptr [si + 0xa]         ; 03 44 0A
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [si + 4]           ; 8B 44 04
        add     ax, word ptr [si + 8]           ; 03 44 08
        inc     ax                              ; 40
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    far _SEG1_64DE                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03B1                          ; 74 14
        test    byte ptr [si], 3                ; F6 04 03
        je      L_03A9                          ; 74 07
        mov     word ptr [bp - 0xc], 0xfffe     ; C7 46 F4 FE FF
        jmp     L_03D8                          ; EB 2F
;   [conditional branch target (if/else)] L_03A9
L_03A9:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        jmp     L_03D8                          ; EB 27
;   [conditional branch target (if/else)] L_03B1
L_03B1:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 0x10                        ; 83 C6 10
        jmp     L_0361                          ; EB A8
; Description (heuristic):
;   Thin wrapper around LOCALUNLOCK(hMem) -> BOOL.

;-------------------------------------------------------------------------
; sub_03B9   offset=0x03B9  size=18 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_03B9
L_03B9:
        push    word ptr [bp + 8]               ; FF 76 08
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        push    word ptr [bx + 2]               ; FF 77 02
        push    word ptr [bx]                   ; FF 37
        call    far _SEG1_5126                  ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 3                           ; 3D 03 00
        jne     L_03D8                          ; 75 0A
        test    byte ptr [di], 1                ; F6 05 01
        jne     L_03D8                          ; 75 05
        mov     word ptr [bp - 0xc], 0xfffd     ; C7 46 F4 FD FF
;   [branch target] L_03D8
L_03D8:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x8]  HANDLE    (1 use)
;   Locals:
;     [bp-0x2]   PSTR      (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_03EB   offset=0x03EB  size=108 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_03EB
L_03EB:
        ;   = cProc <20> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x14                        ; 83 EC 14
        push    si                              ; 56
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 0C 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        cmp     word ptr [bx + 8], 0            ; 83 7F 08 00
        je      L_040B                          ; 74 06
        cmp     word ptr [bx + 6], 0            ; 83 7F 06 00
        jne     L_0419                          ; 75 0E
;   [conditional branch target (if/else)] L_040B
L_040B:
        push    word ptr [bp + 8]               ; FF 76 08
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_356                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0419
L_0419:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        test    byte ptr [bx + 0x33], 0x20      ; F6 47 33 20
        je      L_042E                          ; 74 0C
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        sub     ax, word ptr [bx + 6]           ; 2B 47 06
        mov     word ptr [bp + 4], ax           ; 89 46 04
;   [conditional branch target (if/else)] L_042E
L_042E:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        cmp     ax, word ptr [0x510]            ; 3B 06 10 05
        jle     L_0446                          ; 7E 09
        mov     ax, word ptr [0x510]            ; A1 10 05
        sub     ax, word ptr [bx + 8]           ; 2B 47 08
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [conditional branch target (if/else)] L_0446
L_0446:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0451                          ; 7D 05
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
;   [conditional branch target (if/else)] L_0451
L_0451:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_045C                          ; 7D 05
        mov     word ptr [bp + 4], 0            ; C7 46 04 00 00
;   [conditional branch target (if/else)] L_045C
L_045C:
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     ax, word ptr [bx + 8]           ; 8B 47 08
        add     ax, word ptr [bp + 6]           ; 03 46 06
        push    ax                              ; 50
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 97 04 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A E9 01 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x510]                ; FF 36 10 05
        push    word ptr [0x50e]                ; FF 36 0E 05
        call    far _SEG1_643D                  ; 9A B7 01 00 00 [FIXUP]
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_656B                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x8000                      ; B8 00 80
        sub     dx, dx                          ; 2B D2
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     dx, 0x8088                      ; BA 88 80
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        sub     ax, word ptr [bp - 0x12]        ; 2B 46 EE
        mov     cx, word ptr [0x47e]            ; 8B 0E 7E 04
        shl     cx, 1                           ; D1 E1
        add     ax, cx                          ; 03 C1
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, word ptr [bp - 0x10]        ; 2B 46 F0
        add     ax, word ptr [0x480]            ; 03 06 80 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x3a0]                ; FF 36 A0 03
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_0232                  ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: GETTEXTMETRICS, LSTRLEN.

;-------------------------------------------------------------------------
; sub_04F7   offset=0x04F7  size=136 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETTEXTMETRICS
;   LSTRLEN(LPSTR lpsz) -> INT
;
; Near calls (internal): L_14A5
;-------------------------------------------------------------------------
;   [sub-routine] L_04F7
L_04F7:
        ;   = cProc <54> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x36                        ; 83 EC 36
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        add     word ptr [bp + 4], ax           ; 01 46 04
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        cmp     word ptr [bx + 0xe], 0          ; 83 7F 0E 00
        jne     L_051E                          ; 75 03
        jmp     L_061F                          ; E9 01 01
;   [conditional branch target (if/else)] L_051E
L_051E:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        test    byte ptr [bx], 1                ; F6 07 01
        je      L_052B                          ; 74 05
        mov     ax, word ptr [0x450]            ; A1 50 04
        jmp     L_0533                          ; EB 08
;   [conditional branch target (if/else)] L_052B
L_052B:
        mov     ax, word ptr [0x450]            ; A1 50 04
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
;   [unconditional branch target] L_0533
L_0533:
        add     ax, word ptr [bp + 6]           ; 03 46 06
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0xc]         ; 8B 47 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        or      ax, ax                          ; 0B C0
        jne     L_0551                          ; 75 03
        jmp     L_061F                          ; E9 CE 00
;   [conditional branch target (if/else)] L_0551
L_0551:
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0562                          ; 75 03
        jmp     L_061F                          ; E9 BD 00
;   [conditional branch target (if/else)] L_0562
L_0562:
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A5                          ; E8 35 0F
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A5                          ; E8 25 0F
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        je      L_05D8                          ; 74 52
        cmp     word ptr [bp - 0xc], di         ; 39 7E F4
        je      L_05D8                          ; 74 4D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        push    ds                              ; 1E
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_52E5                  ; 9A F1 05 00 00 [FIXUP]
        lea     ax, [di + 1]                    ; 8D 45 01
        cmp     ax, si                          ; 3B C6
        jge     L_05F5                          ; 7D 4F
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        lea     ax, [bx + di + 1]               ; 8D 41 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_52BE                  ; 9A FF FF 00 00 [FIXUP]
        mov     cx, word ptr [bp - 0xa]         ; 8B 4E F6
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        lea     ax, [bx + di + 1]               ; 8D 41 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        sub     ax, di                          ; 2B C7
        dec     ax                              ; 48
        push    ax                              ; 50
        jmp     L_05F0                          ; EB 18
;   [conditional branch target (if/else)] L_05D8
L_05D8:
        or      si, si                          ; 0B F6
        je      L_05F5                          ; 74 19
        cmp     word ptr [bp - 0xc], di         ; 39 7E F4
        jne     L_05F5                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        push    ds                              ; 1E
        push    ax                              ; 50
        push    si                              ; 56
;   [unconditional branch target] L_05F0
L_05F0:
        call    far _SEG1_52E5                  ; 9A 1B 06 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05F5
L_05F5:
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        dec     ax                              ; 48
        cmp     ax, si                          ; 3B C6
        jle     L_061F                          ; 7E 22
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [0x542]            ; 03 06 42 05
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        mov     bx, word ptr [bp - 0x34]        ; 8B 5E CC
        lea     ax, [bx + si + 1]               ; 8D 40 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        sub     ax, si                          ; 2B C6
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far _SEG1_52E5                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_061F
L_061F:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (62 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0627   offset=0x0627  size=62 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_06CB, L_09FB, L_124D
;-------------------------------------------------------------------------
;   [sub-routine] L_0627
L_0627:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr es:[bx]            ; 26 8B 37
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_066B                          ; 74 2E
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_0688                          ; 75 46
        cmp     word ptr [0x36], -1             ; 83 3E 36 00 FF
        jne     L_06C4                          ; 75 7B
        push    si                              ; 56
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 F7 0B
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 8]            ; 26 FF 77 08
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    L_09FB                          ; E8 92 03
        jmp     L_06C4                          ; EB 59
;   [conditional branch target (if/else)] L_066B
L_066B:
        cmp     word ptr [0x36], -1             ; 83 3E 36 00 FF
        je      L_0688                          ; 74 16
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 CF 0B
        or      ax, ax                          ; 0B C0
        je      L_0688                          ; 74 06
        mov     word ptr [0x36], 0xffff         ; C7 06 36 00 FF FF
;   [conditional branch target (if/else)] L_0688
L_0688:
        cmp     word ptr [0x36], -1             ; 83 3E 36 00 FF
        jne     L_06C4                          ; 75 35
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 2], 0x200     ; 26 81 7F 02 00 02
        jb      L_06C4                          ; 72 2A
        cmp     word ptr es:[bx + 2], 0x209     ; 26 81 7F 02 09 02
        ja      L_06C4                          ; 77 22
        mov     ax, word ptr es:[bx + 6]        ; 26 8B 47 06
        mov     word ptr [0x534], ax            ; A3 34 05
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        mov     word ptr [0x536], ax            ; A3 36 05
        push    si                              ; 56
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 91 0B
        push    ax                              ; 50
        mov     ax, 0x534                       ; B8 34 05
        push    ax                              ; 50
        call    L_06CB                          ; E8 07 00
;   [error/early exit] L_06C4
L_06C4:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_06CB   offset=0x06CB  size=123 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (first 8 of 9): L_02DC, L_0827, L_0AD2, L_0B43, L_1096, L_10B3, L_124D, L_1287 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_06CB
L_06CB:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        push    si                              ; 56
        call    L_1287                          ; E8 AA 0B
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_131B                          ; E8 37 0C
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 5D 0B
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    si                              ; 56
        call    L_1287                          ; E8 90 0B
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jne     L_0701                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0703                          ; EB 02
;   [conditional branch target (if/else)] L_0701
L_0701:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0703
L_0703:
        mov     word ptr [0x3a], ax             ; A3 3A 00
        mov     word ptr [bp - 6], 0xffff       ; C7 46 FA FF FF
        cmp     word ptr [0x30], 0              ; 83 3E 30 00 00
        je      L_0750                          ; 74 3E
        push    word ptr [0x35a]                ; FF 36 5A 03
        push    word ptr [0x30]                 ; FF 36 30 00
        push    di                              ; 57
        call    L_02DC                          ; E8 BE FB
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 48 08 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 2]           ; 8B 5F 02
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        add     bx, ax                          ; 03 D8
        test    byte ptr [bx + 0xc], 3          ; F6 47 0C 03
        je      L_0748                          ; 74 0B
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0748                          ; 7C 05
        mov     word ptr [bp - 6], 0xfffe       ; C7 46 FA FE FF
;   [conditional branch target (if/else)] L_0748
L_0748:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 35 09 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0750
L_0750:
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        je      L_0759                          ; 74 03
        jmp     L_0802                          ; E9 A9 00
;   [conditional branch target (if/else)] L_0759
L_0759:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0762                          ; 7C 03
        jmp     L_0802                          ; E9 A0 00
;   [conditional branch target (if/else)] L_0762
L_0762:
        cmp     word ptr [bp - 6], -2           ; 83 7E FA FE
        jne     L_076B                          ; 75 03
        jmp     L_0802                          ; E9 97 00
;   [conditional branch target (if/else)] L_076B
L_076B:
        call    L_1096                          ; E8 28 09
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        push    di                              ; 57
        call    L_02DC                          ; E8 66 FB
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_07D8                          ; 7D 5B
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
        cmp     ax, 0xfffd                      ; 3D FD FF
        jne     L_0795                          ; 75 0D
        mov     word ptr [0x3a], 1              ; C7 06 3A 00 01 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        jmp     L_07C1                          ; EB 2C
;   [conditional branch target (if/else)] L_0795
L_0795:
        push    si                              ; 56
        call    L_1287                          ; E8 EE 0A
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_07C1                          ; 74 23
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        call    L_02DC                          ; E8 36 FB
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_07B4                          ; 7D 07
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        jne     L_07C1                          ; 75 0D
;   [conditional branch target (if/else)] L_07B4
L_07B4:
        mov     word ptr [0x3a], 0              ; C7 06 3A 00 00 00
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        je      L_07C7                          ; 74 06
;   [branch target] L_07C1
L_07C1:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_07D8                          ; 7C 11
;   [conditional branch target (if/else)] L_07C7
L_07C7:
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0AD2                          ; E8 00 03
        mov     word ptr [0x40], 0              ; C7 06 40 00 00 00
;   [conditional branch target (if/else)] L_07D8
L_07D8:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jl      L_0808                          ; 7C 2A
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        je      L_0808                          ; 74 23
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
        push    word ptr [0x35a]                ; FF 36 5A 03
        push    word ptr [0x30]                 ; FF 36 30 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B43                          ; E8 49 03
        mov     word ptr [0x40], 0              ; C7 06 40 00 00 00
        jmp     L_0808                          ; EB 06
;   [unconditional branch target] L_0802
L_0802:
        mov     word ptr [0x40], 1              ; C7 06 40 00 01 00
;   [branch target] L_0808
L_0808:
        cmp     word ptr [0x40], 0              ; 83 3E 40 00 00
        je      L_0812                          ; 74 03
        call    L_10B3                          ; E8 A1 08
;   [conditional branch target (if/else)] L_0812
L_0812:
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp - 6]               ; FF 76 FA
        call    L_0827                          ; E8 0B 00
        call    L_1096                          ; E8 77 08
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   PSTR      (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_0827   offset=0x0827  size=107 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_03EB, L_0AD2, L_0B43, L_124D, L_14E1
;-------------------------------------------------------------------------
;   [sub-routine] L_0827
L_0827:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 0D 0A
        mov     word ptr [bp + 6], ax           ; 89 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A F6 03 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        cmp     word ptr [0x34], 0              ; 83 3E 34 00 00
        je      L_0862                          ; 74 0C
        mov     ax, word ptr [0x34]             ; A1 34 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr [0x30]             ; A1 30 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0862
L_0862:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        cmp     word ptr [bx + 2], si           ; 39 77 02
        jne     L_086D                          ; 75 03
        jmp     L_0931                          ; E9 C4 00
;   [conditional branch target (if/else)] L_086D
L_086D:
        cmp     word ptr [0x34], 0              ; 83 3E 34 00 00
        je      L_0889                          ; 74 15
        push    word ptr [0x35a]                ; FF 36 5A 03
        push    word ptr [0x30]                 ; FF 36 30 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B43                          ; E8 C0 02
        push    word ptr [0x35a]                ; FF 36 5A 03
        jmp     L_0899                          ; EB 10
;   [conditional branch target (if/else)] L_0889
L_0889:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0AD2                          ; E8 3C 02
        push    word ptr [bp + 8]               ; FF 76 08
;   [unconditional branch target] L_0899
L_0899:
        push    word ptr [bp - 4]               ; FF 76 FC
        push    si                              ; 56
        ; constant GMEM_ZEROINIT
        mov     ax, 0x80                        ; B8 80 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14E1                          ; E8 3B 0C
        or      si, si                          ; 0B F6
        jge     L_08AF                          ; 7D 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_08B1                          ; EB 02
;   [conditional branch target (if/else)] L_08AF
L_08AF:
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_08B1
L_08B1:
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 2], ax           ; 89 47 02
        or      si, si                          ; 0B F6
        jl      L_092B                          ; 7C 70
        mov     di, bx                          ; 8B FB
        mov     ax, si                          ; 8B C6
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     di, ax                          ; 03 F8
        add     di, 0xc                         ; 83 C7 0C
        test    byte ptr [di], 0x10             ; F6 05 10
        jne     L_08DA                          ; 75 0D
        test    byte ptr [di], 3                ; F6 05 03
        jne     L_08DA                          ; 75 08
        mov     word ptr [0x3c], 1              ; C7 06 3C 00 01 00
        jmp     L_08E0                          ; EB 06
;   [conditional branch target (if/else)] L_08DA
L_08DA:
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
;   [unconditional branch target] L_08E0
L_08E0:
        cmp     word ptr [0x30], 0              ; 83 3E 30 00 00
        jne     L_0931                          ; 75 4A
        test    byte ptr [di], 0x10             ; F6 05 10
        je      L_0931                          ; 74 45
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, 0x117                       ; B8 17 01
        push    ax                              ; 50
        push    word ptr [di + 2]               ; FF 75 02
        mov     dx, word ptr [0x3a]             ; 8B 16 3A 00
        sub     ax, ax                          ; 2B C0
        mov     ax, si                          ; 8B C6
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [di + 2]           ; 8B 45 02
        mov     word ptr [0x30], ax             ; A3 30 00
        push    ax                              ; 50
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x1e]        ; 8B 47 1E
        add     ax, word ptr [di + 6]           ; 03 45 06
        push    ax                              ; 50
        mov     ax, word ptr [bx + 0x20]        ; 8B 47 20
        add     ax, word ptr [di + 4]           ; 03 45 04
        add     ax, word ptr [di + 8]           ; 03 45 08
        push    ax                              ; 50
        call    L_03EB                          ; E8 C5 FA
        mov     word ptr [0x35a], ax            ; A3 5A 03
        jmp     L_0931                          ; EB 06
;   [conditional branch target (if/else)] L_092B
L_092B:
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
;   [branch target] L_0931
L_0931:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 81 04 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (72 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0941   offset=0x0941  size=72 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_11DB
;-------------------------------------------------------------------------
;   [sub-routine] L_0941
L_0941:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 2], 0xffff       ; C7 46 FE FF FF
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jge     L_095D                          ; 7D 09
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        dec     ax                              ; 48
        jmp     L_095F                          ; EB 02
;   [conditional branch target (if/else)] L_095D
L_095D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_095F
L_095F:
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x4e20                      ; B8 20 4E
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        add     di, word ptr [bp + 8]           ; 03 7E 08
        add     di, 0xc                         ; 83 C7 0C
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_09DC                          ; EB 56
;   [loop start] L_0986
L_0986:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        add     di, word ptr [bp + 8]           ; 03 7E 08
        add     di, 0xc                         ; 83 C7 0C
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        sub     si, word ptr [di + 4]           ; 2B 75 04
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        sub     ax, word ptr [di + 6]           ; 2B 45 06
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      si, si                          ; 0B F6
        jge     L_09AC                          ; 7D 06
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        mov     si, ax                          ; 8B F0
;   [conditional branch target (if/else)] L_09AC
L_09AC:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jge     L_09BA                          ; 7D 08
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        neg     ax                              ; F7 D8
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
;   [conditional branch target (if/else)] L_09BA
L_09BA:
        cmp     word ptr [bp - 0xa], si         ; 39 76 F6
        jle     L_09DC                          ; 7E 1D
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_09DC                          ; 74 17
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jg      L_09DC                          ; 7F 0F
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0xa], si         ; 89 76 F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [branch target] L_09DC
L_09DC:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_11DB                          ; E8 F3 07
        mov     word ptr [bp + 6], ax           ; 89 46 06
        cmp     ax, word ptr [bp - 0xe]         ; 3B 46 F2
        jne     L_0986                          ; 75 96
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xa]  HANDLE    (2 uses)
;   Locals:
;     [bp-0x6]   PSTR      (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_09FB   offset=0x09FB  size=51 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0AD2, L_14E1
;-------------------------------------------------------------------------
;   [sub-routine] L_09FB
L_09FB:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, word ptr [0x3c]             ; A1 3C 00
        and     word ptr [bp + 8], ax           ; 21 46 08
        mov     word ptr [0x3e], 0              ; C7 06 3E 00 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _SEG1_6384                  ; 9A FF FF 00 00 [FIXUP]
        call    far _SEG1_3273                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x36], 0              ; C7 06 36 00 00 00
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 54 0B 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 8B 0B 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    L_0AD2                          ; E8 8A 00
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_0A65                          ; 74 11
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14E1                          ; E8 7C 0A
;   [conditional branch target (if/else)] L_0A65
L_0A65:
        mov     word ptr [0x3a], 0              ; C7 06 3A 00 00 00
        mov     word ptr [0x32], 0              ; C7 06 32 00 00 00
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_0A9E                          ; 74 27
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0A8D                          ; 74 10
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_SYSCOMMAND
        mov     ax, 0x112                       ; B8 12 01
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        jmp     L_0A99                          ; EB 0C
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0A8D   offset=0x0A8D  size=31 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_14E1
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0A8D
L_0A8D:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ; constant WM_COMMAND
        mov     ax, 0x111                       ; B8 11 01
        push    ax                              ; 50
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
;   [unconditional branch target] L_0A99
L_0A99:
        call    far _SEG1_253F                  ; 9A 01 09 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0A9E
L_0A9E:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far _SEG1_62C5                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0ACB                          ; 74 21
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_0ACB                          ; 74 15
        cmp     word ptr [bx + 0x34], 0         ; 83 7F 34 00
        je      L_0ACB                          ; 74 0F
        push    bx                              ; 53
        push    word ptr [bx + 0x34]            ; FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14E1                          ; E8 16 0A
;   [error/early exit] L_0ACB
L_0ACB:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
; Description (heuristic):
;   Pure computation / dispatcher (39 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0AD2   offset=0x0AD2  size=39 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0B43, L_1096
;-------------------------------------------------------------------------
;   [sub-routine] L_0AD2
L_0AD2:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        mov     word ptr [0x40], 0              ; C7 06 40 00 00 00
        mov     word ptr [0x38], 1              ; C7 06 38 00 01 00
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
        sub     si, si                          ; 2B F6
        cmp     word ptr [0x35a], si            ; 39 36 5A 03
        je      L_0B26                          ; 74 33
        call    L_1096                          ; E8 A0 05
        push    word ptr [0x35a]                ; FF 36 5A 03
        push    word ptr [0x30]                 ; FF 36 30 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0B43                          ; E8 3E 00
        mov     si, ax                          ; 8B F0
        push    word ptr [0x35a]                ; FF 36 5A 03
        call    far _SEG1_07E5                  ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
        mov     word ptr [0x30], ax             ; A3 30 00
        mov     word ptr [0x35a], ax            ; A3 5A 03
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B43                          ; E8 1F 00
        jmp     L_0B3A                          ; EB 14
;   [conditional branch target (if/else)] L_0B26
L_0B26:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_0B3A                          ; 74 0E
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0B43                          ; E8 0B 00
        mov     si, ax                          ; 8B F0
;   [error/early exit] L_0B3A
L_0B3A:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HANDLE    (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_0B43   offset=0x0B43  size=36 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_14E1
;-------------------------------------------------------------------------
;   [sub-routine] L_0B43
L_0B43:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 68 0C 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     si, word ptr [di + 2]           ; 8B 75 02
        or      si, si                          ; 0B F6
        jl      L_0B6D                          ; 7C 0C
        mov     bx, si                          ; 8B DE
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     ax, word ptr [bx + di + 0xe]    ; 8B 41 0E
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0B6D
L_0B6D:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0B82                          ; 74 0F
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14E1                          ; E8 5F 09
;   [conditional branch target (if/else)] L_0B82
L_0B82:
        mov     word ptr [di + 2], 0xffff       ; C7 45 02 FF FF
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 47 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0B9A   offset=0x0B9A  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0C0D, L_10D7
;-------------------------------------------------------------------------
;   [sub-routine] L_0B9A
L_0B9A:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     si, word ptr es:[bx + 4]        ; 26 8B 77 04
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        cmp     ax, 0x100                       ; 3D 00 01
        je      L_0BD3                          ; 74 22
        cmp     ax, 0x102                       ; 3D 02 01
        je      L_0BFC                          ; 74 46
        cmp     ax, 0x104                       ; 3D 04 01
        je      L_0BD3                          ; 74 18
        cmp     ax, 0x105                       ; 3D 05 01
        je      L_0BC7                          ; 74 07
        cmp     ax, 0x106                       ; 3D 06 01
        je      L_0BFC                          ; 74 37
        jmp     L_0C06                          ; EB 3F
;   [conditional branch target (if/else)] L_0BC7
L_0BC7:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], 0x12      ; 26 83 7F 04 12
        jne     L_0C06                          ; 75 35
        jmp     L_0BDD                          ; EB 0A
;   [conditional branch target (if/else)] L_0BD3
L_0BD3:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 4], 0x12      ; 26 83 7F 04 12
        je      L_0C06                          ; 74 29
;   [unconditional branch target] L_0BDD
L_0BDD:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        push    word ptr es:[bx + 4]            ; 26 FF 77 04
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_10D7                          ; E8 EE 04
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jne     L_0BFC                          ; 75 0D
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _SEG1_23C2                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0C06                          ; EB 0A
;   [conditional branch target (if/else)] L_0BFC
L_0BFC:
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0C0D                          ; E8 07 00
;   [error/early exit] L_0C06
L_0C06:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_0C0D   offset=0x0C0D  size=286 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (first 8 of 12): L_0827, L_0941, L_09FB, L_0AD2, L_0F14, L_1014, L_1096, L_10B3 ...
;-------------------------------------------------------------------------
;   [sub-routine] L_0C0D
L_0C0D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x2a                        ; 83 EC 2A
        push    di                              ; 57
        push    si                              ; 56
        cmp     word ptr [0x36], -1             ; 83 3E 36 00 FF
        jne     L_0C26                          ; 75 03
        jmp     L_0F07                          ; E9 E1 02
;   [conditional branch target (if/else)] L_0C26
L_0C26:
        cmp     word ptr [0x36], 1              ; 83 3E 36 00 01
        je      L_0C32                          ; 74 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0C34                          ; EB 02
;   [conditional branch target (if/else)] L_0C32
L_0C32:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0C34
L_0C34:
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [0x64]                 ; FF 36 64 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 07 06
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        or      ax, ax                          ; 0B C0
        jne     L_0C50                          ; 75 03
        jmp     L_0F07                          ; E9 B7 02
;   [conditional branch target (if/else)] L_0C50
L_0C50:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_0CC9                          ; 74 71
        cmp     ax, 0x4d01                      ; 3D 01 4D
        jne     L_0C64                          ; 75 07
        cmp     word ptr [0x3c], 0              ; 83 3E 3C 00 00
        jne     L_0CC9                          ; 75 65
;   [conditional branch target (if/else)] L_0C64
L_0C64:
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 25 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0CAD                          ; 75 2F
        call    L_10B3                          ; E8 32 04
        or      ax, ax                          ; 0B C0
        je      L_0CAD                          ; 74 28
        mov     bx, word ptr [0x34]             ; 8B 1E 34 00
        cmp     word ptr [bx + 2], 0            ; 83 7F 02 00
        jge     L_0CA7                          ; 7D 18
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        mov     bx, word ptr [bx + 2]           ; 8B 5F 02
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        add     bx, word ptr [bp - 0x10]        ; 03 5E F0
        test    byte ptr [bx + 0xc], 3          ; F6 47 0C 03
        je      L_0CA7                          ; 74 05
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
;   [conditional branch target (if/else)] L_0CA7
L_0CA7:
        mov     ax, word ptr [0x34]             ; A1 34 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_0CAD
L_0CAD:
        mov     di, 0xffff                      ; BF FF FF
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        cmp     word ptr [bp + 8], 0x4b00       ; 81 7E 08 00 4B
        je      L_0CC4                          ; 74 07
        cmp     word ptr [bp + 8], 0x4800       ; 81 7E 08 00 48
        jne     L_0CDE                          ; 75 1A
;   [conditional branch target (if/else)] L_0CC4
L_0CC4:
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0CE1                          ; EB 18
;   [conditional branch target (if/else)] L_0CC9
L_0CC9:
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [0x3c]                 ; FF 36 3C 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_09FB                          ; E8 20 FD
        jmp     L_0F07                          ; E9 29 02
;   [conditional branch target (if/else)] L_0CDE
L_0CDE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0CE1
L_0CE1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_0D4E                          ; 74 62
        jle     L_0CF1                          ; 7E 03
        jmp     L_0EC3                          ; E9 D2 01
;   [conditional branch target (if/else)] L_0CF1
L_0CF1:
        or      ax, ax                          ; 0B C0
        je      L_0D40                          ; 74 4B
        cmp     ax, 0x1b                        ; 3D 1B 00
        je      L_0D2B                          ; 74 31
;   [loop start] L_0CFA
L_0CFA:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0D07                          ; 75 06
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        jne     L_0D40                          ; 75 39
;   [conditional branch target (if/else)] L_0D07
L_0D07:
        mov     bx, word ptr [0x64]             ; 8B 1E 64 00
        test    byte ptr [bx + 0x33], 0x20      ; F6 47 33 20
        je      L_0D18                          ; 74 07
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0D40                          ; 75 28
;   [conditional branch target (if/else)] L_0D18
L_0D18:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_113F                          ; E8 1E 04
        mov     di, ax                          ; 8B F8
        inc     ax                              ; 40
        je      L_0D29                          ; 74 03
        jmp     L_0E70                          ; E9 47 01
;   [conditional branch target (if/else)] L_0D29
L_0D29:
        jmp     L_0D40                          ; EB 15
;   [conditional branch target (if/else)] L_0D2B
L_0D2B:
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [bp - 0x28]            ; FF 76 D8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_09FB                          ; E8 BB FC
;   [loop start (also forward branch)] L_0D40
L_0D40:
        call    L_1096                          ; E8 53 03
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 4C 07 00 00 [FIXUP]
        jmp     L_0F07                          ; E9 B9 01
;   [conditional branch target (if/else)] L_0D4E
L_0D4E:
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_0D40                          ; 75 EB
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [0x3a]                 ; FF 36 3A 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_1014                          ; E8 B1 02
        or      ax, ax                          ; 0B C0
        je      L_0D40                          ; 74 D9
        sub     di, di                          ; 2B FF
        jmp     L_0E13                          ; E9 A7 00
;   [loop start] L_0D6C
L_0D6C:
        mov     bx, word ptr [0x64]             ; 8B 1E 64 00
        test    byte ptr [bx + 0x33], 0x20      ; F6 47 33 20
        je      L_0D79                          ; 74 03
        jmp     L_0E70                          ; E9 F7 00
;   [conditional branch target (if/else)] L_0D79
L_0D79:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0DCF                          ; 75 4F
        cmp     si, -1                          ; 83 FE FF
        je      L_0D97                          ; 74 12
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_0941                          ; E8 B2 FB
        mov     di, ax                          ; 8B F8
        inc     ax                              ; 40
        je      L_0D97                          ; 74 03
        jmp     L_0E70                          ; E9 D9 00
;   [conditional branch target (if/else)] L_0D97
L_0D97:
        call    L_1096                          ; E8 FC 02
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    ax                              ; 50
        mov     bx, ax                          ; 8B D8
        mov     si, word ptr [bx + 2]           ; 8B 77 02
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_11DB                          ; E8 2E 04
        cmp     ax, si                          ; 3B C6
        jne     L_0DC6                          ; 75 15
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [0x3a]                 ; FF 36 3A 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_1014                          ; E8 55 02
        or      ax, ax                          ; 0B C0
        jne     L_0DC6                          ; 75 03
        jmp     L_0D40                          ; E9 7A FF
;   [conditional branch target (if/else)] L_0DC6
L_0DC6:
        mov     di, 0xffff                      ; BF FF FF
        mov     word ptr [0x38], 1              ; C7 06 38 00 01 00
;   [conditional branch target (if/else)] L_0DCF
L_0DCF:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0DD9                          ; 75 03
        jmp     L_0E70                          ; E9 97 00
;   [conditional branch target (if/else)] L_0DD9
L_0DD9:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, word ptr [bx + 0xa]         ; 8B 47 0A
        dec     ax                              ; 48
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        push    bx                              ; 53
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_11DB                          ; E8 F0 03
        mov     di, ax                          ; 8B F8
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jle     L_0DF7                          ; 7E 04
        cmp     di, si                          ; 3B FE
        jle     L_0E01                          ; 7E 0A
;   [conditional branch target (if/else)] L_0DF7
L_0DF7:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jge     L_0E70                          ; 7D 73
        cmp     di, si                          ; 3B FE
        jl      L_0E70                          ; 7C 6F
;   [conditional branch target (if/else)] L_0E01
L_0E01:
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    word ptr [0x3a]                 ; FF 36 3A 00
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    L_1014                          ; E8 05 02
        or      ax, ax                          ; 0B C0
        je      L_0E70                          ; 74 5D
;   [unconditional branch target] L_0E13
L_0E13:
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_1014                          ; E8 F0 01
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x3a]             ; A1 3A 00
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        je      L_0E70                          ; 74 41
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0AD2                          ; E8 95 FC
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A C9 10 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     si, 0xffff                      ; BE FF FF
        jmp     L_0E64                          ; EB 13
;   [loop start] L_0E51
L_0E51:
        cmp     word ptr [0x30], 0              ; 83 3E 30 00 00
        jne     L_0E5B                          ; 75 03
        jmp     L_0D40                          ; E9 E5 FE
;   [conditional branch target (if/else)] L_0E5B
L_0E5B:
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0E64                          ; 74 03
        jmp     L_0D40                          ; E9 DC FE
;   [branch target] L_0E64
L_0E64:
        push    word ptr [bp - 6]               ; FF 76 FA
        push    si                              ; 56
        push    word ptr [bp - 4]               ; FF 76 FC
        call    L_11DB                          ; E8 6D 03
        mov     di, ax                          ; 8B F8
;   [branch target] L_0E70
L_0E70:
        cmp     di, si                          ; 3B FE
        jne     L_0E77                          ; 75 03
        jmp     L_0D40                          ; E9 C9 FE
;   [conditional branch target (if/else)] L_0E77
L_0E77:
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_0E97                          ; 74 1A
        mov     word ptr [0x36], 1              ; C7 06 36 00 01 00
        push    word ptr [0x64]                 ; FF 36 64 00
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_27F4                  ; 9A 4D 0F 00 00 [FIXUP]
        push    word ptr [0x64]                 ; FF 36 64 00
        call    L_12C5                          ; E8 2E 04
;   [conditional branch target (if/else)] L_0E97
L_0E97:
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [bp - 0x28]            ; FF 76 D8
        push    di                              ; 57
        call    L_0827                          ; E8 85 F9
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     ax, di                          ; 8B C7
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     bx, ax                          ; 03 D8
        test    byte ptr [bx + 0xc], 0x10       ; F6 47 0C 10
        jne     L_0EE3                          ; 75 30
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        test    byte ptr [bx], 1                ; F6 07 01
        jne     L_0EE3                          ; 75 28
        mov     word ptr [0x38], 1              ; C7 06 38 00 01 00
        jmp     L_0EE9                          ; EB 26
;   [unconditional branch target] L_0EC3
L_0EC3:
        cmp     ax, 0x4800                      ; 3D 00 48
        je      L_0E51                          ; 74 89
        cmp     ax, 0x4b00                      ; 3D 00 4B
        jne     L_0ED0                          ; 75 03
        jmp     L_0D6C                          ; E9 9C FE
;   [conditional branch target (if/else)] L_0ED0
L_0ED0:
        cmp     ax, 0x4d00                      ; 3D 00 4D
        jne     L_0ED8                          ; 75 03
        jmp     L_0D6C                          ; E9 94 FE
;   [conditional branch target (if/else)] L_0ED8
L_0ED8:
        cmp     ax, 0x5000                      ; 3D 00 50
        jne     L_0EE0                          ; 75 03
        jmp     L_0E51                          ; E9 71 FF
;   [conditional branch target (if/else)] L_0EE0
L_0EE0:
        jmp     L_0CFA                          ; E9 17 FE
;   [conditional branch target (if/else)] L_0EE3
L_0EE3:
        mov     word ptr [0x38], 0              ; C7 06 38 00 00 00
;   [unconditional branch target] L_0EE9
L_0EE9:
        call    L_1096                          ; E8 AA 01
        push    word ptr [bp - 0x28]            ; FF 76 D8
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 89 10 00 00 [FIXUP]
        cmp     word ptr [bp - 0x14], 0         ; 83 7E EC 00
        je      L_0F07                          ; 74 0D
        mov     ax, 0xffff                      ; B8 FF FF
        mov     dx, 0x7fff                      ; BA FF 7F
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0F14                          ; E8 0D 00
;   [branch target] L_0F07
L_0F07:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (101 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0F14   offset=0x0F14  size=101 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_0627, L_0B9A, L_12C5
;-------------------------------------------------------------------------
;   [sub-routine] L_0F14
L_0F14:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x18                        ; 83 EC 18
        mov     word ptr [0x3e], 1              ; C7 06 3E 00 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], dx        ; 89 56 F0
        cmp     dx, 0x7fff                      ; 81 FA FF 7F
        jne     L_0F3E                          ; 75 05
        cmp     ax, 0xffff                      ; 3D FF FF
        je      L_0F6D                          ; 74 2F
;   [conditional branch target (if/else)] L_0F3E
L_0F3E:
        mov     word ptr [0x36], 0xffff         ; C7 06 36 00 FF FF
        push    word ptr [0x64]                 ; FF 36 64 00
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_27F4                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x64]                 ; FF 36 64 00
        call    L_12C5                          ; E8 6D 03
        mov     word ptr [bp - 0x16], 0x201     ; C7 46 EA 01 02
        mov     ax, word ptr [0x64]             ; A1 64 00
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        jmp     L_0FB4                          ; EB 4F
;   [loop start] L_0F65
L_0F65:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0627                          ; E8 BA F6
;   [loop start (also forward branch)] L_0F6D
L_0F6D:
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_0F77                          ; 75 03
        jmp     L_1009                          ; E9 92 00
;   [conditional branch target (if/else)] L_0F77
L_0F77:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x200                       ; B8 00 02
        push    ax                              ; 50
        mov     ax, 0x209                       ; B8 09 02
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A AC 0F 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jne     L_0FB4                          ; 75 1D
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        mov     ax, 0x107                       ; B8 07 01
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_22B8                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0FDD                          ; 74 29
;   [branch target] L_0FB4
L_0FB4:
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _SEG1_6079                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0F6D                          ; 75 A7
        cmp     word ptr [0x36], 1              ; 83 3E 36 00 01
        jne     L_0F65                          ; 75 98
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0F65                          ; 75 92
        lea     ax, [bp - 0x18]                 ; 8D 46 E8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0B9A                          ; E8 BF FB
        jmp     L_0F6D                          ; EB 90
;   [conditional branch target (if/else)] L_0FDD
L_0FDD:
        cmp     word ptr [0x35a], 0             ; 83 3E 5A 03 00
        je      L_1001                          ; 74 1D
        mov     bx, word ptr [0x35a]            ; 8B 1E 5A 03
        test    byte ptr [bx + 0x33], 0x10      ; F6 47 33 10
        jne     L_1001                          ; 75 13
        push    bx                              ; 53
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _SEG1_0E43                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x35a]                ; FF 36 5A 03
        call    far _SEG1_34BF                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1001
L_1001:
        call    far _SEG1_2280                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0F6D                          ; E9 64 FF
;   [unconditional branch target] L_1009
L_1009:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  WORD      (1 use)

; Description (heuristic):
;   Mixed routine using: LOCALUNLOCK.

;-------------------------------------------------------------------------
; sub_1014   offset=0x1014  size=46 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0AD2, L_124D
;-------------------------------------------------------------------------
;   [sub-routine] L_1014
L_1014:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        cmp     word ptr [bp + 4], 1            ; 83 7E 04 01
        jne     L_102A                          ; 75 05
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        jmp     L_102C                          ; EB 02
;   [conditional branch target (if/else)] L_102A
L_102A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_102C
L_102C:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x3a], 0              ; 83 3E 3A 00 00
        jne     L_1056                          ; 75 20
        mov     bx, word ptr [0x64]             ; 8B 1E 64 00
        test    byte ptr [bx + 0x32], 8         ; F6 47 32 08
        je      L_1066                          ; 74 26
        test    byte ptr [bx + 0x33], 0x40      ; F6 47 33 40
        jne     L_1066                          ; 75 20
        mov     word ptr [bp - 2], 1            ; C7 46 FE 01 00
        push    bx                              ; 53
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_124D                          ; E8 F9 01
        jmp     L_1063                          ; EB 0D
;   [conditional branch target (if/else)] L_1056
L_1056:
        mov     bx, word ptr [0x64]             ; 8B 1E 64 00
        cmp     word ptr [bx + 0x34], 0         ; 83 7F 34 00
        je      L_1066                          ; 74 06
        mov     ax, word ptr [bx + 0x34]        ; 8B 47 34
;   [unconditional branch target] L_1063
L_1063:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_1066
L_1066:
        cmp     word ptr [bp + 4], 1            ; 83 7E 04 01
        jne     L_108D                          ; 75 21
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_108D                          ; 74 19
        mov     word ptr [0x3a], ax             ; A3 3A 00
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [bp + 8]               ; FF 76 08
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_0AD2                          ; E8 4D FA
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A A5 10 00 00 [FIXUP]
;   [error/early exit] L_108D
L_108D:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Thin wrapper around LOCALUNLOCK(hMem) -> BOOL.

;-------------------------------------------------------------------------
; sub_1096   offset=0x1096  size=10 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_1096
L_1096:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x34], 0              ; 83 3E 34 00 00
        je      L_10AF                          ; 74 0F
        push    word ptr [0x30]                 ; FF 36 30 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 38 0A 00 00 [FIXUP]
        mov     word ptr [0x34], 0              ; C7 06 34 00 00 00
;   [error/early exit] L_10AF
L_10AF:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Thin wrapper around LOCALLOCK(hMem) -> PSTR.

;-------------------------------------------------------------------------
; sub_10B3   offset=0x10B3  size=13 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_10B3
L_10B3:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x34], 0              ; 83 3E 34 00 00
        jne     L_10D0                          ; 75 13
        cmp     word ptr [0x30], 0              ; 83 3E 30 00 00
        je      L_10D0                          ; 74 0C
        push    word ptr [0x30]                 ; FF 36 30 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 25 0A 00 00 [FIXUP]
        mov     word ptr [0x34], ax             ; A3 34 00
;   [error/early exit] L_10D0
L_10D0:
        mov     ax, word ptr [0x34]             ; A1 34 00
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (49 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_10D7   offset=0x10D7  size=49 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_10D7
L_10D7:
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
        sub     si, si                          ; 2B F6
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x1b                        ; 3D 1B 00
        je      L_1113                          ; 74 24
        ja      L_111D                          ; 77 2C
        cmp     ax, 3                           ; 3D 03 00
        je      L_1113                          ; 74 1D
        cmp     ax, 0x12                        ; 3D 12 00
        je      L_1118                          ; 74 1D
        jmp     L_1100                          ; EB 03
;   [loop start] L_10FD
L_10FD:
        mov     si, 0x4800                      ; BE 00 48
;   [loop start (also forward branch)] L_1100
L_1100:
        mov     ax, si                          ; 8B C6
        jmp     L_1133                          ; EB 2F
;   [loop start] L_1104
L_1104:
        mov     si, 0x5000                      ; BE 00 50
        jmp     L_1100                          ; EB F7
;   [loop start] L_1109
L_1109:
        mov     si, 0x4b00                      ; BE 00 4B
        jmp     L_1100                          ; EB F2
;   [loop start] L_110E
L_110E:
        mov     si, 0x4d00                      ; BE 00 4D
        jmp     L_1100                          ; EB ED
;   [conditional branch target (if/else)] L_1113
L_1113:
        mov     si, 0x1b                        ; BE 1B 00
        jmp     L_1100                          ; EB E8
;   [conditional branch target (if/else)] L_1118
L_1118:
        mov     si, 0x4d01                      ; BE 01 4D
        jmp     L_1100                          ; EB E3
;   [conditional branch target (if/else)] L_111D
L_111D:
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_1109                          ; 74 E7
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_10FD                          ; 74 D6
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_110E                          ; 74 E2
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_1104                          ; 74 D3
        jmp     L_1100                          ; EB CD
;   [unconditional branch target] L_1133
L_1133:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  LPSTR     (2 uses)

; Description (heuristic):
;   Mixed routine using: ANSILOWER.

;-------------------------------------------------------------------------
; sub_113F   offset=0x113F  size=67 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   ANSILOWER(LPSTR lpsz) -> LPSTR
;
; Near calls (internal): L_11DB
;-------------------------------------------------------------------------
;   [sub-routine] L_113F
L_113F:
        ;   = cProc <12> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xc                         ; 83 EC 0C
        push    di                              ; 57
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpsz (low/offset)
        ; --> ANSILOWER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSILOWER            ; 9A AF 11 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp + 4], ax           ; 89 46 04
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     di, word ptr [bx + 2]           ; 8B 7F 02
        or      di, di                          ; 0B FF
        jge     L_1165                          ; 7D 04
        mov     si, word ptr [bx + 0xa]         ; 8B 77 0A
        dec     si                              ; 4E
;   [loop start (also forward branch)] L_1165
L_1165:
        push    word ptr [bp + 6]               ; FF 76 06
        push    di                              ; 57
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_11DB                          ; E8 6B 00
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, di                          ; 8B D7
        mov     cl, 4                           ; B1 04
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        add     ax, 0xc                         ; 05 0C 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     bx, ax                          ; 8B D8
        test    byte ptr [bx], 4                ; F6 07 04
        jne     L_11B8                          ; 75 29
        mov     ax, word ptr [bx + 0xe]         ; 8B 47 0E
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [loop start] L_1197
L_1197:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr [bx]               ; 8A 07
        cwde                                    ; 98
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     ax, 0x20                        ; 3D 20 00
        je      L_1197                          ; 74 EF
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg lpsz (low/offset)
        ; --> ANSILOWER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSILOWER            ; 9A FF FF 00 00 [FIXUP]
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_11B8
L_11B8:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_11C4                          ; 74 04
        cmp     si, di                          ; 3B F7
        jne     L_1165                          ; 75 A1
;   [conditional branch target (if/else)] L_11C4
L_11C4:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_11D1                          ; 74 05
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_11D3                          ; EB 02
;   [conditional branch target (if/else)] L_11D1
L_11D1:
        mov     ax, di                          ; 8B C7
;   [fall-through exit] L_11D3
L_11D3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_11DB   offset=0x11DB  size=47 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_11DB
L_11DB:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_11FC                          ; 7D 10
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_11F8                          ; 7E 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        dec     ax                              ; 48
        jmp     L_11FF                          ; EB 07
;   [conditional branch target (if/else)] L_11F8
L_11F8:
        sub     ax, ax                          ; 2B C0
        jmp     L_11FF                          ; EB 03
;   [conditional branch target (if/else)] L_11FC
L_11FC:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [unconditional branch target] L_11FF
L_11FF:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_1202
L_1202:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     word ptr [bp + 6], ax           ; 01 46 06
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jl      L_1217                          ; 7C 07
        mov     word ptr [bp + 6], 0            ; C7 46 06 00 00
        jmp     L_1224                          ; EB 0D
;   [conditional branch target (if/else)] L_1217
L_1217:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_1224                          ; 7D 07
        mov     ax, word ptr [si + 0xa]         ; 8B 44 0A
        dec     ax                              ; 48
        mov     word ptr [bp + 6], ax           ; 89 46 06
;   [branch target] L_1224
L_1224:
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        add     di, si                          ; 03 FE
        add     di, 0xc                         ; 83 C7 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_123D                          ; 75 05
;   [loop start] L_1238
L_1238:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_1245                          ; EB 08
;   [conditional branch target (if/else)] L_123D
L_123D:
        cmp     word ptr [di + 0xe], 0          ; 83 7D 0E 00
        je      L_1202                          ; 74 BF
        jmp     L_1238                          ; EB F3
;   [fall-through exit] L_1245
L_1245:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (23 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_124D   offset=0x124D  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_1287
;-------------------------------------------------------------------------
;   [sub-routine] L_124D
L_124D:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 0x34]        ; 8B 47 34
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        je      L_1275                          ; 74 15
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_1275                          ; 74 0C
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_127E                          ; 74 0F
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_127E                          ; 74 09
;   [conditional branch target (if/else)] L_1275
L_1275:
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_1287                          ; E8 0C 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [error/early exit] L_127E
L_127E:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_1287   offset=0x1287  size=24 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1287
L_1287:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        jne     L_12A3                          ; 75 05
        mov     ax, word ptr [0x3dc]            ; A1 DC 03
        jmp     L_12B9                          ; EB 16
;   [conditional branch target (if/else)] L_12A3
L_12A3:
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        test    byte ptr [bx + 0x32], 8         ; F6 47 32 08
        je      L_12BC                          ; 74 10
        mov     ax, word ptr [bx + 0x12]        ; 8B 47 12
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_12BC                          ; 75 06
        mov     ax, word ptr [0x420]            ; A1 20 04
;   [unconditional branch target] L_12B9
L_12B9:
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [error/early exit] L_12BC
L_12BC:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Pure computation / dispatcher (34 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_12C5   offset=0x12C5  size=34 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_124D, L_13A8
;-------------------------------------------------------------------------
;   [sub-routine] L_12C5
L_12C5:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x32], 1              ; C7 06 32 00 01 00
        call    far _SEG1_63EC                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x608]                ; FF 36 08 06
        call    far _SEG1_375A                  ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     al, byte ptr [bx + 0x33]        ; 8A 47 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x40                        ; 3C 40
        je      L_130C                          ; 74 24
        push    bx                              ; 53
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_13A8                          ; E8 BA 00
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0x116                       ; B8 16 01
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 4B FF
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 9A 0A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_130C
L_130C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _SEG1_6384                  ; 9A 12 0A 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_131B   offset=0x131B  size=31 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_131B
L_131B:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_136C                          ; 74 44
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_1335                          ; 74 07
        mov     word ptr [bp - 4], 0x4f0        ; C7 46 FC F0 04
        jmp     L_133A                          ; EB 05
;   [conditional branch target (if/else)] L_1335
L_1335:
        mov     word ptr [bp - 4], 0x398        ; C7 46 FC 98 03
;   [unconditional branch target] L_133A
L_133A:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 45 0E 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [si + 0x10], ax        ; 89 44 10
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [si + 0x12], ax        ; 89 44 12
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        sub     ax, word ptr [bx + 2]           ; 2B 47 02
        mov     word ptr [si + 0x14], ax        ; 89 44 14
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        mov     word ptr [si + 0x16], ax        ; 89 44 16
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A F0 0E 00 00 [FIXUP]
;   [error/early exit] L_136C
L_136C:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00

;-----------------------------------------------------------------------
; ENDMENU  (offset 0x1373, size 53 bytes)
;-----------------------------------------------------------------------
ENDMENU PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x3c], 0              ; C7 06 3C 00 00 00
        push    word ptr [0x64]                 ; FF 36 64 00
        push    word ptr [0x64]                 ; FF 36 64 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x3a]                 ; FF 36 3A 00
        call    L_124D                          ; E8 B7 FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    L_09FB                          ; E8 5C F6
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
ENDMENU ENDP

; Description (heuristic):
;   Pure computation / dispatcher (94 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_13A8   offset=0x13A8  size=94 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_1287
;-------------------------------------------------------------------------
;   [sub-routine] L_13A8
L_13A8:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        push    si                              ; 56
        call    L_1287                          ; E8 C9 FE
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_13C7                          ; 75 03
        jmp     L_1498                          ; E9 D1 00
;   [conditional branch target (if/else)] L_13C7
L_13C7:
        push    di                              ; 57
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_159                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        cmp     word ptr [0x5a], 0              ; 83 3E 5A 00 00
        jne     L_13DD                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_13E0                          ; EB 03
;   [conditional branch target (if/else)] L_13DD
L_13DD:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_13E0
L_13E0:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        test    byte ptr [si + 0x33], 0xc0      ; F6 44 33 C0
        jne     L_141E                          ; 75 27
        cmp     word ptr [0x51c], 1             ; 83 3E 1C 05 01
        jne     L_141E                          ; 75 20
        mov     bx, word ptr [0x4dc]            ; 8B 1E DC 04
        cmp     word ptr [bx + 0xa], 1          ; 83 7F 0A 01
        jne     L_141E                          ; 75 16
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        cmp     word ptr [0x16], 1              ; 83 3E 16 00 01
        jne     L_141E                          ; 75 0A
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_141E
L_141E:
        test    byte ptr [si + 0x33], 0x20      ; F6 44 33 20
        je      L_1429                          ; 74 05
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
;   [conditional branch target (if/else)] L_1429
L_1429:
        cmp     word ptr [0x1be], si            ; 39 36 BE 01
        jne     L_1439                          ; 75 0A
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
;   [conditional branch target (if/else)] L_1439
L_1439:
        mov     al, byte ptr [si + 0x33]        ; 8A 44 33
        and     al, 0xc0                        ; 24 C0
        cmp     al, 0x80                        ; 3C 80
        jne     L_1457                          ; 75 15
        test    byte ptr [si + 0x32], 4         ; F6 44 32 04
        jne     L_144D                          ; 75 05
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
;   [conditional branch target (if/else)] L_144D
L_144D:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
;   [conditional branch target (if/else)] L_1457
L_1457:
        push    di                              ; 57
        mov     ax, 0xf000                      ; B8 00 F0
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far _entry_155                  ; 9A 6D 14 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, 0xf020                      ; B8 20 F0
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _entry_155                  ; 9A 7A 14 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, 0xf030                      ; B8 30 F0
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_155                  ; 9A 87 14 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_155                  ; 9A 94 14 00 00 [FIXUP]
        push    di                              ; 57
        mov     ax, 0xf010                      ; B8 10 F0
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_155                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_1498
L_1498:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Pure computation / dispatcher (29 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_14A5   offset=0x14A5  size=29 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_14A5
L_14A5:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     es, word ptr [bp + 0xa]         ; 8E 46 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
;   [loop start] L_14BE
L_14BE:
        mov     al, byte ptr es:[di]            ; 26 8A 05
        xor     ah, ah                          ; 32 E4
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        je      L_14D2                          ; 74 0A
        or      al, al                          ; 0A C0
        je      L_14D2                          ; 74 06
        inc     di                              ; 47
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_14BE                          ; EB EC
;   [conditional branch target (if/else)] L_14D2
L_14D2:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Mixed routine using: LOCALLOCK.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_14E1   offset=0x14E1  size=33 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=2, ASM=4)
; Prologue: none     Epilogue: jmp_tail
;
; Far API calls:
;   LOCALLOCK(HANDLE hMem) -> PSTR
;
; Near calls (internal): L_1287, L_131B, L_17AF
;-------------------------------------------------------------------------
;   [sub-routine] L_14E1
L_14E1:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        push    si                              ; 56
        push    di                              ; 57
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        jge     L_14F9                          ; 7D 03
        jmp     L_15C6                          ; E9 CD 00
;   [conditional branch target (if/else)] L_14F9
L_14F9:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_1287                          ; E8 88 FD
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    L_131B                          ; E8 14 FE
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 3E 13 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        call    L_17AF                          ; E8 98 02
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        test    byte ptr [bx + 0x33], 0x20      ; F6 47 33 20
        je      L_1523                          ; 74 03
        jmp     L_15B5                          ; E9 92 00
;   [conditional branch target (if/else)] L_1523
L_1523:
        mov     ax, word ptr [di]               ; 8B 05
        and     ax, 0x80                        ; 25 80 00
        cmp     ax, word ptr [bp + 6]           ; 3B 46 06
        jne     L_1530                          ; 75 03
        jmp     L_15B5                          ; E9 85 00
; Description (heuristic):
;   Mixed routine using: LOCALUNLOCK.

;-------------------------------------------------------------------------
; sub_1530   offset=0x1530  size=61 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_1530
L_1530:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        mov     ax, word ptr [si]               ; 8B 04
        and     ax, 1                           ; 25 01 00
        je      L_1544                          ; 74 0A
        call    far _SEG1_37F9                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_156C                          ; EB 28
;   [conditional branch target (if/else)] L_1544
L_1544:
        call    far _SEG1_380A                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        cmp     ax, word ptr [0x506]            ; 3B 06 06 05
        jl      L_156C                          ; 7C 14
        mov     ax, word ptr [bx + 0x24]        ; 8B 47 24
        sub     ax, word ptr [bx + 0x20]        ; 2B 47 20
        sub     ax, word ptr [0x506]            ; 2B 06 06 05
        cmp     word ptr [di + 8], ax           ; 39 45 08
        jb      L_156C                          ; 72 05
        dec     ax                              ; 48
        mov     bx, ax                          ; 8B D8
        jmp     L_156F                          ; EB 03
;   [branch target] L_156C
L_156C:
        mov     bx, word ptr [di + 8]           ; 8B 5D 08
;   [unconditional branch target] L_156F
L_156F:
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [di + 6]               ; FF 75 06
        push    word ptr [di + 4]               ; FF 75 04
        mov     ax, word ptr [di + 6]           ; 8B 45 06
        add     ax, word ptr [di + 0xa]         ; 03 45 0A
        push    ax                              ; 50
        mov     ax, word ptr [di + 4]           ; 8B 45 04
        add     ax, bx                          ; 03 C3
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 79 04 00 00 [FIXUP]
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far _SEG1_66A3                  ; 9A C4 01 00 00 [FIXUP]
        mov     ax, word ptr [si]               ; 8B 04
        and     ax, 1                           ; 25 01 00
        je      L_15AD                          ; 74 0D
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_381A                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_15B5                          ; EB 08
;   [conditional branch target (if/else)] L_15AD
L_15AD:
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _SEG1_38E1                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_15B5
L_15B5:
        and     word ptr [di], 0xff7f           ; 81 25 7F FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      word ptr [di], ax               ; 09 05
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 68 13 00 00 [FIXUP]
;   [unconditional branch target] L_15C6
L_15C6:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_15D3   offset=0x15D3  size=134 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETOBJECT
;   GETTEXTMETRICS
;   LOCALLOCK(HANDLE hMem) -> PSTR
;   LOCALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_14A5, L_171B
;-------------------------------------------------------------------------
;   [sub-routine] L_15D3
L_15D3:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    di                              ; 57
        xor     ax, ax                          ; 33 C0
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     ax, word ptr [di]               ; 8B 05
        test    ax, 4                           ; A9 04 00
        jne     L_1646                          ; 75 53
        call    far _SEG1_38D1                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     bx, word ptr [di + 0xe]         ; 8B 5D 0E
        lea     ax, [bx + 2]                    ; 8D 47 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_14A5                          ; E8 99 FE
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x3e]                 ; 8D 46 C2
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A 08 05 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x3e]        ; 8B 46 C2
        add     ax, word ptr [bp - 0x36]        ; 03 46 CA
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        push    word ptr [bp - 4]               ; FF 76 FC
        mov     bx, word ptr [di + 0xe]         ; 8B 5D 0E
        lea     ax, [bx + 2]                    ; 8D 47 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _SEG1_52BE                  ; 9A BB 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far _SEG1_38E1                  ; 9A B1 15 00 00 [FIXUP]
        jmp     L_1668                          ; EB 23
        nop                                     ; 90
;   [conditional branch target (if/else)] L_1646
L_1646:
        push    word ptr [di + 0xe]             ; FF 75 0E
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        push    ss                              ; 16
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        lea     bx, [bp - 0x1a]                 ; 8D 5E E6
        mov     ax, word ptr ss:[bx + 2]        ; 36 8B 47 02
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        mov     ax, word ptr ss:[bx + 4]        ; 36 8B 47 04
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
;   [unconditional branch target] L_1668
L_1668:
        mov     ax, word ptr [bp - 0x1e]        ; 8B 46 E2
        mov     dx, word ptr [bp - 0x1c]        ; 8B 56 E4
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    si                              ; 56
        push    di                              ; 57
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        push    word ptr [di + 0x34]            ; FF 75 34
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 0B 15 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        xor     ax, ax                          ; 33 C0
        test    byte ptr [di + 0x32], 0xc0      ; F6 45 32 C0
        je      L_16A1                          ; 74 03
        mov     ax, word ptr [0x506]            ; A1 06 05
;   [conditional branch target (if/else)] L_16A1
L_16A1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        xor     ax, ax                          ; 33 C0
        cmp     word ptr [si + 6], ax           ; 39 44 06
        je      L_16B0                          ; 74 05
        cmp     word ptr [si + 8], ax           ; 39 44 08
        jne     L_16C7                          ; 75 17
;   [conditional branch target (if/else)] L_16B0
L_16B0:
        push    word ptr [di + 0x34]            ; FF 75 34
        push    di                              ; 57
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [0x47e]                ; FF 36 7E 04
        mov     ax, word ptr [di + 0x2a]        ; 8B 45 2A
        sub     ax, word ptr [di + 0x26]        ; 2B 45 26
        push    ax                              ; 50
        call    far _entry_356                  ; 9A 15 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_16C7
L_16C7:
        lea     bx, [bp - 0xc]                  ; 8D 5E F4
        push    ss                              ; 16
        push    bx                              ; 53
        mov     cx, word ptr [0x47e]            ; 8B 0E 7E 04
        push    cx                              ; 51
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        push    ax                              ; 50
        add     cx, word ptr [si + 8]           ; 03 4C 08
        push    cx                              ; 51
        add     ax, word ptr [si + 6]           ; 03 44 06
        push    ax                              ; 50
        call    far _SEG1_643D                  ; 9A 88 15 00 00 [FIXUP]
        mov     cx, word ptr [0x3c4]            ; 8B 0E C4 03
        call    L_171B                          ; E8 32 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x480]            ; 2B 06 80 04
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     cx, word ptr [0x3c8]            ; 8B 0E C8 03
        call    L_171B                          ; E8 21 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [di + 0x34]            ; FF 75 34
        call    0                               ; E8 FA E8
        push    word ptr [di + 0x34]            ; FF 75 34
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A C2 15 00 00 [FIXUP]
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0xc]  WORD      (1 use)

; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_171B   offset=0x171B  size=7 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_171B
L_171B:
        push    word ptr [bp + 6]               ; FF 76 06
        push    ss                              ; 16
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        push    cx                              ; 51
        call    far _SEG1_665A                  ; 9A FF FF 00 00 [FIXUP]
        ret                                     ; C3

;-----------------------------------------------------------------------
; MENUWNDPROC  (offset 0x172A, size 143 bytes)
;-----------------------------------------------------------------------
MENUWNDPROC PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xe]         ; 8B 76 0E
        cmp     word ptr [bp + 0xc], 0xf        ; 83 7E 0C 0F
        jne     L_1790                          ; 75 4E
        lea     bx, [bp - 0x20]                 ; 8D 5E E0
        push    si                              ; 56
        push    ss                              ; 16
        push    bx                              ; 53
        push    si                              ; 56
        push    ss                              ; 16
        push    bx                              ; 53
        call    far _SEG1_199A                  ; 9A FF FF 00 00 [FIXUP]
        mov     di, word ptr [bp - 0x20]        ; 8B 7E E0
        push    di                              ; 57
        ;   ^ arg hDC
        push    word ptr [0x3c4]                ; FF 36 C4 03
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 4D 00 00 00 [FIXUP]
        push    di                              ; 57
        ;   ^ arg hDC
        xor     ax, ax                          ; 33 C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x26]        ; 2B 44 26
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, word ptr [si + 0x2c]        ; 8B 44 2C
        sub     ax, word ptr [si + 0x28]        ; 2B 44 28
        push    ax                              ; 50
        ;   ^ arg nHeight
        mov     ax, 0xf0                        ; B8 F0 00
        push    ax                              ; 50
        ;   ^ arg dwRop (high/segment)
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 6F 00 00 00 [FIXUP]
        push    si                              ; 56
        push    di                              ; 57
        push    word ptr [0x30]                 ; FF 36 30 00
        call    0                               ; E8 7A E8
        call    far _SEG1_1A93                  ; 9A FF FF 00 00 [FIXUP]
        xor     ax, ax                          ; 33 C0
        cdq                                     ; 99
        jmp     L_17A2                          ; EB 12
;   [conditional branch target (if/else)] L_1790
L_1790:
        push    si                              ; 56
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_679B                  ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_17A2
L_17A2:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;   [sub-routine] L_17AF
L_17AF:
        ; constant VK_SHIFT
        mov     cl, 0x10                        ; B1 10
        mul     cl                              ; F6 E1
        lea     di, [si + 0xc]                  ; 8D 7C 0C
        add     di, ax                          ; 03 F8
        ret                                     ; C3
MENUWNDPROC ENDP


USER_TEXT ENDS

        END
