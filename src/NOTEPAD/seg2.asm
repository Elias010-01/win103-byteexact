; ======================================================================
; NOTEPAD / seg2.asm   (segment 2 of NOTEPAD)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         3
; Total instructions:                  464
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     21 (19 unique)
;   Top:
;        2  LOCALALLOC
;        2  LOADCURSOR
;        1  ANSIUPPER
;        1  LOCALREALLOC
;        1  LSTRCPY
;        1  MAKEPROCINSTANCE
;        1  OPENFILE
;        1  CHANGEMENU
; ======================================================================
; AUTO-GENERATED from original NOTEPAD segment 2
; segment_size=1141 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

NOTEPAD_TEXT SEGMENT BYTE PUBLIC 'CODE'

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=291 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   CHANGEMENU
;   CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
;   GETSYSTEMMENU
;   LOADACCELERATORS
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_02C9, L_0351
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x400                       ; B8 00 04
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A E8 01 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        or      ax, ax                          ; 0B C0
        jne     L_0024                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0084                          ; EB 60
;   [conditional branch target (if/else)] L_0024
L_0024:
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0029
L_0029:
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x5a]        ; 8B 9F 5A 00
        push    word ptr [bx]                   ; FF 37
        ;   ^ arg wID
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg cbBuffer
        ; --> LOADSTRING(HANDLE hInstance, WORD wID, LPSTR lpBuffer, INT cbBuffer) -> INT
        call    far USER.LOADSTRING             ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     bx, word ptr [bx + 0x5a]        ; 8B 9F 5A 00
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        sub     word ptr [bp - 4], ax           ; 29 46 FC
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jl      L_0029                          ; 7C C1
        push    word ptr [bp - 6]               ; FF 76 FA
        ;   ^ arg hMem
        mov     ax, 0x400                       ; B8 00 04
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        push    ax                              ; 50
        ;   ^ arg wBytes
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x58]             ; 8B 1E 58 00
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [0x280], ax            ; A3 80 02
;   [fall-through exit] L_0084
L_0084:
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
        sub     sp, 0x106                       ; 81 EC 06 01
        push    si                              ; 56
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    0                               ; E8 61 FF
        or      ax, ax                          ; 0B C0
        jne     L_00A8                          ; 75 05
;   [loop start] L_00A3
L_00A3:
        sub     ax, ax                          ; 2B C0
        jmp     L_02BD                          ; E9 15 02
;   [conditional branch target (if/else)] L_00A8
L_00A8:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f02                      ; B8 02 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A E9 02 00 00 [FIXUP]
        mov     word ptr [0x28a], ax            ; A3 8A 02
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xb4                        ; B8 B4 00
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.LOADACCELERATORS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x24e], ax            ; A3 4E 02
        cmp     word ptr [0x28a], 0             ; 83 3E 8A 02 00
        je      L_00A3                          ; 74 D3
        or      ax, ax                          ; 0B C0
        je      L_00A3                          ; 74 CF
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpsz (high/segment)
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 0xc], 0          ; 83 7E 0C 00
        jne     L_00EF                          ; 75 0A
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    L_02C9                          ; E8 DE 01
        or      ax, ax                          ; 0B C0
        je      L_00A3                          ; 74 B4
;   [conditional branch target (if/else)] L_00EF
L_00EF:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x27e], ax            ; A3 7E 02
        mov     word ptr [bp - 0x106], 6        ; C7 86 FA FE 06 00
        jmp     L_011B                          ; EB 1E
;   [loop start] L_00FD
L_00FD:
        mov     si, word ptr [bp - 0x106]       ; 8B B6 FA FE
        mov     cl, 2                           ; B1 02
        shl     si, cl                          ; D3 E6
        add     si, 0x8c                        ; 81 C6 8C 00
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg lpProc (high/segment)
        push    word ptr [si]                   ; FF 34
        ;   ^ arg lpProc (low/offset)
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        ; --> MAKEPROCINSTANCE(FARPROC lpProc, HANDLE hInstance) -> FARPROC
        call    far KERNEL.MAKEPROCINSTANCE     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [si], ax               ; 89 04
        mov     word ptr [si + 2], dx           ; 89 54 02
;   [unconditional branch target] L_011B
L_011B:
        dec     word ptr [bp - 0x106]           ; FF 8E FA FE
        cmp     word ptr [bp - 0x106], 0        ; 83 BE FA FE 00
        jge     L_00FD                          ; 7D D7
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0351                          ; E8 26 02
        mov     ax, 0x22                        ; B8 22 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        lea     ax, [bp - 0x102]                ; 8D 86 FE FE
        push    ss                              ; 16
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        sub     ax, ax                          ; 2B C0
        mov     dx, 0xfc                        ; BA FC 00
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, 0x64                        ; B8 64 00
        push    ax                              ; 50
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWndParent
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A 8A 01 00 00 [FIXUP]
        mov     word ptr [0x18], ax             ; A3 18 00
        or      ax, ax                          ; 0B C0
        jne     L_015C                          ; 75 03
        jmp     L_00A3                          ; E9 47 FF
;   [conditional branch target (if/else)] L_015C
L_015C:
        mov     ax, 0xbd                        ; B8 BD 00
        push    ds                              ; 1E
        ;   ^ arg lpszClassName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszClassName (low/offset)
        mov     ax, 0xbc                        ; B8 BC 00
        push    ds                              ; 1E
        ;   ^ arg lpszWindowName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszWindowName (low/offset)
        mov     ax, 0xc4                        ; B8 C4 00
        mov     dx, 0x5000                      ; BA 00 50
        push    dx                              ; 52
        ;   ^ arg dwStyle (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwStyle (low/offset)
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg x
        push    ax                              ; 50
        ;   ^ arg y
        mov     ax, 0x258                       ; B8 58 02
        push    ax                              ; 50
        ;   ^ arg nWidth
        mov     ax, 0x190                       ; B8 90 01
        push    ax                              ; 50
        ;   ^ arg nHeight
        push    word ptr [0x18]                 ; FF 36 18 00
        ;   ^ arg hWndParent
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        ;   ^ arg hMenu
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lpParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpParam (low/offset)
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, DWORD dwStyle, INT x, INT y, INT nWidth, INT nHeight, HWND hWndParent, HMENU hMenu, HANDLE hInstance, LPVOID lpParam) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x1a], ax             ; A3 1A 00
        or      ax, ax                          ; 0B C0
        jne     L_0198                          ; 75 03
        jmp     L_00A3                          ; E9 0B FF
;   [conditional branch target (if/else)] L_0198
L_0198:
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.GETSYSTEMMENU          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x104], ax       ; 89 86 FC FE
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x900                       ; B8 00 09
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A D5 01 00 00 [FIXUP]
        push    word ptr [bp - 0x104]           ; FF B6 FC FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x3e]             ; A1 3E 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, 0x100                       ; B8 00 01
        push    ax                              ; 50
        call    far USER.CHANGEMENU             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [0x256]            ; 8B 1E 56 02
        mov     byte ptr [bx], 0                ; C6 07 00
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A D8 02 00 00 [FIXUP]
        mov     word ptr [0x284], ax            ; A3 84 02
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 0x40c                       ; B8 0C 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        push    word ptr [0x284]                ; FF 36 84 02
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A AF 02 00 00 [FIXUP]
        push    word ptr [0x32]                 ; FF 36 32 00
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x18]                 ; FF 36 18 00
        ;   ^ arg hWnd
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0296                          ; 74 74
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    es                              ; 06
        ;   ^ arg lpszSrc (high/segment)
        push    bx                              ; 53
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x2800                      ; B8 00 28
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 7F 02 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0286                          ; 75 34
        push    word ptr [0x18]                 ; FF 36 18 00
        push    word ptr [0x3c]                 ; FF 36 3C 00
        push    word ptr [0x2c]                 ; FF 36 2C 00
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        mov     ax, 0x24                        ; B8 24 00
        push    ax                              ; 50
        call    far _entry_26                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 6                           ; 3D 06 00
        jne     L_0286                          ; 75 16
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x28c                       ; B8 8C 02
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x278], ax            ; A3 78 02
;   [conditional branch target (if/else)] L_0286
L_0286:
        cmp     word ptr [0x278], -1            ; 83 3E 78 02 FF
        je      L_0296                          ; 74 09
        mov     ax, 0x1c4                       ; B8 C4 01
        push    ax                              ; 50
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0296
L_0296:
        push    word ptr [0x1a]                 ; FF 36 1A 00
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    word ptr [0x1a]                 ; FF 36 1A 00
        ;   ^ arg hWnd
        mov     ax, 0x400                       ; B8 00 04
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
        call    far USER.SENDMESSAGE            ; 9A B6 02 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_02BD
L_02BD:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_02C9   offset=0x02C9  size=50 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
;   LOCALFREE(HANDLE hMem) -> HANDLE
;   LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
;   LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
;   REGISTERCLASS
;-------------------------------------------------------------------------
;   [sub-routine] L_02C9
L_02C9:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, 0x40                        ; B8 40 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x1a                        ; B8 1A 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hInstance
        mov     ax, 0x7f01                      ; B8 01 7F
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszCursor (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszCursor (low/offset)
        ; --> LOADCURSOR(HANDLE hInstance, LPSTR lpszCursor) -> HCURSOR
        call    far USER.LOADCURSOR             ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0xe], ax         ; 89 47 0E
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hInstance
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszIcon (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszIcon (low/offset)
        ; --> LOADICON(HANDLE hInstance, LPSTR lpszIcon) -> HICON
        call    far USER.LOADICON               ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        mov     word ptr [bx + 0xc], ax         ; 89 47 0C
        mov     word ptr [bx + 0x12], 1         ; C7 47 12 01 00
        mov     word ptr [bx + 0x14], 0         ; C7 47 14 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [bx + 0xa], ax         ; 89 47 0A
        mov     ax, 0x22                        ; B8 22 00
        mov     word ptr [bx + 0x16], ax        ; 89 47 16
        mov     word ptr [bx + 0x18], ds        ; 8C 5F 18
        mov     word ptr [bx + 2], OFFSET _entry_1 ; C7 47 02 FF FF [FIXUP]
        mov     word ptr [bx + 4], OFFSET _entry_1 ; C7 47 04 FF FF [FIXUP]
        mov     word ptr [bx + 0x10], 6         ; C7 47 10 06 00
        mov     ax, bx                          ; 8B C3
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far USER.REGISTERCLASS          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0340                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_034B                          ; EB 0B
;   [conditional branch target (if/else)] L_0340
L_0340:
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [fall-through exit] L_034B
L_034B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_0351   offset=0x0351  size=123 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   GETPROFILEINT
;   GETPROFILESTRING
;-------------------------------------------------------------------------
;   [sub-routine] L_0351
L_0351:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xc                         ; 83 EC 0C
        mov     ax, 0xc2                        ; B8 C2 00
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], ds           ; 8C 5E F8
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xc7                        ; B8 C7 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 88 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xcd                        ; B8 CD 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x126], ax            ; A3 26 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd3                        ; B8 D3 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x10e                       ; B8 0E 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A C1 03 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xd9                        ; B8 D9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_HSCROLL
        mov     ax, 0x114                       ; B8 14 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 6                           ; B8 06 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xe1                        ; B8 E1 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xdf                        ; B8 DF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A 04 04 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        mov     word ptr [0x10a], ax            ; A3 0A 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xe9                        ; B8 E9 00
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0xe7                        ; B8 E7 00
        push    ds                              ; 1E
        push    ax                              ; 50
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far KERNEL.GETPROFILESTRING     ; 9A A6 03 00 00 [FIXUP]
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        cwde                                    ; 98
        mov     word ptr [0x10c], ax            ; A3 0C 01
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, 0xef                        ; B8 EF 00
        push    ds                              ; 1E
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETPROFILEINT        ; 9A 72 03 00 00 [FIXUP]
        mov     word ptr [0x128], ax            ; A3 28 01
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0438                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_044C                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        je      L_045A                          ; 74 24
        jmp     L_046C                          ; EB 34
;   [conditional branch target (if/else)] L_0438
L_0438:
        mov     word ptr [0x120], 0             ; C7 06 20 01 00 00
        mov     word ptr [0x122], 3             ; C7 06 22 01 03 00
;   [loop start] L_0444
L_0444:
        mov     word ptr [0x124], 6             ; C7 06 24 01 06 00
        jmp     L_046C                          ; EB 20
;   [conditional branch target (if/else)] L_044C
L_044C:
        mov     word ptr [0x120], 3             ; C7 06 20 01 03 00
        mov     word ptr [0x122], 0             ; C7 06 22 01 00 00
        jmp     L_0444                          ; EB EA
;   [conditional branch target (if/else)] L_045A
L_045A:
        mov     word ptr [0x120], 5             ; C7 06 20 01 05 00
        mov     word ptr [0x122], 8             ; C7 06 22 01 08 00
        mov     word ptr [0x124], 0             ; C7 06 24 01 00 00
;   [unconditional branch target] L_046C
L_046C:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

NOTEPAD_TEXT ENDS

        END
