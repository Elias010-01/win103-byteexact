; ======================================================================
; PAINT / seg11.asm   (segment 11 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        16
; Total instructions:                  847
; 
; Classification (pass8):
;   C-origin (high+medium):             14
;   ASM-origin (high+medium):            0
;   Unclear:                             2
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     52 (24 unique)
;   Top:
;        5  GETDLGITEM
;        4  DLGDIRLIST
;        4  GETDLGITEMTEXT
;        4  SETDLGITEMTEXT
;        3  LSTRCPY
;        3  ENDDIALOG
;        3  ENABLEWINDOW
;        3  ANSINEXT
; ======================================================================
; AUTO-GENERATED from original PAINT segment 11
; segment_size=2149 bytes, flags=0xf130
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
        sub     sp, 0x8e                        ; 81 EC 8E 00
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        je      L_001E                          ; 74 03
        jmp     L_028A                          ; E9 6C 02
;   [conditional branch target (if/else)] L_001E
L_001E:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0041                          ; 74 1B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_002E                          ; 75 03
        jmp     L_0118                          ; E9 EA 00
;   [conditional branch target (if/else)] L_002E
L_002E:
        cmp     ax, 3                           ; 3D 03 00
        jne     L_0036                          ; 75 03
        jmp     L_011F                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0036
L_0036:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_003E                          ; 75 03
        jmp     L_015A                          ; E9 1C 01
;   [conditional branch target (if/else)] L_003E
L_003E:
        jmp     L_02E0                          ; E9 9F 02
;-------------------------------------------------------------------------
; sub_0041   offset=0x0041  size=9 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   ISWINDOWENABLED
;-------------------------------------------------------------------------
;   [loop start (also forward branch)] L_0041
L_0041:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 31 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_005A                          ; 75 03
        jmp     L_02DB                          ; E9 81 02
;-------------------------------------------------------------------------
; sub_005A   offset=0x005A  size=83 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   DLGDIRLIST
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   MESSAGEBEEP
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_02EF, L_03C1
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_005A
L_005A:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 7E 01 00 00 [FIXUP]
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 44 02 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ax                              ; 50
        call    L_02EF                          ; E8 64 02
        add     sp, 4                           ; 83 C4 04
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ax                              ; 50
        call    L_03C1                          ; E8 2B 03
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_00D0                          ; 74 33
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A 71 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_00D0                          ; 74 15
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
;   [loop start] L_00C7
L_00C7:
        push    ax                              ; 50
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 56 02 00 00 [FIXUP]
        jmp     L_02E0                          ; E9 10 02
;   [conditional branch target (if/else)] L_00D0
L_00D0:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        call    L_02EF                          ; E8 15 02
        add     sp, 4                           ; 83 C4 04
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        call    L_03C1                          ; E8 DD 02
        add     sp, 2                           ; 83 C4 02
        or      ax, ax                          ; 0B C0
        je      L_00F6                          ; 74 0B
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.MESSAGEBEEP            ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02E0                          ; E9 EA 01
;   [conditional branch target (if/else)] L_00F6
L_00F6:
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        call    far _entry_114                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_010F
L_010F:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02DB                          ; E9 C3 01
;   [unconditional branch target] L_0118
L_0118:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_010F                          ; EB F0
;   [unconditional branch target] L_011F
L_011F:
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        je      L_0129                          ; 74 03
        jmp     L_02E0                          ; E9 B7 01
;-------------------------------------------------------------------------
; sub_0129   offset=0x0129  size=27 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0129
L_0129:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 3E 01 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
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
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_02E0                          ; E9 86 01
;   [unconditional branch target] L_015A
L_015A:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_016D                          ; 74 0B
        cmp     ax, 2                           ; 3D 02 00
        jne     L_016A                          ; 75 03
        jmp     L_025C                          ; E9 F2 00
;   [conditional branch target (if/else)] L_016A
L_016A:
        jmp     L_02E0                          ; E9 73 01
;-------------------------------------------------------------------------
; sub_016D   offset=0x016D  size=94 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSINEXT
;   ANSIPREV
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;   DLGDIRSELECT
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_016D
L_016D:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far USER.DLGDIRSELECT           ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_019B                          ; 75 03
        jmp     L_0248                          ; E9 AD 00
;   [conditional branch target (if/else)] L_019B
L_019B:
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A AF 01 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A 04 03 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        add     ax, 0x4ce                       ; 05 CE 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        cmp     byte ptr [bx], 0x2a             ; 80 3F 2A
        je      L_01C8                          ; 74 05
        cmp     byte ptr [bx], 0x3a             ; 80 3F 3A
        jne     L_01CD                          ; 75 05
;   [conditional branch target (if/else)] L_01C8
L_01C8:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01CF                          ; EB 02
;   [conditional branch target (if/else)] L_01CD
L_01CD:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01CF
L_01CF:
        mov     word ptr [bp - 0x8c], ax        ; 89 86 74 FF
;   [loop start] L_01D3
L_01D3:
        cmp     word ptr [bp - 8], 0x4ce        ; 81 7E F8 CE 04
        jbe     L_0220                          ; 76 46
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 11 03 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x8e], al        ; 88 86 72 FF
        cmp     al, 0x2a                        ; 3C 2A
        je      L_01FC                          ; 74 04
        cmp     al, 0x3f                        ; 3C 3F
        jne     L_0202                          ; 75 06
;   [conditional branch target (if/else)] L_01FC
L_01FC:
        mov     word ptr [bp - 0x8c], 1         ; C7 86 74 FF 01 00
;   [conditional branch target (if/else)] L_0202
L_0202:
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 0x8e], al        ; 88 86 72 FF
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0213                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_01D3                          ; 75 C0
;   [conditional branch target (if/else)] L_0213
L_0213:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_0220
L_0220:
        cmp     word ptr [bp - 0x8c], 0         ; 83 BE 74 FF 00
        je      L_0235                          ; 74 0E
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        lea     ax, [bp + si - 0x8a]            ; 8D 82 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        jmp     L_0241                          ; EB 0C
;   [conditional branch target (if/else)] L_0235
L_0235:
        mov     si, word ptr [bp - 0xa]         ; 8B 76 F6
        lea     ax, [bp + si - 0x8a]            ; 8D 82 76 FF
        push    ss                              ; 16
        push    ax                              ; 50
        mov     ax, 0x83d                       ; B8 3D 08
;   [unconditional branch target] L_0241
L_0241:
        push    ds                              ; 1E
        push    ax                              ; 50
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A B7 03 00 00 [FIXUP]
;   [unconditional branch target] L_0248
L_0248:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x8a]                 ; 8D 86 76 FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A 9E 02 00 00 [FIXUP]
        jmp     L_02DB                          ; EB 7F
;-------------------------------------------------------------------------
; sub_025C   offset=0x025C  size=14 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DLGDIRLIST
;-------------------------------------------------------------------------
;   [unconditional branch target] L_025C
L_025C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A CF 02 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_027C                          ; 75 03
        jmp     L_0041                          ; E9 C5 FD
;-------------------------------------------------------------------------
; sub_027C   offset=0x027C  size=50 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   DLGDIRLIST
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_06D1
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_027C
L_027C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        jmp     L_00C7                          ; E9 3D FE
;   [unconditional branch target] L_028A
L_028A:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_02E0                          ; 75 4F
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x7fa                       ; B8 FA 07
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x415                       ; B8 15 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        ;   ^ arg wParam
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x7fa                       ; B8 FA 07
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        mov     ax, 0x4010                      ; B8 10 40
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D1                          ; E8 F6 03
;   [unconditional branch target] L_02DB
L_02DB:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [branch target] L_02E0
L_02E0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_02EF   offset=0x02EF  size=90 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   ANSIPREV
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   LSTRLEN(LPSTR lpsz) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_02EF
L_02EF:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A 28 03 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        cmp     byte ptr [si], 0x2e             ; 80 3C 2E
        jne     L_0343                          ; 75 25
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, si                          ; 8B C6
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A A1 03 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     es, dx                          ; 8E C2
        cmp     byte ptr es:[bx], 0x2e          ; 26 80 3F 2E
        jne     L_0343                          ; 75 0D
        cmp     word ptr [bp - 0xa], 2          ; 83 7E F6 02
        jne     L_0343                          ; 75 07
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_03A9                          ; EB 66
;   [conditional branch target (if/else)] L_0343
L_0343:
        cmp     byte ptr [si], 0x5c             ; 80 3C 5C
        je      L_034D                          ; 74 05
        cmp     byte ptr [si], 0x3a             ; 80 3C 3A
        jne     L_0354                          ; 75 07
;   [conditional branch target (if/else)] L_034D
L_034D:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
        jmp     L_03A9                          ; EB 55
;   [conditional branch target (if/else)] L_0354
L_0354:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_035E                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0361                          ; EB 03
;   [conditional branch target (if/else)] L_035E
L_035E:
        mov     ax, 2                           ; B8 02 00
;   [unconditional branch target] L_0361
L_0361:
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [loop start] L_0364
L_0364:
        cmp     word ptr [bp + 4], di           ; 39 7E 04
        jae     L_0385                          ; 73 1C
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_037B                          ; 74 0C
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_03BB                          ; 74 47
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_0380                          ; 75 07
        jmp     L_03BB                          ; EB 40
;   [conditional branch target (if/else)] L_037B
L_037B:
        cmp     byte ptr [di], 0x2e             ; 80 3D 2E
        je      L_03BB                          ; 74 3B
;   [conditional branch target (if/else)] L_0380
L_0380:
        cmp     byte ptr [di], 0x5c             ; 80 3D 5C
        jne     L_0397                          ; 75 12
;   [conditional branch target (if/else)] L_0385
L_0385:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_03A9                          ; 74 1E
        cmp     byte ptr [di], 0x2a             ; 80 3D 2A
        je      L_03BB                          ; 74 2B
        cmp     byte ptr [di], 0x3f             ; 80 3D 3F
        jne     L_03A9                          ; 75 14
        jmp     L_03BB                          ; EB 24
;   [conditional branch target (if/else)] L_0397
L_0397:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, di                          ; 8B C7
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FF FF 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        jmp     L_0364                          ; EB BB
;   [branch target] L_03A9
L_03A9:
        lea     ax, [si + 1]                    ; 8D 44 01
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, 0x83c                       ; 05 3C 08
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_03BB
L_03BB:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
;-------------------------------------------------------------------------
; sub_03C1   offset=0x03C1  size=41 instr  segment=seg11.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_03C1
L_03C1:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        jmp     L_03DA                          ; EB 10
;   [loop start] L_03CA
L_03CA:
        cmp     byte ptr [si], 0x2a             ; 80 3C 2A
        je      L_03D4                          ; 74 05
        cmp     byte ptr [si], 0x3f             ; 80 3C 3F
        jne     L_03D9                          ; 75 05
;   [conditional branch target (if/else)] L_03D4
L_03D4:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03E1                          ; EB 08
;   [conditional branch target (if/else)] L_03D9
L_03D9:
        inc     si                              ; 46
;   [unconditional branch target] L_03DA
L_03DA:
        cmp     byte ptr [si], 0                ; 80 3C 00
        jne     L_03CA                          ; 75 EB
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_03E1
L_03E1:
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
        sub     sp, 0x8e                        ; 81 EC 8E 00
        push    si                              ; 56
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        je      L_0404                          ; 74 03
        jmp     L_04A1                          ; E9 9D 00
;   [conditional branch target (if/else)] L_0404
L_0404:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0419                          ; 74 0D
        cmp     ax, 2                           ; 3D 02 00
        je      L_045F                          ; 74 4E
        cmp     ax, 3                           ; 3D 03 00
        je      L_0466                          ; 74 50
        jmp     L_05BE                          ; E9 A5 01
;-------------------------------------------------------------------------
; sub_0419   offset=0x0419  size=9 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   ISWINDOWENABLED
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0419
L_0419:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 78 04 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ISWINDOWENABLED        ; 9A 4F 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0432                          ; 75 03
        jmp     L_05B9                          ; E9 87 01
;-------------------------------------------------------------------------
; sub_0432   offset=0x0432  size=23 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0432
L_0432:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x7a                        ; B8 7A 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 01 05 00 00 [FIXUP]
        mov     ax, 0x4ce                       ; B8 CE 04
        push    ax                              ; 50
        call    far _entry_114                  ; 9A 05 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [loop start] L_0456
L_0456:
        push    ax                              ; 50
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 5A 06 00 00 [FIXUP]
        jmp     L_05B9                          ; E9 5A 01
;   [conditional branch target (if/else)] L_045F
L_045F:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        jmp     L_0456                          ; EB F0
;   [conditional branch target (if/else)] L_0466
L_0466:
        cmp     word ptr [bp + 8], 0x300        ; 81 7E 08 00 03
        je      L_0470                          ; 74 03
        jmp     L_05B9                          ; E9 49 01
;-------------------------------------------------------------------------
; sub_0470   offset=0x0470  size=46 instr  segment=seg11.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DLGDIRLIST
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0470
L_0470:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 85 04 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A A4 05 00 00 [FIXUP]
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; constant WM_GETTEXTLENGTH
        mov     ax, 0xe                         ; B8 0E 00
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
        call    far USER.SENDMESSAGE            ; 9A 4D 01 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A AD 05 00 00 [FIXUP]
        jmp     L_05B9                          ; E9 18 01
;   [unconditional branch target] L_04A1
L_04A1:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        je      L_04AB                          ; 74 03
        jmp     L_05BE                          ; E9 13 01
;   [conditional branch target (if/else)] L_04AB
L_04AB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.DLGDIRLIST             ; 9A B3 00 00 00 [FIXUP]
        cmp     byte ptr [0x44e], 0             ; 80 3E 4E 04 00
        je      L_04CE                          ; 74 08
        mov     word ptr [bp - 0x8c], 0x44e     ; C7 86 74 FF 4E 04
        jmp     L_04E3                          ; EB 15
;   [conditional branch target (if/else)] L_04CE
L_04CE:
        cmp     word ptr [0x54e], 0             ; 83 3E 4E 05 00
        jne     L_04DD                          ; 75 08
        mov     word ptr [bp - 0x8c], 0x3ce     ; C7 86 74 FF CE 03
        jmp     L_04E3                          ; EB 06
;   [conditional branch target (if/else)] L_04DD
L_04DD:
        mov     word ptr [bp - 0x8c], 0x843     ; C7 86 74 FF 43 08
;   [unconditional branch target] L_04E3
L_04E3:
        mov     bx, word ptr [bp - 0x8c]        ; 8B 9E 74 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_04EF                          ; 75 03
        jmp     L_059C                          ; E9 AD 00
;-------------------------------------------------------------------------
; sub_04EF   offset=0x04EF  size=58 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=8, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ANSINEXT
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
;
; Near calls (internal): L_05CD
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_04EF
L_04EF:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x7e                        ; B8 7E 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A 6B 00 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     si, ax                          ; 8B F0
        cmp     byte ptr [bp + si - 0x87], 0x5c ; 80 BA 79 FF 5C
        je      L_0521                          ; 74 10
        mov     byte ptr [bp + si - 0x86], 0x5c ; C6 82 7A FF 5C
        inc     word ptr [bp - 4]               ; FF 46 FC
        mov     si, word ptr [bp - 4]           ; 8B 76 FC
        mov     byte ptr [bp + si - 0x86], 0    ; C6 82 7A FF 00
;   [conditional branch target (if/else)] L_0521
L_0521:
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        push    ax                              ; 50
        call    L_05CD                          ; E8 A0 00
        mov     word ptr [bp - 0x88], ax        ; 89 86 78 FF
        lea     ax, [bp - 0x86]                 ; 8D 86 7A FF
;   [loop start] L_0535
L_0535:
        mov     word ptr [bp - 0x8e], ax        ; 89 86 72 FF
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jae     L_0551                          ; 73 0E
        mov     bx, word ptr [bp - 0x8a]        ; 8B 9E 76 FF
        mov     si, word ptr [bp - 0x8e]        ; 8B B6 72 FF
        mov     al, byte ptr [si]               ; 8A 04
        cmp     byte ptr [bx], al               ; 38 07
        je      L_0580                          ; 74 2F
;   [conditional branch target (if/else)] L_0551
L_0551:
        mov     bx, word ptr [bp - 0x8e]        ; 8B 9E 72 FF
        cmp     byte ptr [bx], 0                ; 80 3F 00
        jne     L_0564                          ; 75 0A
        mov     ax, word ptr [bp - 0x88]        ; 8B 86 78 FF
        cmp     word ptr [bp - 0x8a], ax        ; 39 86 76 FF
        jae     L_056C                          ; 73 08
;   [conditional branch target (if/else)] L_0564
L_0564:
        mov     ax, word ptr [bp - 0x8c]        ; 8B 86 74 FF
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
;   [conditional branch target (if/else)] L_056C
L_056C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        push    ds                              ; 1E
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText) -> VOID
        call    far USER.SETDLGITEMTEXT         ; 9A C9 00 00 00 [FIXUP]
        jmp     L_05B1                          ; EB 31
;   [conditional branch target (if/else)] L_0580
L_0580:
        mov     ax, word ptr [bp - 0x8a]        ; 8B 86 76 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 96 05 00 00 [FIXUP]
        mov     word ptr [bp - 0x8a], ax        ; 89 86 76 FF
        mov     ax, word ptr [bp - 0x8e]        ; 8B 86 72 FF
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 18 06 00 00 [FIXUP]
        jmp     L_0535                          ; EB 99
;-------------------------------------------------------------------------
; sub_059C   offset=0x059C  size=21 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ENABLEWINDOW
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;
; Near calls (internal): L_06D1
;-------------------------------------------------------------------------
;   [unconditional branch target] L_059C
L_059C:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A 49 00 00 00 [FIXUP]
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 53 01 00 00 [FIXUP]
;   [unconditional branch target] L_05B1
L_05B1:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D1                          ; E8 18 01
;   [unconditional branch target] L_05B9
L_05B9:
        mov     word ptr [bp - 6], 1            ; C7 46 FA 01 00
;   [unconditional branch target] L_05BE
L_05BE:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_05CD   offset=0x05CD  size=109 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   ANSINEXT
;   ANSIPREV
;   LSTRLEN(LPSTR lpsz) -> INT
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;
; Near calls (internal): L_06D1
;-------------------------------------------------------------------------
;   [sub-routine] L_05CD
L_05CD:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> LSTRLEN(LPSTR lpsz) -> INT
        call    far KERNEL.LSTRLEN              ; 9A A2 01 00 00 [FIXUP]
        add     ax, word ptr [bp + 4]           ; 03 46 04
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A FC 05 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [loop start] L_05EC
L_05EC:
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jbe     L_061F                          ; 76 2B
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSIPREV             ; 9A E5 01 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     bx, ax                          ; 8B D8
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 4], al           ; 88 46 FC
        cmp     al, 0x5c                        ; 3C 5C
        je      L_0612                          ; 74 04
        cmp     al, 0x3a                        ; 3C 3A
        jne     L_05EC                          ; 75 DA
;   [conditional branch target (if/else)] L_0612
L_0612:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        push    ds                              ; 1E
        push    ax                              ; 50
        call    far KERNEL.ANSINEXT             ; 9A 19 02 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [error/early exit] L_061F
L_061F:
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
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
        sub     sp, 4                           ; 83 EC 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_0660                          ; 75 1F
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        je      L_0653                          ; 74 0C
        cmp     word ptr [bp + 0xa], 2          ; 83 7E 0A 02
        je      L_0653                          ; 74 06
        cmp     word ptr [bp + 0xa], 7          ; 83 7E 0A 07
        jne     L_0674                          ; 75 21
;   [conditional branch target (if/else)] L_0653
L_0653:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A A9 06 00 00 [FIXUP]
        jmp     L_066F                          ; EB 0F
;   [conditional branch target (if/else)] L_0660
L_0660:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_0674                          ; 75 0D
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D1                          ; E8 62 00
;   [unconditional branch target] L_066F
L_066F:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_0674
L_0674:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
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
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        cmp     word ptr [bp + 0xc], 0x111      ; 81 7E 0C 11 01
        jne     L_06AF                          ; 75 14
        cmp     word ptr [bp + 0xa], 1          ; 83 7E 0A 01
        jne     L_06AF                          ; 75 0E
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 11 01 00 00 [FIXUP]
        jmp     L_06BE                          ; EB 0F
;   [conditional branch target (if/else)] L_06AF
L_06AF:
        cmp     word ptr [bp + 0xc], 0x110      ; 81 7E 0C 10 01
        jne     L_06C3                          ; 75 0D
        push    word ptr [bp + 0xe]             ; FF 76 0E
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_06D1                          ; E8 13 00
;   [unconditional branch target] L_06BE
L_06BE:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
;   [conditional branch target (if/else)] L_06C3
L_06C3:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_06D1   offset=0x06D1  size=61 instr  segment=seg11.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETPARENT
;   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
;   SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
;
; Near calls (internal): L_075A
;-------------------------------------------------------------------------
;   [sub-routine] L_06D1
L_06D1:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x12                        ; 83 EC 12
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        lea     ax, [bp - 0x10]                 ; 8D 46 F0
        push    ss                              ; 16
        push    ax                              ; 50
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_075A                          ; E8 44 00
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0x10]        ; 8B 4E F0
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        ;   ^ arg x
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     cx, word ptr [bp - 0xe]         ; 8B 4E F2
        sub     cx, ax                          ; 2B C8
        push    cx                              ; 51
        ;   ^ arg y
        push    word ptr [bp - 0x12]            ; FF 76 EE
        ;   ^ arg nWidth
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg nHeight
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg bRepaint
        ; --> MOVEWINDOW(HWND hWnd, INT x, INT y, INT nWidth, INT nHeight, BOOL bRepaint) -> BOOL
        call    far USER.MOVEWINDOW             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg hWnd
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        ;   ^ arg nCmdShow
        ; --> SHOWWINDOW(HWND hWnd, INT nCmdShow) -> BOOL
        call    far USER.SHOWWINDOW             ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;-------------------------------------------------------------------------
; sub_075A   offset=0x075A  size=112 instr  segment=seg11.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   GETDC(HWND hWnd) -> HDC
;   GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   ISICONIC
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;-------------------------------------------------------------------------
;   [sub-routine] L_075A
L_075A:
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
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A 88 07 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        call    far USER.ISICONIC               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_07C3                          ; 74 1D
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
;   [loop start] L_07BC
L_07BC:
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        jmp     L_085A                          ; E9 97 00
;   [conditional branch target (if/else)] L_07C3
L_07C3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETWINDOWRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETWINDOWRECT          ; 9A E7 06 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        add     ax, word ptr [bp - 0xc]         ; 03 46 F4
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        add     ax, word ptr [bp - 6]           ; 03 46 FA
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        add     ax, si                          ; 03 C6
        cmp     ax, word ptr [bp - 0x10]        ; 3B 46 F0
        jle     L_080E                          ; 7E 0A
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        sub     ax, si                          ; 2B C6
        mov     word ptr es:[bx], ax            ; 26 89 07
        jmp     L_0823                          ; EB 15
;   [conditional branch target (if/else)] L_080E
L_080E:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx], si            ; 26 39 37
        jge     L_0823                          ; 7D 03
        mov     word ptr es:[bx], si            ; 26 89 37
;   [branch target] L_0823
L_0823:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        add     ax, si                          ; 03 C6
        cmp     ax, word ptr [bp - 4]           ; 3B 46 FC
        jle     L_0843                          ; 7E 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     ax, si                          ; 2B C6
        jmp     L_07BC                          ; E9 79 FF
;   [conditional branch target (if/else)] L_0843
L_0843:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     si, ax                          ; 8B F0
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        cmp     word ptr es:[bx + 2], si        ; 26 39 77 02
        jge     L_085A                          ; 7D 04
        mov     word ptr es:[bx + 2], si        ; 26 89 77 02
;   [branch target] L_085A
L_085A:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

PAINT_TEXT ENDS

        END
