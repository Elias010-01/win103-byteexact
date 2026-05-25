; ======================================================================
; CONTROL / seg5.asm   (segment 5 of CONTROL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        10
; Total instructions:                  662
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            2
;   Unclear:                             5
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     17 (12 unique)
;   Top:
;        2  ANSIUPPER
;        2  GLOBALFREE
;        2  GLOBALUNLOCK
;        2  OPENFILE
;        2  LOADSTRING
;        1  GLOBALALLOC
;        1  GLOBALLOCK
;        1  LSTRCMP
; ======================================================================
; AUTO-GENERATED from original CONTROL segment 5
; segment_size=1677 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

CONTROL_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        mov     byte ptr [bp - 8], 0x41         ; C6 46 F8 41
;   [loop start] L_0011
L_0011:
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cwde                                    ; 98
        push    ax                              ; 50
        call    far KERNEL.GETTEMPDRIVE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        or      dx, dx                          ; 0B D2
        je      L_002D                          ; 74 08
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        cmp     byte ptr [bp - 6], al           ; 38 46 FA
        je      L_0037                          ; 74 0A
;   [conditional branch target (if/else)] L_002D
L_002D:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bp - 8]           ; 8A 46 F8
        mov     byte ptr [bx], al               ; 88 07
        jmp     L_0046                          ; EB 0F
;   [conditional branch target (if/else)] L_0037
L_0037:
        inc     byte ptr [bp - 8]               ; FE 46 F8
        cmp     byte ptr [bp - 8], 0x5a         ; 80 7E F8 5A
        jle     L_0011                          ; 7E D1
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx], 0x41             ; C6 07 41
;   [unconditional branch target] L_0046
L_0046:
        mov     byte ptr [bx + 1], 0            ; C6 47 01 00
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
        sub     sp, 0x122                       ; 81 EC 22 01
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x120]                ; 8D 86 E0 FE
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A E6 02 00 00 [FIXUP]
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_0088                          ; 7F 03
        jmp     L_019B                          ; E9 13 01
;   [conditional branch target (if/else)] L_0088
L_0088:
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 C8 04
        cmp     word ptr [bp - 0x8a], 0x5a4d    ; 81 BE 76 FF 4D 5A
        jne     L_00B6                          ; 75 16
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        or      ax, word ptr [bp - 0x4c]        ; 0B 46 B4
        je      L_00B6                          ; 74 0E
        mov     ax, word ptr [bp - 0x4e]        ; 8B 46 B2
        mov     dx, word ptr [bp - 0x4c]        ; 8B 56 B4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        jmp     L_00BE                          ; EB 08
;   [conditional branch target (if/else)] L_00B6
L_00B6:
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [unconditional branch target] L_00BE
L_00BE:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        ;   ^ arg hFile
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg lOffset (high/segment)
        push    word ptr [bp - 8]               ; FF 76 F8
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A 01 01 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0x4a]                 ; 8D 46 B6
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 7E 04
        cmp     word ptr [bp - 0x4a], 0x454e    ; 81 7E B6 4E 45
        je      L_00EC                          ; 74 03
        jmp     L_0192                          ; E9 A6 00
; Inferred stack frame (pass18, heuristic):
;   Locals:
;     [bp-0x1c]   LONG      (1 use)
;     [bp-0x1e]   LONG      (1 use)
;     [bp-0x8c]   HFILE     (2 uses)

; Description (heuristic):
;   File I/O routine (2 file APIs).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_00EC   offset=0x00EC  size=313 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
;
; Near calls (internal): L_048E, L_053E, L_0560, L_0588, L_05B0, L_064C, L_066B
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_00EC
L_00EC:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        ;   ^ arg hFile
        mov     ax, word ptr [bp - 0x24]        ; 8B 46 DC
        sub     dx, dx                          ; 2B D2
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        push    dx                              ; 52
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A 49 01 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 49 04
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x101                       ; 05 01 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 33 04
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + si + 0x101], 0   ; C6 80 01 01 00
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        ;   ^ arg hFile
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        ;   ^ arg lOffset (high/segment)
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg lOffset (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 01 04
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        cmp     ax, 0x80                        ; 3D 80 00
        jl      L_016A                          ; 7C 02
        ; constant GMEM_ZEROINIT
        mov     al, 0x80                        ; B0 80
;   [conditional branch target (if/else)] L_016A
L_016A:
        mov     byte ptr [bp - 0xa], al         ; 88 46 F6
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        add     ax, 0x80                        ; 05 80 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [bp - 0xa]         ; 8A 46 F6
        cwde                                    ; 98
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 DD 03
        mov     si, ax                          ; 8B F0
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     byte ptr [bx + si + 0x80], 0    ; C6 80 80 00 00
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [unconditional branch target] L_0192
L_0192:
        push    word ptr [bp - 0x8c]            ; FF B6 74 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 15 04
;   [unconditional branch target] L_019B
L_019B:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        sub     sp, 0x264                       ; 81 EC 64 02
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_048E                          ; E8 C1 02
        or      ax, ax                          ; 0B C0
        je      L_01E5                          ; 74 14
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_048E                          ; E8 AD 02
        or      ax, ax                          ; 0B C0
        jne     L_01EA                          ; 75 05
;   [loop start (also forward branch)] L_01E5
L_01E5:
        sub     ax, ax                          ; 2B C0
        jmp     L_0483                          ; E9 99 02
;   [conditional branch target (if/else)] L_01EA
L_01EA:
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        ;   ^ arg lpsz1 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz1 (low/offset)
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_024B                          ; 75 4C
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 92 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_021F                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0221                          ; EB 02
;   [conditional branch target (if/else)] L_021F
L_021F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0221
L_0221:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0232                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A AC 02 00 00 [FIXUP]
        jmp     L_01E5                          ; EB B3
;   [conditional branch target (if/else)] L_0232
L_0232:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A C5 02 00 00 [FIXUP]
        jmp     L_01E5                          ; EB 9A
;   [conditional branch target (if/else)] L_024B
L_024B:
        mov     word ptr [bp - 0x86], 0x9c40    ; C7 86 7A FF 40 9C
        jmp     L_0260                          ; EB 0D
;   [loop start] L_0253
L_0253:
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        je      L_0278                          ; 74 1E
        sub     word ptr [bp - 0x86], 0x1388    ; 81 AE 7A FF 88 13
;   [unconditional branch target] L_0260
L_0260:
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10e], ax       ; 89 86 F2 FE
        or      ax, ax                          ; 0B C0
        je      L_0253                          ; 74 DB
;   [conditional branch target (if/else)] L_0278
L_0278:
        cmp     word ptr [bp - 0x86], 0         ; 83 BE 7A FF 00
        jne     L_02D5                          ; 75 56
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x51                        ; B8 51 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A BF 03 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_029F                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_02A1                          ; EB 02
;   [conditional branch target (if/else)] L_029F
L_029F:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_02A1
L_02A1:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_02B2                          ; 74 0A
;   [loop start] L_02A8
L_02A8:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02C9                          ; EB 17
;   [conditional branch target (if/else)] L_02B2
L_02B2:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        lea     ax, [bp - 0x160]                ; 8D 86 A0 FE
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        ;   ^ arg lpszTitle (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTitle (low/offset)
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> MESSAGEBOX(HWND hWndOwner, LPSTR lpszText, LPSTR lpszTitle, WORD wStyle) -> INT
        call    far USER.MESSAGEBOX             ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_02C9
L_02C9:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01E5                          ; E9 10 FF
;   [conditional branch target (if/else)] L_02D5
L_02D5:
        lea     ax, [bp - 0x1e2]                ; 8D 86 1E FE
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x264]                ; 8D 86 9C FD
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x2000                      ; B8 00 20
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 04 03 00 00 [FIXUP]
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        cmp     ax, 0xffff                      ; 3D FF FF
        jle     L_02C9                          ; 7E D6
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x264]                ; 8D 86 9C FD
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x1001                      ; B8 01 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e4], ax       ; 89 86 1C FE
        cmp     ax, 0xffff                      ; 3D FF FF
        jg      L_0314                          ; 7F 03
        jmp     L_0415                          ; E9 01 01
;   [conditional branch target (if/else)] L_0314
L_0314:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10c], ax       ; 89 86 F4 FE
        mov     word ptr [bp - 0x10a], dx       ; 89 96 F6 FE
;   [loop start] L_0325
L_0325:
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        push    word ptr [bp - 0x86]            ; FF B6 7A FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0560                          ; E8 26 02
        mov     word ptr [bp - 0x162], ax       ; 89 86 9E FE
        or      ax, ax                          ; 0B C0
        jne     L_0374                          ; 75 32
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_064C                          ; E8 FD 02
        push    dx                              ; 52
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_066B                          ; E8 15 03
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 51 02
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 3F 02
        jmp     L_0477                          ; E9 03 01
;   [conditional branch target (if/else)] L_0374
L_0374:
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        push    word ptr [bp - 0x10a]           ; FF B6 F6 FE
        push    word ptr [bp - 0x10c]           ; FF B6 F4 FE
        push    word ptr [bp - 0x162]           ; FF B6 9E FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0588                          ; E8 FF 01
        cmp     ax, word ptr [bp - 0x162]       ; 3B 86 9E FE
        je      L_0325                          ; 74 96
        push    word ptr [bp - 0x1e4]           ; FF B6 1C FE
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 18 02
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_053E                          ; E8 9B 01
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 04 02
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x52                        ; B8 52 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_03CC                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03CE                          ; EB 02
;   [conditional branch target (if/else)] L_03CC
L_03CC:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_03CE
L_03CE:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_03EC                          ; 74 0A
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_43                   ; 9A 2C 02 00 00 [FIXUP]
        jmp     L_0409                          ; EB 1D
; Description (heuristic):
;   Mixed routine using: ANSIUPPER, GLOBALUNLOCK, LOADSTRING.
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_03EC   offset=0x03EC  size=42 instr  segment=seg5.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;
; Near calls (internal): L_05B0
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_03EC
L_03EC:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A 70 04 00 00 [FIXUP]
;   [unconditional branch target] L_0409
L_0409:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 64 03 00 00 [FIXUP]
        jmp     L_02C9                          ; E9 B4 FE
;   [unconditional branch target] L_0415
L_0415:
        push    word ptr [bp - 0x88]            ; FF B6 78 FF
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05B0                          ; E8 92 01
        push    word ptr [0x8de]                ; FF 36 DE 08
        ;   ^ arg hInstance
        mov     ax, 0x53                        ; B8 53 00
        push    ax                              ; 50
        ;   ^ arg wID
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        mov     ax, 0x50                        ; B8 50 00
        push    ax                              ; 50
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A 12 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_043E                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0440                          ; EB 02
;   [conditional branch target (if/else)] L_043E
L_043E:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0440
L_0440:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A D8 03 00 00 [FIXUP]
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0457                          ; 74 03
        jmp     L_02A8                          ; E9 51 FE
; Description (heuristic):
;   Cleanup / deallocation routine.

;-------------------------------------------------------------------------
; sub_0457   offset=0x0457  size=23 instr  segment=seg5.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0457
L_0457:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0xd36                       ; B8 36 0D
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 0x108]                ; 8D 86 F8 FE
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x84]                 ; 8D 86 7C FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x30                        ; B8 30 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02C9                          ; E9 52 FE
;   [unconditional branch target] L_0477
L_0477:
        push    word ptr [bp - 0x10e]           ; FF B6 F2 FE
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A CE 02 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0483
L_0483:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  LPSTR     (1 use)
;     [bp+0x8]  LPSTR     (1 use)
;     [bp+0xa]  LPSTR     (1 use)
;     [bp+0xc]  LPSTR     (1 use)

; Description (heuristic):
;   Mixed routine using: LSTRCPY, OPENFILE, 6.

;-------------------------------------------------------------------------
; sub_048E   offset=0x048E  size=89 instr  segment=seg5.asm
;
; Classification (pass8): unclear  (score C=6, ASM=5)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   6
;-------------------------------------------------------------------------
;   [sub-routine] L_048E
L_048E:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x82                        ; 81 EC 82 00
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszFileName (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszFileName (low/offset)
        lea     ax, [bp - 0x82]                 ; 8D 86 7E FF
        push    ss                              ; 16
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 78 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_04DB                          ; 7C 26
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpszDest (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpszDest (low/offset)
        lea     ax, [bp - 0x7a]                 ; 8D 46 86
        push    ss                              ; 16
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KEYBOARD.6                  ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04DD                          ; EB 02
;   [conditional branch target (if/else)] L_04DB
L_04DB:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_04DD
L_04DD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     cx, word ptr [bp + 8]           ; 8B 4E 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        mov     ah, 0x4e                        ; B4 4E
        int     0x21                            ; CD 21
        jb      L_0509                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0509
L_0509:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     dx, word ptr [bp + 6]           ; 8B 56 06
        mov     ah, 0x1a                        ; B4 1A
        int     0x21                            ; CD 21
        mov     ah, 0x4f                        ; B4 4F
        int     0x21                            ; CD 21
        jb      L_0531                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0531
L_0531:
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_053E   offset=0x053E  size=20 instr  segment=seg5.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_053E
L_053E:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x41                        ; B4 41
        int     0x21                            ; CD 21
        jb      L_0554                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_0554
L_0554:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0560   offset=0x0560  size=22 instr  segment=seg5.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0560
L_0560:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ah, 0x3f                        ; B4 3F
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        int     0x21                            ; CD 21
        jae     L_057C                          ; 73 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_057C
L_057C:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (22 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0588   offset=0x0588  size=22 instr  segment=seg5.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0588
L_0588:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    ds                              ; 1E
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        lds     dx, ptr [bp + 8]                ; C5 56 08
        mov     ah, 0x40                        ; B4 40
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        int     0x21                            ; CD 21
        jae     L_05A4                          ; 73 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_05A4
L_05A4:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Pure computation / dispatcher (95 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05B0   offset=0x05B0  size=95 instr  segment=seg5.asm
;
; Classification (pass8): asm_medium  (score C=4, ASM=7)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_05B0
L_05B0:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     ah, 0x3e                        ; B4 3E
        int     0x21                            ; CD 21
        jae     L_05C7                          ; 73 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_05C7
L_05C7:
        pop     di                              ; 5F
        pop     si                              ; 5E
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
        push    ds                              ; 1E
        lds     dx, ptr [bp + 6]                ; C5 56 06
        mov     ah, 0x3b                        ; B4 3B
        int     0x21                            ; CD 21
        jb      L_05EA                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_05EA
L_05EA:
        pop     ds                              ; 1F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        add     al, 0x41                        ; 04 41
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
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
        cld                                     ; FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        or      al, al                          ; 0A C0
        jne     L_062D                          ; 75 06
        mov     ah, 0x19                        ; B4 19
        int     0x21                            ; CD 21
        inc     al                              ; FE C0
;   [conditional branch target (if/else)] L_062D
L_062D:
        mov     dl, al                          ; 8A D0
        mov     al, 0x5c                        ; B0 5C
        stosb   byte ptr es:[di], al            ; AA
        push    es                              ; 06
        pop     ds                              ; 1F
        mov     si, di                          ; 8B F7
        mov     ah, 0x47                        ; B4 47
        int     0x21                            ; CD 21
        jb      L_063E                          ; 72 02
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_063E
L_063E:
        pop     ds                              ; 1F
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
; Description (heuristic):
;   Internal helper (17 instructions).

;-------------------------------------------------------------------------
; sub_064C   offset=0x064C  size=17 instr  segment=seg5.asm
;
; Classification (pass8): unclear  (score C=4, ASM=5)
; Prologue: none     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_064C
L_064C:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x5700                      ; B8 00 57
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        int     0x21                            ; CD 21
        mov     ax, cx                          ; 8B C1
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_066B   offset=0x066B  size=19 instr  segment=seg5.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=5)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_066B
L_066B:
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, 0x5701                      ; B8 01 57
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        int     0x21                            ; CD 21
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

CONTROL_TEXT ENDS

        END
