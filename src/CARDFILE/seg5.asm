; ======================================================================
; CARDFILE / seg5.asm   (segment 5 of CARDFILE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        10
; Total instructions:                 1710
; 
; Classification (pass8):
;   C-origin (high+medium):             10
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     87 (56 unique)
;   Top:
;        5  SELECTOBJECT
;        3  DELETEDC
;        3  ESCAPE
;        3  LSTRLEN
;        3  ENABLEWINDOW
;        3  GLOBALUNLOCK
;        3  DESTROYWINDOW
;        3  DELETEOBJECT
; ======================================================================
; AUTO-GENERATED from original CARDFILE segment 5
; segment_size=4511 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CARDFILE_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Mixed routine using: CREATEDC, DELETEDC, ESCAPE (+5 more).

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=178 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   GETTEXTMETRICS
;   GETPROFILESTRING
;   LSTRLEN(LPSTR lpsz) -> INT
;   CREATEDIALOG
;   ENABLEWINDOW
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <210> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xd2                        ; 81 EC D2 00
        mov     ax, 0x98                        ; B8 98 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xa0                        ; B8 A0 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x7c                        ; B8 7C 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        mov     word ptr [bp - 0x26], ax        ; 89 46 DA
        jmp     L_0038                          ; EB 0A
;   [loop start] L_002E
L_002E:
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        je      L_0045                          ; 74 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
;   [unconditional branch target] L_0038
L_0038:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_002E                          ; 75 E9
;   [conditional branch target (if/else)] L_0045
L_0045:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_005F                          ; 74 12
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_005F                          ; EB 0A
;   [loop start] L_0055
L_0055:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jg      L_006C                          ; 7F 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
;   [branch target] L_005F
L_005F:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_0055                          ; 75 E9
;   [conditional branch target (if/else)] L_006C
L_006C:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0x24], ax        ; 89 46 DC
        jmp     L_0085                          ; EB 11
;   [loop start] L_0074
L_0074:
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        je      L_0092                          ; 74 17
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_0092                          ; 7E 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
;   [unconditional branch target] L_0085
L_0085:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_0074                          ; 75 E2
;   [conditional branch target (if/else)] L_0092
L_0092:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_00B3                          ; 74 19
        inc     word ptr [bp - 0x26]            ; FF 46 DA
        mov     byte ptr [bx], 0                ; C6 07 00
        jmp     L_00B3                          ; EB 11
;   [loop start] L_00A2
L_00A2:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_00B0                          ; 7E 07
        cmp     byte ptr [bp - 0xd2], 0x2c      ; 80 BE 2E FF 2C
        jne     L_00C0                          ; 75 10
;   [conditional branch target (if/else)] L_00B0
L_00B0:
        inc     word ptr [bp - 0x26]            ; FF 46 DA
;   [branch target] L_00B3
L_00B3:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_00A2                          ; 75 E2
;   [conditional branch target (if/else)] L_00C0
L_00C0:
        mov     ax, word ptr [bp - 0x26]        ; 8B 46 DA
        mov     word ptr [bp - 0xd0], ax        ; 89 86 30 FF
        jmp     L_00D3                          ; EB 0A
;   [loop start] L_00C9
L_00C9:
        cmp     byte ptr [bp - 0xd2], 0x20      ; 80 BE 2E FF 20
        jle     L_00E0                          ; 7E 10
        inc     word ptr [bp - 0x26]            ; FF 46 DA
;   [unconditional branch target] L_00D3
L_00D3:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0xd2], al        ; 88 86 2E FF
        or      al, al                          ; 0A C0
        jne     L_00C9                          ; 75 E9
;   [conditional branch target (if/else)] L_00E0
L_00E0:
        mov     bx, word ptr [bp - 0x26]        ; 8B 5E DA
        mov     byte ptr [bx], 0                ; C6 07 00
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        push    ds                              ; 1E
        ;   ^ arg lpszDriver (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDriver (low/offset)
        lea     ax, [bp - 0xce]                 ; 8D 86 32 FF
        push    ss                              ; 16
        ;   ^ arg lpszDevice (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDevice (low/offset)
        mov     ax, word ptr [bp - 0xd0]        ; 8B 86 30 FF
        push    ds                              ; 1E
        ;   ^ arg lpszOutput (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszOutput (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpInitData (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpInitData (low/offset)
        ; --> CREATEDC(LPSTR lpszDriver, LPSTR lpszDevice, LPSTR lpszOutput, LPVOID lpInitData) -> HDC
        call    far GDI.CREATEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x22], ax        ; 89 46 DE
        or      ax, ax                          ; 0B C0
        jne     L_0126                          ; 75 1F
;   [loop start] L_0107
L_0107:
        cmp     word ptr [bp - 0x22], 0         ; 83 7E DE 00
        je      L_0115                          ; 74 08
        push    word ptr [bp - 0x22]            ; FF 76 DE
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 16 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0115
L_0115:
        mov     ax, 0x21                        ; B8 21 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 4B 03 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        sub     ax, ax                          ; 2B C0
        jmp     L_01D4                          ; E9 AE 00
;   [conditional branch target (if/else)] L_0126
L_0126:
        push    word ptr [bp - 0x22]            ; FF 76 DE
        lea     ax, [bp - 0x20]                 ; 8D 46 E0
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETTEXTMETRICS          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x20]        ; 8B 46 E0
        add     ax, word ptr [bp - 0x18]        ; 03 46 E8
        mov     word ptr [0x1fc], ax            ; A3 FC 01
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x3da], ax            ; A3 DA 03
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x298], ax            ; A3 98 02
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x2ae]                ; FF 36 AE 02
        push    word ptr [0x2ac]                ; FF 36 AC 02
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 89 01 00 00 [FIXUP]
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        push    word ptr [bp - 0x22]            ; FF 76 DE
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A AD 02 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x4e]                 ; 8D 46 B2
        push    ss                              ; 16
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A F8 01 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_0194                          ; 7D 03
        jmp     L_0107                          ; E9 73 FF
;   [conditional branch target (if/else)] L_0194
L_0194:
        mov     word ptr [0x288], 0             ; C7 06 88 02 00 00
        mov     word ptr [0x1fe], 0             ; C7 06 FE 01 00 00
        push    word ptr [0x16e]                ; FF 36 6E 01
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x286]                ; FF 36 86 02
        push    word ptr [0x16a]                ; FF 36 6A 01
        push    word ptr [0x168]                ; FF 36 68 01
        call    far USER.CREATEDIALOG           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x16c], ax            ; A3 6C 01
        or      ax, ax                          ; 0B C0
        jne     L_01C5                          ; 75 03
        jmp     L_0107                          ; E9 42 FF
;   [conditional branch target (if/else)] L_01C5
L_01C5:
        push    word ptr [0x286]                ; FF 36 86 02
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 05 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x22]        ; 8B 46 DE
;   [fall-through exit] L_01D4
L_01D4:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Description (heuristic):
;   Mixed routine using: CREATECOMPATIBLEDC, DELETEDC, ESCAPE (+12 more).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_01D8   offset=0x01D8  size=257 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   ENABLEWINDOW
;
; Near calls (internal): L_01D8, L_0653, L_0992
;-------------------------------------------------------------------------
;   [sub-routine] L_01D8
L_01D8:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_0212                          ; 75 30
        cmp     word ptr [0x288], 0             ; 83 3E 88 02 00
        jne     L_01FC                          ; 75 13
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A DE 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_01FC
L_01FC:
        push    word ptr [0x286]                ; FF 36 86 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x16c]                ; FF 36 6C 01
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0212
L_0212:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x16                        ; 83 EC 16
        call    0                               ; E8 D2 FD
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0238                          ; 75 03
        jmp     L_0316                          ; E9 DE 00
;   [conditional branch target (if/else)] L_0238
L_0238:
        push    ax                              ; 50
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 4D 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        cdq                                     ; 99
        mov     cx, word ptr [0x1fc]            ; 8B 0E FC 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        or      ax, ax                          ; 0B C0
        jne     L_0265                          ; 75 03
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [conditional branch target (if/else)] L_0265
L_0265:
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A BC 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_02F9                          ; EB 7E
;   [loop start] L_027B
L_027B:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_02C7                          ; EB 40
;   [loop start] L_0287
L_0287:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_02CF                          ; 7D 40
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [0x298]                ; FF 36 98 02
        push    word ptr [bp - 6]               ; FF 76 FA
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        mov     dx, word ptr [bp - 0x12]        ; 8B 56 EE
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, 0xb                         ; 05 0B 00
        push    dx                              ; 52
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x1fc]            ; A1 FC 01
        add     word ptr [bp - 6], ax           ; 01 46 FA
        add     word ptr [bp - 0x14], 0x34      ; 83 46 EC 34
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        inc     word ptr [bp - 0xe]             ; FF 46 F2
;   [unconditional branch target] L_02C7
L_02C7:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0287                          ; 7C B8
;   [conditional branch target (if/else)] L_02CF
L_02CF:
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_02F2                          ; 7D 09
        push    ax                              ; 50
        call    L_0992                          ; E8 A5 06
        add     sp, 2                           ; 83 C4 02
        jmp     L_0304                          ; EB 12
;   [conditional branch target (if/else)] L_02F2
L_02F2:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_0304                          ; 75 0B
;   [unconditional branch target] L_02F9
L_02F9:
        mov     ax, word ptr [0x166]            ; A1 66 01
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jge     L_0304                          ; 7D 03
        jmp     L_027B                          ; E9 77 FF
;   [branch target] L_0304
L_0304:
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_01D8                          ; E8 C5 FE
        add     sp, 2                           ; 83 C4 02
;   [unconditional branch target] L_0316
L_0316:
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
        sub     sp, 0xbe                        ; 81 EC BE 00
        push    di                              ; 57
        push    si                              ; 56
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1c3                       ; B8 C3 01
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        or      ax, ax                          ; 0B C0
        jne     L_0355                          ; 75 0F
;   [loop start] L_0346
L_0346:
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_0648                          ; E9 F3 02
;   [conditional branch target (if/else)] L_0355
L_0355:
        mov     ax, 0x7e                        ; B8 7E 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0x7d                        ; B8 7D 00
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     ax, 4                           ; B8 04 00
        mov     dx, 0x4000                      ; BA 00 40
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        inc     ax                              ; 40
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWndParent
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [0x16e]                ; FF 36 6E 01
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        or      ax, ax                          ; 0B C0
        jne     L_03A0                          ; 75 0B
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A B0 03 00 00 [FIXUP]
        jmp     L_0346                          ; EB A6
;   [conditional branch target (if/else)] L_03A0
L_03A0:
        call    0                               ; E8 5D FC
        mov     word ptr [bp - 0x82], ax        ; 89 86 7E FF
        or      ax, ax                          ; 0B C0
        jne     L_03B7                          ; 75 0C
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0648                          ; E9 91 02
;   [conditional branch target (if/else)] L_03B7
L_03B7:
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x6c], ax        ; 89 46 94
        mov     word ptr [bp - 0x6a], dx        ; 89 56 96
        mov     ax, 0x28                        ; B8 28 00
        imul    word ptr [0x298]                ; F7 2E 98 02
        inc     ax                              ; 40
        inc     ax                              ; 40
        mov     word ptr [0x1f6], ax            ; A3 F6 01
        mov     ax, 0xb                         ; B8 0B 00
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 5                           ; 05 05 00
        mov     word ptr [0x160], ax            ; A3 60 01
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 2C 06 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x68], ax        ; 89 46 98
        mov     word ptr [bp - 0x8e], 0         ; C7 86 72 FF 00 00
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_046C                          ; 75 5B
        or      ax, ax                          ; 0B C0
        jne     L_0428                          ; 75 13
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0428                          ; 74 0C
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 27 05 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_0428
L_0428:
        push    word ptr [0x29a]                ; FF 36 9A 02
        mov     ax, 0x528                       ; B8 28 05
        push    ax                              ; 50
        mov     ax, 0x406                       ; B8 06 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [bp - 0x68]            ; FF 76 98
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_0653                          ; E8 12 02
        add     sp, 0xc                         ; 83 C4 0C
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A EA 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_0462                          ; 7C 03
        jmp     L_060A                          ; E9 A8 01
;   [loop start (also forward branch)] L_0462
L_0462:
        push    ax                              ; 50
        call    L_0992                          ; E8 2C 05
        add     sp, 2                           ; 83 C4 02
        jmp     L_060A                          ; E9 9E 01
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x82]   HDC       (2 uses)
;     [bp-0x8c]   INT       (1 use)
;     [bp-0x94]   INT       (1 use)

; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_046C   offset=0x046C  size=122 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
;   SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_0653
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_046C
L_046C:
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 86 04 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 3E 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x94], ax        ; 89 86 6C FF
        cdq                                     ; 99
        mov     cx, word ptr [0x160]            ; 8B 0E 60 01
        add     cx, word ptr [0x1fc]            ; 03 0E FC 01
        idiv    cx                              ; F7 F9
        mov     word ptr [bp - 0x6e], ax        ; 89 46 92
        or      ax, ax                          ; 0B C0
        jne     L_04A3                          ; 75 03
        inc     word ptr [bp - 0x6e]            ; FF 46 92
;   [conditional branch target (if/else)] L_04A3
L_04A3:
        mov     word ptr [bp - 0x70], 0         ; C7 46 90 00 00
        jmp     L_05FF                          ; E9 54 01
;   [loop start] L_04AB
L_04AB:
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
        mov     word ptr [bp - 0x86], 0         ; C7 86 7A FF 00 00
        jmp     L_05CE                          ; E9 15 01
;   [loop start] L_04B9
L_04B9:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        jl      L_04C4                          ; 7C 03
        jmp     L_05DA                          ; E9 16 01
;   [conditional branch target (if/else)] L_04C4
L_04C4:
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        je      L_0530                          ; 74 64
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A 6A 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x92], ax        ; 89 86 6E FF
        mov     word ptr [bp - 0x90], dx        ; 89 96 70 FF
        mov     ax, 0x34                        ; B8 34 00
        imul    word ptr [bp - 0x70]            ; F7 6E 90
        add     word ptr [bp - 0x92], ax        ; 01 86 6E FF
        mov     ax, word ptr [bp - 0x92]        ; 8B 86 6E FF
        mov     dx, word ptr [bp - 0x90]        ; 8B 96 70 FF
        lea     di, [bp - 0x3a]                 ; 8D 7E C6
        mov     si, ax                          ; 8B F0
        push    ss                              ; 16
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     ds, dx                          ; 8E DA
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        pop     ds                              ; 1F
        push    word ptr [0x1be]                ; FF 36 BE 01
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 17 06 00 00 [FIXUP]
        push    word ptr [bp - 0x6a]            ; FF 76 96
        push    word ptr [bp - 0x6c]            ; FF 76 94
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        add     sp, 8                           ; 83 C4 08
        or      ax, ax                          ; 0B C0
        jne     L_055B                          ; 75 39
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 85 05 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_055B                          ; EB 2B
;   [conditional branch target (if/else)] L_0530
L_0530:
        lea     di, [bp - 0x3a]                 ; 8D 7E C6
        mov     si, 0x406                       ; BE 06 04
        push    ss                              ; 16
        pop     es                              ; 07
        mov     cx, 0x1a                        ; B9 1A 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        lea     di, [bp - 0x7e]                 ; 8D 7E 82
        mov     si, 0x528                       ; BE 28 05
        mov     cx, 7                           ; B9 07 00
        repne movsw word ptr es:[di], word ptr [si] ; F2 A5
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0x6a]            ; FF 76 96
        ;   ^ arg lpszText (high/segment)
        push    word ptr [bp - 0x6c]            ; FF 76 94
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1c3                       ; B8 C3 01
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_055B
L_055B:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg hWnd
        push    word ptr [bp - 0x6a]            ; FF 76 96
        ;   ^ arg lpszText (high/segment)
        push    word ptr [bp - 0x6c]            ; FF 76 94
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 0x68], 0         ; 83 7E 98 00
        jne     L_058C                          ; 75 1D
        cmp     word ptr [bp - 0x74], 0         ; 83 7E 8C 00
        je      L_058C                          ; 74 17
        cmp     word ptr [bp - 0x8e], 0         ; 83 BE 72 FF 00
        jne     L_058C                          ; 75 10
        inc     word ptr [bp - 0x8e]            ; FF 86 72 FF
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 58 07 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_058C
L_058C:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        lea     ax, [bp - 0x7e]                 ; 8D 46 82
        push    ax                              ; 50
        lea     ax, [bp - 0x3a]                 ; 8D 46 C6
        push    ax                              ; 50
        push    word ptr [bp - 0x3c]            ; FF 76 C4
        push    word ptr [bp - 0x68]            ; FF 76 98
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_0653                          ; E8 AF 00
        add     sp, 0xc                         ; 83 C4 0C
        mov     ax, word ptr [0x18]             ; A1 18 00
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        je      L_05BD                          ; 74 0E
        cmp     word ptr [bp - 0x74], 0         ; 83 7E 8C 00
        je      L_05BD                          ; 74 08
        push    word ptr [bp - 0x74]            ; FF 76 8C
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05BD
L_05BD:
        mov     ax, word ptr [0x160]            ; A1 60 01
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     word ptr [bp - 0x3c], ax        ; 01 46 C4
        inc     word ptr [bp - 0x70]            ; FF 46 90
        inc     word ptr [bp - 0x86]            ; FF 86 7A FF
;   [unconditional branch target] L_05CE
L_05CE:
        mov     ax, word ptr [bp - 0x6e]        ; 8B 46 92
        cmp     word ptr [bp - 0x86], ax        ; 39 86 7A FF
        jge     L_05DA                          ; 7D 03
        jmp     L_04B9                          ; E9 DF FE
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_05DA   offset=0x05DA  size=44 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   DELETEDC(HDC hDC) -> BOOL
;   ESCAPE
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_01D8
;-------------------------------------------------------------------------
;   [branch target] L_05DA
L_05DA:
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far GDI.ESCAPE                  ; 9A 5D 01 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_05F8                          ; 7D 03
        jmp     L_0462                          ; E9 6A FE
;   [conditional branch target (if/else)] L_05F8
L_05F8:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_060A                          ; 75 0B
;   [unconditional branch target] L_05FF
L_05FF:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 0x70], ax        ; 39 46 90
        jge     L_060A                          ; 7D 03
        jmp     L_04AB                          ; E9 A1 FE
;   [branch target] L_060A
L_060A:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 0E 02 00 00 [FIXUP]
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 09 03 00 00 [FIXUP]
        push    word ptr [bp - 0x8a]            ; FF B6 76 FF
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 9A 03 00 00 [FIXUP]
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        ;   ^ arg hDC
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A E4 06 00 00 [FIXUP]
        push    word ptr [bp - 0x82]            ; FF B6 7E FF
        call    L_01D8                          ; E8 A1 FB
        add     sp, 2                           ; 83 C4 02
        cmp     word ptr [bp - 0x68], 0         ; 83 7E 98 00
        je      L_0648                          ; 74 08
        push    word ptr [bp - 0x68]            ; FF 76 98
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 11 01 00 00 [FIXUP]
;   [branch target] L_0648
L_0648:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0653   offset=0x0653  size=302 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   INTERSECTCLIPRECT
;   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
;   RESTOREDC
;   SAVEDC
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBKMODE(HDC hDC, INT iMode) -> INT
;   STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
;   TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
;   LSTRLEN(LPSTR lpsz) -> INT
;   DESTROYWINDOW(HWND hWnd) -> BOOL
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   ENABLEWINDOW
;   GETSYSTEMMENU
;   ISDIALOGMESSAGE
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_0653
L_0653:
        ;   = cProc <64> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x40                        ; 83 EC 40
        push    si                              ; 56
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg iMode
        ; --> SETBKMODE(HDC hDC, INT iMode) -> INT
        call    far GDI.SETBKMODE               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [0x3da]            ; A1 DA 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        inc     ax                              ; 40
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xb                         ; 05 0B 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        add     ax, 0xb                         ; 05 0B 00
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 7A 01 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A B3 02 00 00 [FIXUP]
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_06A1                          ; 75 03
        jmp     L_0775                          ; E9 D4 00
;   [conditional branch target (if/else)] L_06A1
L_06A1:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_06AA                          ; 75 03
        jmp     L_0775                          ; E9 CB 00
;   [conditional branch target (if/else)] L_06AA
L_06AA:
        push    word ptr [bp + 4]               ; FF 76 04
        call    far GDI.SAVEDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        mov     ax, word ptr [0x1f6]            ; A1 F6 01
        dec     ax                              ; 48
        push    ax                              ; 50
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x160]            ; 03 06 60 01
        dec     ax                              ; 48
        push    ax                              ; 50
        call    far GDI.INTERSECTCLIPRECT       ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        push    word ptr [bx + 0xa]             ; FF 77 0A
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 66 07 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     si, word ptr [bx]               ; 8B 37
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDCDest
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        imul    word ptr [0x298]                ; F7 2E 98 02
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        ;   ^ arg xDest
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        add     ax, word ptr [bp + 8]           ; 03 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        ;   ^ arg yDest
        mov     ax, word ptr [0x298]            ; A1 98 02
        imul    si                              ; F7 EE
        cdq                                     ; 99
        mov     cx, word ptr [0x28c]            ; 8B 0E 8C 02
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        ;   ^ arg wDest
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        imul    word ptr [0x1fc]                ; F7 2E FC 01
        cdq                                     ; 99
        mov     cx, word ptr [0x1ba]            ; 8B 0E BA 01
        idiv    cx                              ; F7 F9
        push    ax                              ; 50
        ;   ^ arg hDest
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDCSrc
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg xSrc
        push    ax                              ; 50
        ;   ^ arg ySrc
        push    si                              ; 56
        ;   ^ arg wSrc
        push    word ptr [bx + 2]               ; FF 77 02
        ;   ^ arg hSrc
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> STRETCHBLT(HDC hDCDest, INT xDest, INT yDest, INT wDest, INT hDest, HDC hDCSrc, INT xSrc, INT ySrc, INT wSrc, INT hSrc, DWORD dwRop) -> BOOL
        call    far GDI.STRETCHBLT              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_075F                          ; 75 0C
        mov     ax, 0x11                        ; B8 11 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 1A 01 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
;   [conditional branch target (if/else)] L_075F
L_075F:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [bp - 0x18]            ; FF 76 E8
        call    far GDI.RESTOREDC               ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0775
L_0775:
        mov     ax, word ptr [0x3da]            ; A1 DA 03
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        add     ax, word ptr [bp + 8]           ; 03 46 08
        add     ax, word ptr [0x1fc]            ; 03 06 FC 01
        add     ax, 4                           ; 05 04 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        mov     ax, 0x40a                       ; B8 0A 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A BD 07 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        jmp     L_07E4                          ; EB 3F
;   [loop start] L_07A5
L_07A5:
        mov     byte ptr [bp - 0x40], 0x28      ; C6 46 C0 28
        mov     byte ptr [bp - 0x3f], 0         ; C6 46 C1 00
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        mov     ax, 0x414                       ; B8 14 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg wParam
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg y
        lea     ax, [bp - 0x40]                 ; 8D 46 C0
        push    ss                              ; 16
        ;   ^ arg lpszStr (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszStr (low/offset)
        push    word ptr [bp - 0x14]            ; FF 76 EC
        ;   ^ arg cbStr
        ; --> TEXTOUT(HDC hDC, INT x, INT y, LPSTR lpszStr, INT cbStr) -> BOOL
        call    far GDI.TEXTOUT                 ; 9A 91 06 00 00 [FIXUP]
        mov     ax, word ptr [0x1fc]            ; A1 FC 01
        add     word ptr [bp - 4], ax           ; 01 46 FC
        inc     word ptr [bp - 0x16]            ; FF 46 EA
;   [unconditional branch target] L_07E4
L_07E4:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x16], ax        ; 39 46 EA
        jl      L_07A5                          ; 7C B9
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg left
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg top
        push    word ptr [0x1f6]                ; FF 36 F6 01
        ;   ^ arg right
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        add     ax, word ptr [0x160]            ; 03 06 60 01
        push    ax                              ; 50
        ;   ^ arg bottom
        ; --> RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.RECTANGLE               ; 9A 20 08 00 00 [FIXUP]
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        add     si, word ptr [0x1fc]            ; 03 36 FC 01
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg left
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ax                              ; 50
        ;   ^ arg top
        push    word ptr [0x1f6]                ; FF 36 F6 01
        ;   ^ arg right
        lea     ax, [si + 2]                    ; 8D 44 02
        push    ax                              ; 50
        ;   ^ arg bottom
        ; --> RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.RECTANGLE               ; 9A 3E 08 00 00 [FIXUP]
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        add     si, word ptr [0x1fc]            ; 03 36 FC 01
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg left
        lea     ax, [si + 3]                    ; 8D 44 03
        push    ax                              ; 50
        ;   ^ arg top
        push    word ptr [0x1f6]                ; FF 36 F6 01
        ;   ^ arg right
        lea     ax, [si + 4]                    ; 8D 44 04
        push    ax                              ; 50
        ;   ^ arg bottom
        ; --> RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x14                        ; 83 EC 14
        jmp     L_089A                          ; EB 44
;   [loop start] L_0856
L_0856:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMin
        push    ax                              ; 50
        ;   ^ arg wMsgFilterMax
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wRemoveMsg
        ; --> PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
        call    far USER.PEEKMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_08A1                          ; 74 34
        cmp     word ptr [0x16c], 0             ; 83 3E 6C 01 00
        je      L_0886                          ; 74 12
        push    word ptr [0x16c]                ; FF 36 6C 01
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.ISDIALOGMESSAGE        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_089A                          ; 75 14
;   [conditional branch target (if/else)] L_0886
L_0886:
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x14]                 ; 8D 46 EC
        push    ss                              ; 16
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_089A
L_089A:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        je      L_0856                          ; 74 B5
;   [conditional branch target (if/else)] L_08A1
L_08A1:
        cmp     word ptr [0x1fe], 0             ; 83 3E FE 01 00
        jne     L_08AD                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_08AF                          ; EB 02
;   [conditional branch target (if/else)] L_08AD
L_08AD:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_08AF
L_08AF:
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
        sub     sp, 8                           ; 83 EC 08
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0906                          ; 74 37
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_08DF                          ; 74 0B
        cmp     ax, 0x116                       ; 3D 16 01
        jne     L_08DC                          ; 75 03
        jmp     L_0971                          ; E9 95 00
;   [conditional branch target (if/else)] L_08DC
L_08DC:
        jmp     L_0985                          ; E9 A6 00
;   [conditional branch target (if/else)] L_08DF
L_08DF:
        mov     word ptr [0x1fe], 1             ; C7 06 FE 01 01 00
        push    word ptr [0x286]                ; FF 36 86 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A CD 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A 0E 06 00 00 [FIXUP]
        mov     word ptr [0x16c], 0             ; C7 06 6C 01 00 00
;   [loop start] L_0900
L_0900:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0987                          ; E9 81 00
;   [conditional branch target (if/else)] L_0906
L_0906:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x458], ax            ; A3 58 04
        cmp     byte ptr [0x35a], 0             ; 80 3E 5A 03 00
        je      L_0956                          ; 74 3B
        mov     ax, 0x35a                       ; B8 5A 03
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 8B 06 00 00 [FIXUP]
        add     ax, 0x359                       ; 05 59 03
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        jmp     L_0940                          ; EB 13
;   [loop start] L_092D
L_092D:
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 8], al           ; 88 46 F8
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0947                          ; 74 0E
        cmp     al, 0x3a                        ; 3C 3A
        je      L_0947                          ; 74 0A
        dec     word ptr [bp - 6]               ; FF 4E FA
;   [unconditional branch target] L_0940
L_0940:
        cmp     word ptr [bp - 6], 0x35a        ; 81 7E FA 5A 03
        jae     L_092D                          ; 73 E6
;   [conditional branch target (if/else)] L_0947
L_0947:
        inc     word ptr [bp - 6]               ; FF 46 FA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_0960                          ; EB 0A
; Description (heuristic):
;   Small helper using 3 API(s): ENABLEMENUITEM, SETDLGITEMTEXT, SETFOCUS.

;-------------------------------------------------------------------------
; sub_0956   offset=0x0956  size=24 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;   SETFOCUS
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0956
L_0956:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x19a                       ; B8 9A 01
;   [unconditional branch target] L_0960
L_0960:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0900                          ; EB 8F
;   [unconditional branch target] L_0971
L_0971:
        push    word ptr [0x458]                ; FF 36 58 04
        ;   ^ arg hMenu
        mov     ax, 0xf060                      ; B8 60 F0
        push    ax                              ; 50
        ;   ^ arg wIDItem
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg wEnable
        ; --> ENABLEMENUITEM(HMENU hMenu, WORD wIDItem, WORD wEnable) -> BOOL
        call    far USER.ENABLEMENUITEM         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0900                          ; E9 7B FF
;   [unconditional branch target] L_0985
L_0985:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0987
L_0987:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Mixed routine using: DELETEOBJECT, GETOBJECT, CLOSECLIPBOARD (+9 more).

;-------------------------------------------------------------------------
; sub_0992   offset=0x0992  size=261 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   GETOBJECT
;   CLOSECLIPBOARD
;   EMPTYCLIPBOARD
;   GETCLIPBOARDDATA
;   INFLATERECT
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   OPENCLIPBOARD
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETCLIPBOARDDATA
;   SETFOCUS
;   SETRECT
;
; Near calls (internal): L_0C49
;-------------------------------------------------------------------------
;   [sub-routine] L_0992
L_0992:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x288], 1             ; C7 06 88 02 01 00
        test    word ptr [bp + 4], 0x4000       ; F7 46 04 00 40
        je      L_09D1                          ; 74 2F
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     ax, 0xfffb                      ; 3D FB FF
        je      L_09BE                          ; 74 14
        cmp     ax, 0xfffc                      ; 3D FC FF
        je      L_09CC                          ; 74 1D
        cmp     ax, 0xfffd                      ; 3D FD FF
        jl      L_09B9                          ; 7C 05
        cmp     ax, 0xfffe                      ; 3D FE FF
        jle     L_09D1                          ; 7E 18
;   [conditional branch target (if/else)] L_09B9
L_09B9:
        mov     ax, 0x21                        ; B8 21 00
        jmp     L_09C1                          ; EB 03
;   [conditional branch target (if/else)] L_09BE
L_09BE:
        mov     ax, 0x26                        ; B8 26 00
;   [loop start (also forward branch)] L_09C1
L_09C1:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 21 04 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_09D1                          ; EB 05
;   [conditional branch target (if/else)] L_09CC
L_09CC:
        mov     ax, 0x27                        ; B8 27 00
        jmp     L_09C1                          ; EB F0
;   [error/early exit] L_09D1
L_09D1:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_0A09                          ; 75 20
        push    word ptr [0x29a]                ; FF 36 9A 02
        cmp     word ptr [bp + 6], 0x71         ; 83 7E 06 71
        jne     L_09F8                          ; 75 05
        mov     ax, 0x300                       ; B8 00 03
        jmp     L_09FB                          ; EB 03
;   [conditional branch target (if/else)] L_09F8
L_09F8:
        mov     ax, 0x301                       ; B8 01 03
;   [unconditional branch target] L_09FB
L_09FB:
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 15 0B 00 00 [FIXUP]
        jmp     L_0AEA                          ; E9 E1 00
;   [conditional branch target (if/else)] L_0A09
L_0A09:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        jne     L_0A13                          ; 75 03
        jmp     L_0AEA                          ; E9 D7 00
;   [conditional branch target (if/else)] L_0A13
L_0A13:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.OPENCLIPBOARD          ; 9A 34 0B 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0A23                          ; 75 03
        jmp     L_0AEA                          ; E9 C7 00
;   [conditional branch target (if/else)] L_0A23
L_0A23:
        call    far USER.EMPTYCLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x532]            ; A1 32 05
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        cmp     word ptr [bp + 6], 0x72         ; 83 7E 06 72
        jne     L_0A71                          ; 75 3D
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A 5D 0B 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        push    word ptr [0x532]                ; FF 36 32 05
        call    L_0C49                          ; E8 FB 01
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [0x532], ax            ; A3 32 05
        or      ax, ax                          ; 0B C0
        jne     L_0AD3                          ; 75 7B
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x532], ax            ; A3 32 05
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 25 0B 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        jmp     L_0AD3                          ; EB 62
;   [conditional branch target (if/else)] L_0A71
L_0A71:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A A0 0B 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.INFLATERECT            ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A B2 0B 00 00 [FIXUP]
        mov     word ptr [0x532], 0             ; C7 06 32 05 00 00
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        add     ax, word ptr [0x1ba]            ; 03 06 BA 01
        mov     word ptr [0x2aa], ax            ; A3 AA 02
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        add     ax, word ptr [0x28c]            ; 03 06 8C 02
        mov     word ptr [0x2a8], ax            ; A3 A8 02
;   [branch target] L_0AD3
L_0AD3:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        je      L_0AE5                          ; 74 0C
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far USER.SETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0AE5
L_0AE5:
        call    far USER.CLOSECLIPBOARD         ; 9A 3C 0C 00 00 [FIXUP]
;   [unconditional branch target] L_0AEA
L_0AEA:
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
        sub     sp, 0x1a                        ; 83 EC 1A
        cmp     word ptr [0x14], 0x74           ; 83 3E 14 00 74
        jne     L_0B2F                          ; 75 28
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x302                       ; B8 02 03
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A 97 07 00 00 [FIXUP]
        or      ax, dx                          ; 0B C2
        je      L_0B20                          ; 74 03
        jmp     L_0C40                          ; E9 20 01
;   [conditional branch target (if/else)] L_0B20
L_0B20:
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        call    far _entry_12                   ; 9A 34 0C 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
        jmp     L_0C40                          ; E9 11 01
;   [conditional branch target (if/else)] L_0B2F
L_0B2F:
        push    word ptr [0x286]                ; FF 36 86 02
        call    far USER.OPENCLIPBOARD          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0B3F                          ; 75 03
        jmp     L_0C40                          ; E9 01 01
;   [conditional branch target (if/else)] L_0B3F
L_0B3F:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far USER.GETCLIPBOARDDATA       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0B52                          ; 75 03
        jmp     L_0C2F                          ; E9 DD 00
;   [conditional branch target (if/else)] L_0B52
L_0B52:
        push    ax                              ; 50
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
        push    ax                              ; 50
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far GDI.GETOBJECT               ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    L_0C49                          ; E8 DE 00
        add     sp, 4                           ; 83 C4 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        or      ax, ax                          ; 0B C0
        jne     L_0B7B                          ; 75 06
        mov     ax, 0x12                        ; B8 12 00
        jmp     L_0C32                          ; E9 B7 00
;   [conditional branch target (if/else)] L_0B7B
L_0B7B:
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0BBF                          ; 74 3D
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 12 0C 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 24 0C 00 00 [FIXUP]
        push    word ptr [0x532]                ; FF 36 32 05
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FA 0C 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0BBF
L_0BBF:
        mov     ax, word ptr [bp - 0x18]        ; 8B 46 E8
        mov     word ptr [0x528], ax            ; A3 28 05
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        mov     word ptr [0x52a], ax            ; A3 2A 05
        imul    word ptr [bp - 0x14]            ; F7 6E EC
        mov     word ptr [0x530], ax            ; A3 30 05
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [0x52e], ax            ; A3 2E 05
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        mov     word ptr [0x532], ax            ; A3 32 05
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A F0 0B 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        call    far USER.SETFOCUS               ; 9A 6B 09 00 00 [FIXUP]
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x528]            ; A1 28 05
        add     ax, word ptr [0x52c]            ; 03 06 2C 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF FF 00 00 [FIXUP]
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        jmp     L_0C3B                          ; EB 0C
;   [unconditional branch target] L_0C2F
L_0C2F:
        mov     ax, 0x22                        ; B8 22 00
;   [unconditional branch target] L_0C32
L_0C32:
        push    ax                              ; 50
        call    far _entry_12                   ; 9A C3 09 00 00 [FIXUP]
        add     sp, 2                           ; 83 C4 02
;   [unconditional branch target] L_0C3B
L_0C3B:
        call    far USER.CLOSECLIPBOARD         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0C40
L_0C40:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HANDLE    (1 use)
;   Locals:
;     [bp-0x2]   HDC       (3 uses)
;     [bp-0x4]   HBITMAP   (1 use)
;     [bp-0x6]   HDC       (3 uses)
;     [bp-0x8]   HDC       (3 uses)

; Description (heuristic):
;   Drawing routine (4 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0C49   offset=0x0C49  size=317 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   CREATECOMPATIBLEDC(HDC hDC) -> HDC
;   DELETEOBJECT(HANDLE hObj) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   OFFSETRECT
;   PTINRECT
;   RELEASECAPTURE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCAPTURE
;   SETRECT
;
; Near calls (internal): L_0F9F, L_0FD0
;-------------------------------------------------------------------------
;   [sub-routine] L_0C49
L_0C49:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    ax                              ; 50
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A 77 0C 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> CREATECOMPATIBLEDC(HDC hDC) -> HDC
        call    far GDI.CREATECOMPATIBLEDC      ; 9A FE 03 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [0x286]                ; FF 36 86 02
        ;   ^ arg hWnd
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D03                          ; 74 73
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0D03                          ; 74 6D
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hDC
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A C8 0C 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0D03                          ; 74 5E
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        ;   ^ arg nWidth
        push    word ptr [bx + 4]               ; FF 77 04
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
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D03                          ; 74 40
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A F2 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0CF6                          ; 74 26
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDCDest
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        push    word ptr [bx + 2]               ; FF 77 02
        ;   ^ arg nWidth
        push    word ptr [bx + 4]               ; FF 77 04
        ;   ^ arg nHeight
        push    word ptr [bp - 6]               ; FF 76 FA
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
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D03                          ; 75 0D
;   [conditional branch target (if/else)] L_0CF6
L_0CF6:
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 0D 0D 00 00 [FIXUP]
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [conditional branch target (if/else)] L_0D03
L_0D03:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0D11                          ; 74 08
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A 1B 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0D11
L_0D11:
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        je      L_0D1F                          ; 74 08
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A B9 05 00 00 [FIXUP]
;   [error/early exit] L_0D1F
L_0D1F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
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
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        jne     L_0D3F                          ; 75 03
        jmp     L_0E36                          ; E9 F7 00
;   [conditional branch target (if/else)] L_0D3F
L_0D3F:
        cmp     ax, 0x201                       ; 3D 01 02
        je      L_0D4C                          ; 74 08
        cmp     ax, 0x202                       ; 3D 02 02
        je      L_0DA2                          ; 74 59
        jmp     L_0F27                          ; E9 DB 01
;   [conditional branch target (if/else)] L_0D4C
L_0D4C:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    far USER.PTINRECT               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0D63                          ; 75 03
        jmp     L_0F27                          ; E9 C4 01
;   [conditional branch target (if/else)] L_0D63
L_0D63:
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x28c]            ; 2B 06 8C 02
        mov     word ptr [0x3dc], ax            ; A3 DC 03
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x1ba]            ; 2B 06 BA 01
        mov     word ptr [0x3de], ax            ; A3 DE 03
        mov     word ptr [0x43e], 1             ; C7 06 3E 04 01 00
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     word ptr [0x404], dx            ; 89 16 04 04
        jmp     L_0F27                          ; E9 85 01
;   [conditional branch target (if/else)] L_0DA2
L_0DA2:
        cmp     word ptr [0x43e], 0             ; 83 3E 3E 04 00
        jne     L_0DAC                          ; 75 03
        jmp     L_0F27                          ; E9 7B 01
;   [conditional branch target (if/else)] L_0DAC
L_0DAC:
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        cmp     word ptr [0x2a6], ax            ; 39 06 A6 02
        jne     L_0DC3                          ; 75 09
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        cmp     word ptr [0x2a4], ax            ; 39 06 A4 02
        je      L_0E21                          ; 74 5E
;   [conditional branch target (if/else)] L_0DC3
L_0DC3:
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        add     ax, word ptr [0x528]            ; 03 06 28 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 79 0F 00 00 [FIXUP]
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [0x52e], ax            ; A3 2E 05
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 11 0E 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A B0 0A 00 00 [FIXUP]
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0E21                          ; 74 05
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
;   [conditional branch target (if/else)] L_0E21
L_0E21:
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        mov     word ptr [0x404], ax            ; A3 04 04
        mov     word ptr [0x43e], 0             ; C7 06 3E 04 00 00
        jmp     L_0F27                          ; E9 F1 00
;   [unconditional branch target] L_0E36
L_0E36:
        cmp     word ptr [0x43e], 0             ; 83 3E 3E 04 00
        jne     L_0E40                          ; 75 03
        jmp     L_0F27                          ; E9 E7 00
;   [conditional branch target (if/else)] L_0E40
L_0E40:
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        add     ax, word ptr [0x2a4]            ; 03 06 A4 02
        sub     ax, word ptr [0x402]            ; 2B 06 02 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x3dc]            ; A1 DC 03
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0E60                          ; 7E 0A
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        add     ax, word ptr [0x402]            ; 03 06 02 04
        jmp     L_0E7A                          ; EB 1A
;   [conditional branch target (if/else)] L_0E60
L_0E60:
        mov     si, word ptr [0x28c]            ; 8B 36 8C 02
        sub     si, word ptr [0x2a8]            ; 2B 36 A8 02
        add     si, word ptr [0x2a4]            ; 03 36 A4 02
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        jge     L_0E7D                          ; 7D 0C
        mov     ax, word ptr [0x402]            ; A1 02 04
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        add     ax, si                          ; 03 C6
;   [unconditional branch target] L_0E7A
L_0E7A:
        mov     word ptr [bp + 0xc], ax         ; 89 46 0C
;   [conditional branch target (if/else)] L_0E7D
L_0E7D:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        add     ax, word ptr [0x2a6]            ; 03 06 A6 02
        sub     ax, word ptr [0x404]            ; 2B 06 04 04
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr [0x3de]            ; A1 DE 03
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        jle     L_0E9D                          ; 7E 0A
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        add     ax, word ptr [0x404]            ; 03 06 04 04
        jmp     L_0EB7                          ; EB 1A
;   [conditional branch target (if/else)] L_0E9D
L_0E9D:
        mov     si, word ptr [0x1ba]            ; 8B 36 BA 01
        sub     si, word ptr [0x2aa]            ; 2B 36 AA 02
        add     si, word ptr [0x2a6]            ; 03 36 A6 02
        cmp     word ptr [bp - 0xc], si         ; 39 76 F4
        jge     L_0EBA                          ; 7D 0C
        mov     ax, word ptr [0x404]            ; A1 04 04
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        add     ax, si                          ; 03 C6
;   [unconditional branch target] L_0EB7
L_0EB7:
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
;   [conditional branch target (if/else)] L_0EBA
L_0EBA:
        mov     ax, word ptr [0x402]            ; A1 02 04
        cmp     word ptr [bp + 0xc], ax         ; 39 46 0C
        jne     L_0ECA                          ; 75 08
        mov     ax, word ptr [0x404]            ; A1 04 04
        cmp     word ptr [bp + 0xe], ax         ; 39 46 0E
        je      L_0F27                          ; 74 5D
;   [conditional branch target (if/else)] L_0ECA
L_0ECA:
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A AA 0F 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 EE 00
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        sub     ax, word ptr [0x402]            ; 2B 06 02 04
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        sub     ax, word ptr [0x404]            ; 2B 06 04 04
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     dx, word ptr [bp + 0xe]         ; 8B 56 0E
        mov     word ptr [0x402], ax            ; A3 02 04
        mov     word ptr [0x404], dx            ; 89 16 04 04
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 B8 00
        add     sp, 4                           ; 83 C4 04
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A C8 0F 00 00 [FIXUP]
;   [branch target] L_0F27
L_0F27:
        pop     si                              ; 5E
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
        cmp     word ptr [0x532], 0             ; 83 3E 32 05 00
        je      L_0F60                          ; 74 1E
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [0x52c]                ; FF 36 2C 05
        push    word ptr [0x52e]                ; FF 36 2E 05
        mov     ax, word ptr [0x52c]            ; A1 2C 05
        add     ax, word ptr [0x528]            ; 03 06 28 05
        push    ax                              ; 50
        mov     ax, word ptr [0x52e]            ; A1 2E 05
        add     ax, word ptr [0x52a]            ; 03 06 2A 05
        jmp     L_0F77                          ; EB 17
;   [conditional branch target (if/else)] L_0F60
L_0F60:
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        add     ax, 5                           ; 05 05 00
        push    ax                              ; 50
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     ax, 5                           ; 05 05 00
;   [unconditional branch target] L_0F77
L_0F77:
        push    ax                              ; 50
        call    far USER.SETRECT                ; 9A 8F 0A 00 00 [FIXUP]
        call    L_0F9F                          ; E8 1F 00
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
        call    L_0F9F                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x2]   HDC       (2 uses)

; Description (heuristic):
;   Small helper using 2 API(s): GETDC, RELEASEDC.

;-------------------------------------------------------------------------
; sub_0F9F   offset=0x0F9F  size=19 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;
; Near calls (internal): L_0FD0
;-------------------------------------------------------------------------
;   [sub-routine] L_0F9F
L_0F9F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A 63 0C 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0FD0                          ; E8 13 00
        add     sp, 4                           ; 83 C4 04
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A 86 0C 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  HDC       (5 uses)
;   Locals:
;     [bp-0x4]   INT       (2 uses)
;     [bp-0x6]   INT       (1 use)
;     [bp-0x8]   INT       (3 uses)
;     [bp-0xa]   INT       (2 uses)

; Description (heuristic):
;   Mixed routine using: PATBLT, SELECTOBJECT, INVALIDATERECT (+1 more).

;-------------------------------------------------------------------------
; sub_0FD0   offset=0x0FD0  size=186 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
;   OFFSETRECT
;-------------------------------------------------------------------------
;   [sub-routine] L_0FD0
L_0FD0:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa                         ; 83 EC 0A
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [0x1f8]                ; FF 36 F8 01
        ;   ^ arg hObj
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 9D 0C 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        mov     cx, word ptr [bx]               ; 8B 0F
        mov     word ptr [bp - 8], cx           ; 89 4E F8
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        mov     cx, word ptr [bx + 2]           ; 8B 4F 02
        mov     word ptr [bp - 6], cx           ; 89 4E FA
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    cx                              ; 51
        ;   ^ arg y
        push    word ptr [bp - 0xa]             ; FF 76 F6
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
        call    far GDI.PATBLT                  ; 9A 43 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 6]           ; 8B 47 06
        dec     ax                              ; 48
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [bp - 0xa]             ; FF 76 F6
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
        call    far GDI.PATBLT                  ; 9A 67 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 2]           ; 8B 47 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A 8C 10 00 00 [FIXUP]
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hDC
        push    ax                              ; 50
        ;   ^ arg x
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg y
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nWidth
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nHeight
        mov     ax, 0x49                        ; B8 49 00
        mov     dx, 0x5a                        ; BA 5A 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 6                           ; 83 EC 06
        push    si                              ; 56
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_10ED                          ; 74 32
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_10CF                          ; 74 0F
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_10F5                          ; 74 30
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_10E5                          ; 74 1B
        sub     ax, ax                          ; 2B C0
        jmp     L_1195                          ; E9 C6 00
;   [conditional branch target (if/else)] L_10CF
L_10CF:
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        sub     word ptr [bp - 4], ax           ; 29 46 FC
;   [loop start] L_10D5
L_10D5:
        mov     ax, 0x27                        ; B8 27 00
        imul    word ptr [0x28c]                ; F7 2E 8C 02
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        jle     L_10FD                          ; 7E 1A
        jmp     L_110E                          ; EB 29
;   [conditional branch target (if/else)] L_10E5
L_10E5:
        mov     ax, word ptr [0x1ba]            ; A1 BA 01
        add     word ptr [bp - 4], ax           ; 01 46 FC
        jmp     L_10D5                          ; EB E8
;   [conditional branch target (if/else)] L_10ED
L_10ED:
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        sub     word ptr [bp - 6], ax           ; 29 46 FA
        jmp     L_10D5                          ; EB E0
;   [conditional branch target (if/else)] L_10F5
L_10F5:
        mov     ax, word ptr [0x28c]            ; A1 8C 02
        add     word ptr [bp - 6], ax           ; 01 46 FA
        jmp     L_10D5                          ; EB D8
;   [conditional branch target (if/else)] L_10FD
L_10FD:
        mov     si, word ptr [0x28c]            ; 8B 36 8C 02
        sub     si, word ptr [0x2a8]            ; 2B 36 A8 02
        add     si, word ptr [0x2a4]            ; 03 36 A4 02
        cmp     word ptr [bp - 6], si           ; 39 76 FA
        jge     L_1111                          ; 7D 03
;   [unconditional branch target] L_110E
L_110E:
        mov     word ptr [bp - 6], si           ; 89 76 FA
;   [conditional branch target (if/else)] L_1111
L_1111:
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [0x1ba]                ; F7 2E BA 01
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jg      L_1130                          ; 7F 11
        mov     si, word ptr [0x1ba]            ; 8B 36 BA 01
        sub     si, word ptr [0x2aa]            ; 2B 36 AA 02
        add     si, word ptr [0x2a6]            ; 03 36 A6 02
        cmp     word ptr [bp - 4], si           ; 39 76 FC
        jge     L_1133                          ; 7D 03
;   [conditional branch target (if/else)] L_1130
L_1130:
        mov     word ptr [bp - 4], si           ; 89 76 FC
;   [conditional branch target (if/else)] L_1133
L_1133:
        mov     ax, word ptr [0x2a4]            ; A1 A4 02
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jne     L_1143                          ; 75 08
        mov     ax, word ptr [0x2a6]            ; A1 A6 02
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        je      L_118D                          ; 74 4A
;   [conditional branch target (if/else)] L_1143
L_1143:
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A 89 11 00 00 [FIXUP]
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x52c], ax            ; A3 2C 05
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x52e], ax            ; A3 2E 05
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [0x2a4]            ; 2B 06 A4 02
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, word ptr [0x2a6]            ; 2B 06 A6 02
        push    ax                              ; 50
        call    far USER.OFFSETRECT             ; 9A FB 0E 00 00 [FIXUP]
        push    word ptr [0x29a]                ; FF 36 9A 02
        ;   ^ arg hWnd
        mov     ax, 0x2a4                       ; B8 A4 02
        push    ds                              ; 1E
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg bErase
        ; --> INVALIDATERECT(HWND hWnd, LPRECT lpRect, BOOL bErase) -> VOID
        call    far USER.INVALIDATERECT         ; 9A FF 0D 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_118D
L_118D:
        or      byte ptr [0x410], 2             ; 80 0E 10 04 02
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1195
L_1195:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

CARDFILE_TEXT ENDS

        END
