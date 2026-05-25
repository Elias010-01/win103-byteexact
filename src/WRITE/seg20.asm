; ======================================================================
; WRITE / seg20.asm   (segment 20 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         5
; Total instructions:                  802
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     23 (19 unique)
;   Top:
;        3  ENABLEWINDOW
;        2  INSENDMESSAGE
;        2  ISWINDOWENABLED
;        1  GLOBALLOCK
;        1  GLOBALSIZE
;        1  GLOBALUNLOCK
;        1  LOCALALLOC
;        1  LOCALCOMPACT
; ======================================================================
; AUTO-GENERATED from original WRITE segment 20
; segment_size=2034 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

; Description (heuristic):
;   Pure computation / dispatcher (41 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=41 instr  segment=seg20.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;-------------------------------------------------------------------------
L_0000:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        and     ax, 0xf000                      ; 25 00 F0
        cmp     ax, 0x1000                      ; 3D 00 10
        je      L_0026                          ; 74 11
        cmp     ax, 0x2000                      ; 3D 00 20
        je      L_002B                          ; 74 11
        cmp     ax, 0x3000                      ; 3D 00 30
        je      L_0030                          ; 74 11
        cmp     ax, 0x4000                      ; 3D 00 40
        je      L_0035                          ; 74 11
        jmp     L_0038                          ; EB 12
;   [conditional branch target (if/else)] L_0026
L_0026:
        mov     ax, 0x40                        ; B8 40 00
        jmp     L_0038                          ; EB 0D
;   [conditional branch target (if/else)] L_002B
L_002B:
        mov     ax, 0x30                        ; B8 30 00
        jmp     L_0038                          ; EB 08
;   [conditional branch target (if/else)] L_0030
L_0030:
        mov     ax, 0x13                        ; B8 13 00
        jmp     L_0038                          ; EB 03
;   [conditional branch target (if/else)] L_0035
L_0035:
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
;   [unconditional branch target] L_0038
L_0038:
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
;   [loop start] L_004D
L_004D:
        jmp     L_004D                          ; EB FE
; Description (heuristic):
;   Allocation / initialization routine (2 alloc APIs).

;-------------------------------------------------------------------------
; sub_004F   offset=0x004F  size=118 instr  segment=seg20.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALSIZE(HANDLE hMem) -> DWORD
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   INSENDMESSAGE
;
; Near calls (internal): L_018A, L_06E1
;-------------------------------------------------------------------------
;   [sub-routine] L_004F
L_004F:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xa2                        ; 81 EC A2 00
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 9A FF
        mov     word ptr [bp - 0xa2], ax        ; 89 86 5E FF
        cmp     word ptr [0x7aa], 0             ; 83 3E AA 07 00
        jne     L_0076                          ; 75 05
        mov     ax, word ptr [0x780]            ; A1 80 07
        jmp     L_0079                          ; EB 03
;   [conditional branch target (if/else)] L_0076
L_0076:
        mov     ax, word ptr [0x7aa]            ; A1 AA 07
;   [unconditional branch target] L_0079
L_0079:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], 0x4002       ; 81 7E 06 02 40
        jne     L_0098                          ; 75 16
        mov     word ptr [0x4e], 1              ; C7 06 4E 00 01 00
        cmp     word ptr [0x42], 0              ; 83 3E 42 00 00
        je      L_0092                          ; 74 03
        jmp     L_017E                          ; E9 EC 00
;   [conditional branch target (if/else)] L_0092
L_0092:
        mov     word ptr [0x42], 1              ; C7 06 42 00 01 00
;   [conditional branch target (if/else)] L_0098
L_0098:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_00A2                          ; 74 03
        jmp     L_0171                          ; E9 CF 00
;   [conditional branch target (if/else)] L_00A2
L_00A2:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        je      L_00AC                          ; 74 03
        jmp     L_0171                          ; E9 C5 00
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A A0 01 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     ax, 0x201d                      ; 3D 1D 20
        je      L_011B                          ; 74 5F
        jg      L_012A                          ; 7F 6C
        cmp     ax, 0x2013                      ; 3D 13 20
        je      L_0111                          ; 74 4E
        cmp     ax, 0x201b                      ; 3D 1B 20
        je      L_0116                          ; 74 4E
        jmp     L_013E                          ; EB 74
;   [loop start] L_00CA
L_00CA:
        mov     ax, word ptr [0x6e8]            ; A1 E8 06
;   [loop start] L_00CD
L_00CD:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        jne     L_00D7                          ; 75 03
        jmp     L_017E                          ; E9 A7 00
;   [conditional branch target (if/else)] L_00D7
L_00D7:
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        or      ax, dx                          ; 0B C2
        jne     L_00EA                          ; 75 03
        jmp     L_017E                          ; E9 94 00
;   [conditional branch target (if/else)] L_00EA
L_00EA:
        push    dx                              ; 52
        push    word ptr [bp - 8]               ; FF 76 F8
        lea     ax, [bp - 0x9e]                 ; 8D 86 62 FF
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALSIZE(HANDLE hMem) -> DWORD
        call    far KERNEL.GLOBALSIZE           ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_014B                          ; EB 3F
;   [loop start] L_010C
L_010C:
        mov     ax, word ptr [0x6ea]            ; A1 EA 06
        jmp     L_00CD                          ; EB BC
;   [conditional branch target (if/else)] L_0111
L_0111:
        mov     ax, word ptr [0x6ec]            ; A1 EC 06
        jmp     L_00CD                          ; EB B7
;   [conditional branch target (if/else)] L_0116
L_0116:
        mov     ax, word ptr [0x6ee]            ; A1 EE 06
        jmp     L_00CD                          ; EB B2
;   [conditional branch target (if/else)] L_011B
L_011B:
        mov     ax, word ptr [0x6f0]            ; A1 F0 06
        jmp     L_00CD                          ; EB AD
;   [loop start] L_0120
L_0120:
        mov     ax, word ptr [0x6f2]            ; A1 F2 06
        jmp     L_00CD                          ; EB A8
;   [loop start] L_0125
L_0125:
        mov     ax, word ptr [0x6f4]            ; A1 F4 06
        jmp     L_00CD                          ; EB A3
;   [conditional branch target (if/else)] L_012A
L_012A:
        cmp     ax, 0x2021                      ; 3D 21 20
        je      L_0120                          ; 74 F1
        cmp     ax, 0x2022                      ; 3D 22 20
        je      L_010C                          ; 74 D8
        cmp     ax, 0x4002                      ; 3D 02 40
        je      L_00CA                          ; 74 91
        cmp     ax, 0x4005                      ; 3D 05 40
        je      L_0125                          ; 74 E7
;   [unconditional branch target] L_013E
L_013E:
        lea     ax, [bp - 0x9e]                 ; 8D 86 62 FF
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_52                   ; 9A 2C 03 00 00 [FIXUP]
;   [unconditional branch target] L_014B
L_014B:
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        je      L_0162                          ; 74 10
        call    far USER.INSENDMESSAGE          ; 9A 3C 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0162                          ; 75 07
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        call    L_06E1                          ; E8 7F 05
;   [conditional branch target (if/else)] L_0162
L_0162:
        push    si                              ; 56
        lea     ax, [bp - 0x9e]                 ; 8D 86 62 FF
        push    ax                              ; 50
        push    word ptr [bp - 0xa2]            ; FF B6 5E FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_018A                          ; E8 19 00
;   [unconditional branch target] L_0171
L_0171:
        cmp     word ptr [bp - 0xa2], 0x40      ; 83 BE 5E FF 40
        je      L_017E                          ; 74 06
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
;   [branch target] L_017E
L_017E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  WORD      (2 uses)

; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_018A   offset=0x018A  size=537 instr  segment=seg20.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALCOMPACT
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   ENABLEWINDOW
;   INSENDMESSAGE
;   ISWINDOWENABLED
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_004F, L_018A, L_06E1, L_0778
;-------------------------------------------------------------------------
;   [sub-routine] L_018A
L_018A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A 09 03 00 00 [FIXUP]
        cmp     word ptr [bp + 6], 0x30         ; 83 7E 06 30
        je      L_01B0                          ; 74 06
        cmp     word ptr [bp + 6], 0x10         ; 83 7E 06 10
        jne     L_01CA                          ; 75 1A
;   [conditional branch target (if/else)] L_01B0
L_01B0:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        je      L_01BA                          ; 74 03
        jmp     L_0281                          ; E9 C7 00
;   [conditional branch target (if/else)] L_01BA
L_01BA:
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        je      L_01CA                          ; 74 03
        jmp     L_0281                          ; E9 B7 00
;   [conditional branch target (if/else)] L_01CA
L_01CA:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_01F5                          ; 74 25
        mov     ax, word ptr [0x7a2]            ; A1 A2 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_01E8                          ; 74 10
        mov     ax, word ptr [0x7a4]            ; A1 A4 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_01E8                          ; 74 08
        mov     ax, word ptr [0x7a0]            ; A1 A0 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_01F5                          ; 75 0D
;   [conditional branch target (if/else)] L_01E8
L_01E8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 85 05
        jmp     L_0220                          ; EB 2B
;   [conditional branch target (if/else)] L_01F5
L_01F5:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0218                          ; 74 1D
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0218                          ; 75 11
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 71 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_0218
L_0218:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 7A 02 00 00 [FIXUP]
;   [unconditional branch target] L_0220
L_0220:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x10a                       ; B8 0A 01
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0264                          ; 74 26
        mov     ax, word ptr [0x7a2]            ; A1 A2 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_0256                          ; 74 10
        mov     ax, word ptr [0x7a4]            ; A1 A4 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        je      L_0256                          ; 74 08
        mov     ax, word ptr [0x7a0]            ; A1 A0 07
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jne     L_0264                          ; 75 0E
;   [conditional branch target (if/else)] L_0256
L_0256:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0778                          ; E8 16 05
        jmp     L_027E                          ; EB 1A
;   [conditional branch target (if/else)] L_0264
L_0264:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0275                          ; 74 0B
        push    word ptr [bp + 0xa]             ; FF 76 0A
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0275
L_0275:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_027E
L_027E:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_0281
L_0281:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     word ptr [0x4e], 1              ; C7 06 4E 00 01 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_54                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x6f6], 0             ; 83 3E F6 06 00
        jne     L_02BB                          ; 75 0F
        mov     ax, 0x4005                      ; B8 05 40
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_004F                          ; E8 9A FD
        mov     word ptr [0x6f6], 1             ; C7 06 F6 06 01 00
;   [conditional branch target (if/else)] L_02BB
L_02BB:
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
        sub     sp, 0x9e                        ; 81 EC 9E 00
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 25 FD
        mov     word ptr [bp - 0x9e], ax        ; 89 86 62 FF
        cmp     word ptr [0x7aa], 0             ; 83 3E AA 07 00
        jne     L_02EB                          ; 75 05
        mov     ax, word ptr [0x780]            ; A1 80 07
        jmp     L_02EE                          ; EB 03
;   [conditional branch target (if/else)] L_02EB
L_02EB:
        mov     ax, word ptr [0x7aa]            ; A1 AA 07
;   [unconditional branch target] L_02EE
L_02EE:
        mov     si, ax                          ; 8B F0
        cmp     word ptr [bp + 6], 0x4000       ; 81 7E 06 00 40
        jne     L_030D                          ; 75 16
        cmp     word ptr [0x3e], 0              ; 83 3E 3E 00 00
        jne     L_030D                          ; 75 0F
        mov     word ptr [0x3e], 1              ; C7 06 3E 00 01 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_53                   ; 9A 1F 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_030D
L_030D:
        cmp     word ptr [0xbda], 0             ; 83 3E DA 0B 00
        jne     L_0360                          ; 75 4C
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0360                          ; 75 45
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_53                   ; 9A FF FF 00 00 [FIXUP]
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_52                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x9c], ax        ; 89 86 64 FF
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        je      L_034B                          ; 74 10
        call    far USER.INSENDMESSAGE          ; 9A 9F 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_034B                          ; 75 07
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        call    L_06E1                          ; E8 96 03
;   [conditional branch target (if/else)] L_034B
L_034B:
        push    si                              ; 56
        lea     ax, [bp - 0x98]                 ; 8D 86 68 FF
        push    ax                              ; 50
        push    word ptr [bp - 0x9e]            ; FF B6 62 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_018A                          ; E8 30 FE
        mov     word ptr [0xbda], 1             ; C7 06 DA 0B 01 00
;   [conditional branch target (if/else)] L_0360
L_0360:
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
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        mov     word ptr [0x1234], ax           ; A3 34 12
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        je      L_03AE                          ; 74 10
        call    far USER.INSENDMESSAGE          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03AE                          ; 75 07
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    L_06E1                          ; E8 33 03
;   [conditional branch target (if/else)] L_03AE
L_03AE:
        push    word ptr [0x782]                ; FF 36 82 07
        ;   ^ arg hInstance
        mov     ax, 0x15                        ; B8 15 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWndOwner
        push    word ptr [0xc42]                ; FF 36 42 0C
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [0xc40]                ; FF 36 40 0C
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
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
        sub     sp, 0x12                        ; 83 EC 12
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_0445                          ; 74 57
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_03FA                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0455                          ; 74 5D
        jmp     L_0451                          ; EB 57
;   [conditional branch target (if/else)] L_03FA
L_03FA:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A 1C 02 00 00 [FIXUP]
        mov     word ptr [bp - 4], 3            ; C7 46 FC 03 00
;   [loop start] L_0407
L_0407:
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ax                              ; 50
        mov     bx, word ptr [bp - 6]           ; 8B 5E FA
        push    word ptr [bx]                   ; FF 37
        push    word ptr [0x30e]                ; FF 36 0E 03
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_60                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        inc     word ptr [bp - 4]               ; FF 46 FC
        add     word ptr [bp - 6], 2            ; 83 46 FA 02
        cmp     word ptr [bp - 4], 6            ; 83 7E FC 06
        jle     L_0407                          ; 7E C7
;   [loop start] L_0440
L_0440:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0468                          ; EB 23
;   [conditional branch target (if/else)] L_0445
L_0445:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0451                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
;   [loop start (also forward branch)] L_0451
L_0451:
        sub     ax, ax                          ; 2B C0
        jmp     L_0468                          ; EB 13
;   [conditional branch target (if/else)] L_0455
L_0455:
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_0451                          ; 75 F6
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0440                          ; EB D8
;   [unconditional branch target] L_0468
L_0468:
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
        sub     sp, 0x14                        ; 83 EC 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, word ptr [0x1bd2]           ; 03 06 D2 1B
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jle     L_0497                          ; 7E 05
;   [loop start] L_0492
L_0492:
        sub     ax, ax                          ; 2B C0
        jmp     L_058F                          ; E9 F8 00
;   [conditional branch target (if/else)] L_0497
L_0497:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        shl     ax, 1                           ; D1 E0
        inc     ax                              ; 40
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     cx, word ptr [bp - 6]           ; 8B 4E FA
        inc     cx                              ; 41
        and     cl, 0xfe                        ; 80 E1 FE
        add     ax, cx                          ; 03 C1
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
        mov     cl, 7                           ; B1 07
        shl     dx, cl                          ; D3 E2
        add     ax, dx                          ; 03 C2
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0xa58]                ; FF 36 58 0A
        ;   ^ arg hMem
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_04DE                          ; 75 0E
        cmp     word ptr [bp + 6], 1            ; 83 7E 06 01
        jne     L_0492                          ; 75 BC
        mov     word ptr [0x764], 0x400         ; C7 06 64 07 00 04
        jmp     L_0492                          ; EB B4
;   [conditional branch target (if/else)] L_04DE
L_04DE:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     cl, 7                           ; B1 07
        shl     ax, cl                          ; D3 E0
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     ax, word ptr [0x1070]           ; A1 70 10
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [0x1bd2]               ; F7 2E D2 1B
        inc     ax                              ; 40
        and     al, 0xfe                        ; 24 FE
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    word ptr [0x123e]               ; FF 36 3E 12
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [0x123e], ax           ; A3 3E 12
        push    ax                              ; 50
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far _entry_45                   ; 9A 34 05 00 00 [FIXUP]
        push    word ptr [0x1bfe]               ; FF 36 FE 1B
        mov     ax, word ptr [bp - 0x14]        ; 8B 46 EC
        add     ax, word ptr [0xa58]            ; 03 06 58 0A
        mov     word ptr [0x1bfe], ax           ; A3 FE 1B
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     ax, word ptr [0x123e]           ; A1 3E 12
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        jmp     L_0576                          ; EB 31
;   [loop start] L_0545
L_0545:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jl      L_0568                          ; 7C 1B
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     word ptr [bx + 2], 0x7fff       ; C7 47 02 FF 7F
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [0x1bf4]           ; A1 F4 1B
        mov     cx, word ptr [0x1bd2]           ; 8B 0E D2 1B
        shl     cx, 1                           ; D1 E1
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bx + 4], ax           ; 89 47 04
;   [conditional branch target (if/else)] L_0568
L_0568:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     byte ptr [bx + 8], 0xff         ; C6 47 08 FF
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     word ptr [bp - 0x12], 9         ; 83 46 EE 09
;   [unconditional branch target] L_0576
L_0576:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jl      L_0545                          ; 7C C7
        mov     word ptr [0x1bd2], ax           ; A3 D2 1B
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x1070], ax           ; A3 70 10
        call    far _entry_58                   ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_058F
L_058F:
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
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x1bce], 0            ; 83 3E CE 1B 00
        jne     L_05C7                          ; 75 19
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A DD 05 00 00 [FIXUP]
        mov     word ptr [0x1bce], ax           ; A3 CE 1B
        or      ax, ax                          ; 0B C0
        jne     L_05C7                          ; 75 05
;   [loop start] L_05C2
L_05C2:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05F0                          ; EB 29
;   [conditional branch target (if/else)] L_05C7
L_05C7:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.LOCALCOMPACT         ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0x400                       ; 3D 00 04
        jae     L_05EE                          ; 73 1A
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x400                       ; B8 00 04
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_05C2                          ; 74 DA
        push    ax                              ; 50
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_05EE
L_05EE:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05F0
L_05F0:
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
        sub     sp, 0x12                        ; 83 EC 12
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jne     L_061A                          ; 75 07
        mov     word ptr [bp - 8], 6            ; C7 46 F8 06 00
        jmp     L_061F                          ; EB 05
;   [conditional branch target (if/else)] L_061A
L_061A:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
;   [unconditional branch target] L_061F
L_061F:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [loop start] L_0625
L_0625:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0692                          ; 7D 65
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 8]               ; F7 6E F8
        add     ax, word ptr [0x123e]           ; 03 06 3E 12
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     word ptr [bp - 0x10], 0xffff    ; C7 46 F0 FF FF
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        jmp     L_0678                          ; EB 31
;   [loop start] L_0647
L_0647:
        mov     bx, word ptr [bp - 0x12]        ; 8B 5E EE
        mov     ax, word ptr [bx + 4]           ; 8B 47 04
        sub     ax, word ptr [0x1bf4]           ; 2B 06 F4 1B
        dec     ax                              ; 48
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        ja      L_0671                          ; 77 14
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jbe     L_0671                          ; 76 0C
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_0671
L_0671:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        add     word ptr [bp - 0x12], 9         ; 83 46 EE 09
;   [unconditional branch target] L_0678
L_0678:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_0647                          ; 7C C7
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        test    byte ptr [bx + si + 6], 1       ; F6 40 06 01
        jne     L_06AD                          ; 75 1B
;   [loop start (also forward branch)] L_0692
L_0692:
        mov     ax, word ptr [0x1bd2]           ; A1 D2 1B
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_06D4                          ; 7D 3A
        mov     ax, word ptr [0x48]             ; A1 48 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        jne     L_06A8                          ; 75 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0xee2], ax            ; A3 E2 0E
;   [conditional branch target (if/else)] L_06A8
L_06A8:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        jmp     L_06D4                          ; EB 27
;   [conditional branch target (if/else)] L_06AD
L_06AD:
        mov     ax, 9                           ; B8 09 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        mov     di, ax                          ; 8B F8
        mov     bx, word ptr [0x123e]           ; 8B 1E 3E 12
        mov     si, word ptr [bx + di + 2]      ; 8B 71 02
        or      si, si                          ; 0B F6
        je      L_06C8                          ; 74 08
        push    si                              ; 56
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0692                          ; EB CA
;   [conditional branch target (if/else)] L_06C8
L_06C8:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        jmp     L_0625                          ; E9 51 FF
;   [branch target] L_06D4
L_06D4:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Mixed routine using: DISPATCHMESSAGE, ENABLEWINDOW, ISWINDOWENABLED (+4 more).

;-------------------------------------------------------------------------
; sub_06E1   offset=0x06E1  size=58 instr  segment=seg20.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
;   ENABLEWINDOW
;   ISWINDOWENABLED
;   MESSAGEBEEP
;   PEEKMESSAGE(LPMSG lpMsg, HWND hWnd, WORD wMsgFilterMin, WORD wMsgFilterMax, WORD wRemoveMsg) -> BOOL
;   SETTIMER
;   TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_06E1
L_06E1:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [0x780]                ; FF 36 80 07
        call    far USER.ISWINDOWENABLED        ; 9A FF 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_070E                          ; 75 0D
        push    word ptr [0x780]                ; FF 36 80 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 6E 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_070E
L_070E:
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x1f4                       ; B8 F4 01
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far USER.SETTIMER               ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x660], ax            ; A3 60 06
        jmp     L_0759                          ; EB 32
;   [loop start] L_0727
L_0727:
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
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
        je      L_0759                          ; 74 1B
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        je      L_0759                          ; 74 14
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> TRANSLATEMESSAGE(LPMSG lpMsg) -> BOOL
        call    far USER.TRANSLATEMESSAGE       ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xbe2                       ; B8 E2 0B
        push    ds                              ; 1E
        ;   ^ arg lpMsg (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpMsg (low/offset)
        ; --> DISPATCHMESSAGE(LPMSG lpMsg) -> LRESULT
        call    far USER.DISPATCHMESSAGE        ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0759
L_0759:
        cmp     word ptr [0x5c], 0              ; 83 3E 5C 00 00
        jne     L_0727                          ; 75 C7
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jne     L_0772                          ; 75 0C
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 9C 07 00 00 [FIXUP]
;   [error/early exit] L_0772
L_0772:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Description (heuristic):
;   Mixed routine using: ENABLEWINDOW, ISWINDOW.

;-------------------------------------------------------------------------
; sub_0778   offset=0x0778  size=48 instr  segment=seg20.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: unknown
;
; Far API calls:
;   ENABLEWINDOW
;   ISWINDOW
;-------------------------------------------------------------------------
;   [sub-routine] L_0778
L_0778:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x7a4]            ; A1 A4 07
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_07A0                          ; 74 16
        push    ax                              ; 50
        call    far USER.ISWINDOW               ; 9A AA 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07A0                          ; 74 0C
        push    word ptr [0x7a4]                ; FF 36 A4 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A BA 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07A0
L_07A0:
        mov     ax, word ptr [0x7a2]            ; A1 A2 07
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_07BE                          ; 74 16
        push    ax                              ; 50
        call    far USER.ISWINDOW               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07BE                          ; 74 0C
        push    word ptr [0x7a2]                ; FF 36 A2 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A 0F 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07BE
L_07BE:
        mov     ax, word ptr [0x7a0]            ; A1 A0 07
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_07DC                          ; 74 16
        push    ax                              ; 50
        call    far USER.ISWINDOW               ; 9A 8C 07 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07DC                          ; 74 0C
        push    word ptr [0x7a0]                ; FF 36 A0 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A E4 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_07DC
L_07DC:
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A 0A 07 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
