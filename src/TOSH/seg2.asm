; ======================================================================
; TOSH / seg2.asm   (segment 2 of TOSH)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        15
; Total instructions:                 1572
; 
; Classification (pass8):
;   C-origin (high+medium):             14
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     22 (17 unique)
;   Top:
;        3  GLOBALUNLOCK
;        2  GLOBALFREE
;        2  GLOBALLOCK
;        2  GLOBALALLOC
;        1  CHECKRADIOBUTTON
;        1  ENDDIALOG
;        1  FINDRESOURCE
;        1  FREERESOURCE
; ======================================================================
; AUTO-GENERATED from original TOSH segment 2
; segment_size=4671 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TOSH_TEXT SEGMENT BYTE PUBLIC 'CODE'

        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        cmp     word ptr [0x122], 0             ; 83 3E 22 01 00
        je      L_0019                          ; 74 05
;   [loop start] L_0014
L_0014:
        sub     ax, ax                          ; 2B C0
        jmp     L_00DF                          ; E9 C6 00
;   [conditional branch target (if/else)] L_0019
L_0019:
        mov     word ptr [0x122], 1             ; C7 06 22 01 01 00
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x400                       ; B8 00 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.GETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_003C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_003E                          ; EB 02
;   [conditional branch target (if/else)] L_003C
L_003C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_003E
L_003E:
        or      ax, ax                          ; 0B C0
        jne     L_0056                          ; 75 14
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpsz1 (low/offset)
        mov     ax, 0x400                       ; B8 00 04
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0086                          ; 74 30
;   [conditional branch target (if/else)] L_0056
L_0056:
        mov     word ptr [0x420], 0xa           ; C7 06 20 04 0A 00
        mov     word ptr [0x426], 0x10          ; C7 06 26 04 10 00
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0070                          ; 74 05
        mov     ax, 0x14                        ; B8 14 00
        jmp     L_0073                          ; EB 03
;   [conditional branch target (if/else)] L_0070
L_0070:
        mov     ax, 0x15                        ; B8 15 00
;   [unconditional branch target] L_0073
L_0073:
        mov     word ptr [0x424], ax            ; A3 24 04
        mov     ax, 0x400                       ; B8 00 04
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszSrc (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0086
L_0086:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hInstance
        mov     ax, 0x11a                       ; B8 1A 01
        push    ds                              ; 1E
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hWndOwner
        mov     ax, OFFSET _entry_100           ; B8 FF FF [FIXUP]
        mov     dx, OFFSET _entry_100           ; BA FF FF [FIXUP]
        push    dx                              ; 52
        ;   ^ arg lpDialogFunc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 2                           ; 3D 02 00
        jne     L_00AC                          ; 75 09
        mov     word ptr [0x122], 0             ; C7 06 22 01 00 00
        jmp     L_0014                          ; E9 68 FF
;   [conditional branch target (if/else)] L_00AC
L_00AC:
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, 0x400                       ; B8 00 04
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 0x28                        ; B8 28 00
        push    ax                              ; 50
        call    far GDI.SETENVIRONMENT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        ;   ^ arg hWnd
        mov     ax, 0x1b                        ; B8 1B 00
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lParam (high/segment)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg lParam (low/offset)
        ; --> SENDMESSAGE(HWND hWnd, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDMESSAGE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x122], 0             ; C7 06 22 01 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_00DF
L_00DF:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x3c                        ; 83 EC 3C
        push    si                              ; 56
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_010B                          ; 74 0B
        cmp     ax, 0x111                       ; 3D 11 01
        jne     L_0108                          ; 75 03
        jmp     L_0198                          ; E9 90 00
;   [conditional branch target (if/else)] L_0108
L_0108:
        jmp     L_01F7                          ; E9 EC 00
;   [conditional branch target (if/else)] L_010B
L_010B:
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        mov     ax, 0x400                       ; B8 00 04
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], ds           ; 8C 5E FC
        jmp     L_011E                          ; EB 03
;   [loop start] L_011B
L_011B:
        inc     word ptr [bp - 8]               ; FF 46 F8
;   [unconditional branch target] L_011E
L_011E:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        mov     byte ptr [bp + si - 0x3c], al   ; 88 42 C4
        or      al, al                          ; 0A C0
        jne     L_011B                          ; 75 EA
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        mov     si, word ptr [bp - 8]           ; 8B 76 F8
        lea     ax, [bp + si - 0x3c]            ; 8D 42 C4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x32                        ; B8 32 00
        sub     ax, si                          ; 2B C6
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETWINDOWTEXT(HWND hWnd, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x3c]                 ; 8D 46 C4
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        ; --> SETWINDOWTEXT(HWND hWnd, LPSTR lpszText) -> VOID
        call    far USER.SETWINDOWTEXT          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x420]                ; FF 36 20 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 70 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x424]                ; FF 36 24 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A 80 01 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [0x426]                ; FF 36 26 04
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [0x424]                ; FF 36 24 04
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01F7                          ; EB 5F
;   [unconditional branch target] L_0198
L_0198:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_01F7                          ; 72 57
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_01E7                          ; 76 42
        cmp     ax, 0xa                         ; 3D 0A 00
        jb      L_01F7                          ; 72 4D
        cmp     ax, 0xb                         ; 3D 0B 00
        jbe     L_01BB                          ; 76 0C
        cmp     ax, 0x14                        ; 3D 14 00
        jb      L_01F7                          ; 72 43
        cmp     ax, 0x16                        ; 3D 16 00
        jbe     L_01CE                          ; 76 15
        jmp     L_01F7                          ; EB 3C
;-------------------------------------------------------------------------
; sub_01BB   offset=0x01BB  size=8 instr  segment=seg2.asm
;
; Classification (pass8): unclear  (score C=4, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01BB
L_01BB:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        mov     ax, 0xb                         ; B8 0B 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x420], ax            ; A3 20 04
        jmp     L_01DF                          ; EB 11
;-------------------------------------------------------------------------
; sub_01CE   offset=0x01CE  size=23 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   CHECKRADIOBUTTON
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_01CE
L_01CE:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        mov     ax, 0x14                        ; B8 14 00
        push    ax                              ; 50
        mov     ax, 0x16                        ; B8 16 00
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [0x424], ax            ; A3 24 04
;   [unconditional branch target] L_01DF
L_01DF:
        push    ax                              ; 50
        call    far USER.CHECKRADIOBUTTON       ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01F7                          ; EB 10
;   [conditional branch target (if/else)] L_01E7
L_01E7:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01F9                          ; EB 02
;   [branch target] L_01F7
L_01F7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01F9
L_01F9:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
;-------------------------------------------------------------------------
; sub_0205   offset=0x0205  size=29 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0205
L_0205:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_0232                          ; 72 1C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 0xff                        ; 81 E6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 0x340]  ; 8A 80 40 03
        sub     ah, ah                          ; 2A E4
        jmp     L_0234                          ; EB 02
;   [conditional branch target (if/else)] L_0232
L_0232:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0234
L_0234:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0240   offset=0x0240  size=44 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0240
L_0240:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_0264                          ; 7C 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x298]            ; A1 98 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x29a]            ; A0 9A 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 8A 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0264
L_0264:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_028E                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_028E                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x29e]            ; A1 9E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2a0]            ; A0 A0 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A AA 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_028E
L_028E:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_02AE                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x292]            ; A1 92 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x294]            ; A0 94 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A D4 02 00 00 [FIXUP]
;   [error/early exit] L_02AE
L_02AE:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;-------------------------------------------------------------------------
; sub_02B4   offset=0x02B4  size=308 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   FINDRESOURCE
;   FREERESOURCE
;   GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   LOADRESOURCE
;   LOCKRESOURCE
;   SIZEOFRESOURCE
;
; Near calls (internal): L_05C8, L_0770, L_082C
;-------------------------------------------------------------------------
;   [sub-routine] L_02B4
L_02B4:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jle     L_02D8                          ; 7E 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x29b]            ; A1 9B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x29d]            ; A0 9D 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FE 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02D8
L_02D8:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0302                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0302                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x2a1]            ; A1 A1 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2a3]            ; A0 A3 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 1E 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0302
L_0302:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_0322                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x295]            ; A1 95 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x297]            ; A0 97 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0322
L_0322:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x1e                        ; 83 EC 1E
        push    si                              ; 56
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        lea     ax, [bp - 0x1a]                 ; 8D 46 E6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0770                          ; E8 28 04
        mov     word ptr [bp - 0xa], 4          ; C7 46 F6 04 00
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, 0x156                       ; BE 56 01
        jmp     L_0406                          ; E9 A9 00
;   [loop start] L_035D
L_035D:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        cmp     byte ptr [bp - 0x19], al        ; 38 46 E7
        je      L_036E                          ; 74 04
        add     byte ptr [bp - 5], 8            ; 80 46 FB 08
;   [conditional branch target (if/else)] L_036E
L_036E:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        cmp     byte ptr [bp - 0x17], al        ; 38 46 E9
        je      L_037A                          ; 74 04
        add     byte ptr [bp - 5], 0x10         ; 80 46 FB 10
;   [conditional branch target (if/else)] L_037A
L_037A:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        cmp     byte ptr [bp - 0x18], al        ; 38 46 E8
        je      L_0386                          ; 74 04
        add     byte ptr [bp - 5], 0x20         ; 80 46 FB 20
;   [conditional branch target (if/else)] L_0386
L_0386:
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        je      L_03B3                          ; 74 27
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_03B3                          ; 74 14
        or      ax, ax                          ; 0B C0
        jle     L_03A7                          ; 7E 04
        mov     cl, 6                           ; B1 06
        jmp     L_03AE                          ; EB 07
;   [conditional branch target (if/else)] L_03A7
L_03A7:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        mov     cl, 7                           ; B1 07
;   [unconditional branch target] L_03AE
L_03AE:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_03B3
L_03B3:
        cmp     byte ptr [bp - 0x15], 0         ; 80 7E EB 00
        je      L_03D9                          ; 74 20
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x15]        ; 8A 46 EB
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_03D9                          ; 74 0D
        or      ax, ax                          ; 0B C0
        jg      L_03D2                          ; 7F 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_03D2
L_03D2:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_03D9
L_03D9:
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x14]        ; 8A 46 EC
        cwde                                    ; 98
        xor     ax, cx                          ; 33 C1
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jae     L_0400                          ; 73 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_0400
L_0400:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 8                           ; 83 C6 08
;   [unconditional branch target] L_0406
L_0406:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0411                          ; 7D 03
        jmp     L_035D                          ; E9 4C FF
;   [conditional branch target (if/else)] L_0411
L_0411:
        mov     ax, 0x17e                       ; B8 7E 01
        push    ds                              ; 1E
        ;   ^ arg lpszModule (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszModule (low/offset)
        ; --> GETMODULEHANDLE(LPSTR lpszModule) -> HANDLE
        call    far KERNEL.GETMODULEHANDLE      ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        push    ax                              ; 50
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        sub     dx, dx                          ; 2B D2
        inc     ax                              ; 40
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x101                       ; B8 01 01
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far KERNEL.FINDRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    ax                              ; 50
        call    far KERNEL.SIZEOFRESOURCE       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, word ptr [bp + 0xc]         ; 0B 46 0C
        jne     L_044C                          ; 75 03
        jmp     L_04FF                          ; E9 B3 00
;   [conditional branch target (if/else)] L_044C
L_044C:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_0463                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_0502                          ; E9 9F 00
;   [conditional branch target (if/else)] L_0463
L_0463:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0x84          ; 26 C7 07 84 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x156                       ; 05 56 01
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_05C8                          ; E8 2D 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        or      al, al                          ; 0A C0
        je      L_04B2                          ; 74 05
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
;   [conditional branch target (if/else)] L_04B2
L_04B2:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_04C9                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
;   [conditional branch target (if/else)] L_04C9
L_04C9:
        cmp     byte ptr [0x294], 0             ; 80 3E 94 02 00
        je      L_04DE                          ; 74 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
;   [conditional branch target (if/else)] L_04DE
L_04DE:
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bp - 0x13]            ; F6 6E ED
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     word ptr [bp - 0x10], 1         ; C7 46 F0 01 00
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.FREERESOURCE         ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_04FF
L_04FF:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
;   [unconditional branch target] L_0502
L_0502:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x5e                        ; 83 EC 5E
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        cmp     word ptr es:[bx], 0x8889        ; 26 81 3F 89 88
        jne     L_052B                          ; 75 06
;   [loop start] L_0525
L_0525:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05BD                          ; E9 92 00
;   [conditional branch target (if/else)] L_052B
L_052B:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0556                          ; 74 23
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0556                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        call    L_082C                          ; E8 EB 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_0525                          ; 74 DE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x156                       ; 05 56 01
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        jmp     L_056D                          ; EB 17
;   [conditional branch target (if/else)] L_0556
L_0556:
        mov     word ptr [bp - 0x3e], 0x156     ; C7 46 C2 56 01
        mov     word ptr [bp - 6], 4            ; C7 46 FA 04 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
;   [loop start] L_0565
L_0565:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x3c], ax        ; 39 46 C4
        jge     L_05BA                          ; 7D 4D
;   [unconditional branch target] L_056D
L_056D:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_05C8                          ; E8 4C 00
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_05C8                          ; E8 3D 00
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        lcall   [bp + 0xa]                      ; FF 5E 0A
        mov     word ptr [bp - 0x3a], ax        ; 89 46 C6
        or      ax, ax                          ; 0B C0
        je      L_05BA                          ; 74 11
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_05BA                          ; 75 09
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        add     word ptr [bp - 0x3e], 8         ; 83 46 C2 08
        jmp     L_0565                          ; EB AB
;   [conditional branch target (if/else)] L_05BA
L_05BA:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
;   [unconditional branch target] L_05BD
L_05BD:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;-------------------------------------------------------------------------
; sub_05C8   offset=0x05C8  size=132 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_05C8
L_05C8:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 1]           ; 8A 47 01
        cwde                                    ; 98
        mov     si, ax                          ; 8B F0
        mov     al, byte ptr [bx + 3]           ; 8A 47 03
        cwde                                    ; 98
        mov     di, ax                          ; 8B F8
        mov     cl, 4                           ; B1 04
        shl     di, cl                          ; D3 E7
        mov     ax, di                          ; 8B C7
        or      ax, si                          ; 0B C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        lea     ax, [si + 1]                    ; 8D 44 01
        or      ax, di                          ; 0B C7
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     al, 0x64                        ; B0 64
        imul    byte ptr [bx + 7]               ; F6 6F 07
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 1                           ; 3D 01 00
        je      L_0615                          ; 74 13
        cmp     ax, 2                           ; 3D 02 00
        jne     L_060A                          ; 75 03
        jmp     L_06E4                          ; E9 DA 00
;   [conditional branch target (if/else)] L_060A
L_060A:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0612                          ; 75 03
        jmp     L_0693                          ; E9 81 00
;   [conditional branch target (if/else)] L_0612
L_0612:
        jmp     L_0768                          ; E9 53 01
;   [conditional branch target (if/else)] L_0615
L_0615:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xb], 0       ; 26 C6 47 0B 00
        mov     byte ptr es:[bx + 0xc], 0       ; 26 C6 47 0C 00
        mov     byte ptr es:[bx + 0xd], 0       ; 26 C6 47 0D 00
        mov     byte ptr es:[bx + 0xe], 2       ; 26 C6 47 0E 02
        mov     byte ptr es:[bx + 0xf], 1       ; 26 C6 47 0F 01
        mov     byte ptr es:[bx + 0x10], 0      ; 26 C6 47 10 00
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + 0x11], al     ; 26 88 47 11
        mov     ax, bx                          ; 8B C3
        mov     dx, es                          ; 8C C2
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     bx, si                          ; 8B DE
        mov     al, byte ptr [bx + 2]           ; 8A 47 02
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x176]       ; 8B 87 76 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A 82 00 00 00 [FIXUP]
        jmp     L_0768                          ; E9 D5 00
;   [unconditional branch target] L_0693
L_0693:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     word ptr es:[bx + 4], 0         ; 26 C7 47 04 00 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
        mov     byte ptr es:[bx + 0xd], 2       ; 26 C6 47 0D 02
        mov     byte ptr es:[bx + 0xe], 1       ; 26 C6 47 0E 01
        mov     word ptr es:[bx + 0xf], 1       ; 26 C7 47 0F 01 00
        mov     word ptr es:[bx + 0x11], 0      ; 26 C7 47 11 00 00
        jmp     L_0768                          ; E9 84 00
;   [unconditional branch target] L_06E4
L_06E4:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 4]           ; 8A 47 04
        cwde                                    ; 98
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     word ptr es:[bx + 2], 7         ; 26 C7 47 02 07 00
        mov     word ptr es:[bx + 4], 2         ; 26 C7 47 04 02 00
        mov     word ptr es:[bx + 8], 3         ; 26 C7 47 08 03 00
        mov     word ptr es:[bx + 6], 0         ; 26 C7 47 06 00 00
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     al, byte ptr [bx + 5]           ; 8A 47 05
        cwde                                    ; 98
        mov     bx, word ptr [bp + 4]           ; 8B 5E 04
        mov     word ptr es:[bx + 0xa], ax      ; 26 89 47 0A
        mov     word ptr es:[bx + 0xc], ax      ; 26 89 47 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 0xe], ax      ; 26 89 47 0E
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     al, byte ptr [si + 6]           ; 8A 44 06
        mov     byte ptr es:[bx + 0x10], al     ; 26 88 47 10
        mov     byte ptr es:[bx + 0x11], 0      ; 26 C6 47 11 00
        mov     byte ptr es:[bx + 0x12], 0      ; 26 C6 47 12 00
        mov     byte ptr es:[bx + 0x13], 0x20   ; 26 C6 47 13 20
        mov     byte ptr es:[bx + 0x14], 0x7e   ; 26 C6 47 14 7E
        mov     byte ptr es:[bx + 0x15], 0x2e   ; 26 C6 47 15 2E
        mov     byte ptr es:[bx + 0x16], 0x20   ; 26 C6 47 16 20
        mov     al, byte ptr [bp - 4]           ; 8A 46 FC
        mov     byte ptr es:[bx + 0x17], al     ; 26 88 47 17
        mov     byte ptr es:[bx + 0x18], 0      ; 26 C6 47 18 00
        mov     word ptr es:[bx + 0x19], 0      ; 26 C7 47 19 00 00
        mov     word ptr es:[bx + 0x1b], 0x3c   ; 26 C7 47 1B 3C 00
        mov     word ptr es:[bx + 0x1d], 0xb4   ; 26 C7 47 1D B4 00
;   [fall-through exit] L_0768
L_0768:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;-------------------------------------------------------------------------
; sub_0770   offset=0x0770  size=69 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_082C
;-------------------------------------------------------------------------
;   [sub-routine] L_0770
L_0770:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf                         ; 24 0F
        cmp     al, 2                           ; 3C 02
        jne     L_0785                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0787                          ; EB 02
;   [conditional branch target (if/else)] L_0785
L_0785:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0787
L_0787:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 1], al        ; 26 88 47 01
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        sub     ah, ah                          ; 2A E4
        and     ax, 0xf0                        ; 25 F0 00
        mov     cl, 4                           ; B1 04
        shr     ax, cl                          ; D3 E8
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 3], al        ; 26 88 47 03
        or      al, al                          ; 0A C0
        jne     L_07AE                          ; 75 05
        mov     byte ptr es:[bx + 3], 3         ; 26 C6 47 03 03
;   [conditional branch target (if/else)] L_07AE
L_07AE:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jle     L_07BF                          ; 7E 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, si                          ; 8B C6
        jmp     L_07CA                          ; EB 0B
;   [conditional branch target (if/else)] L_07BF
L_07BF:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
        les     bx, ptr [bp + 4]                ; C4 5E 04
;   [unconditional branch target] L_07CA
L_07CA:
        mov     byte ptr es:[bx + 4], al        ; 26 88 47 04
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 2]        ; 26 8A 47 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 5], al        ; 26 88 47 05
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 8]        ; 26 8B 47 08
        cdq                                     ; 99
        mov     cx, 0x64                        ; B9 64 00
        idiv    cx                              ; F7 F9
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 7], al        ; 26 88 47 07
        or      al, al                          ; 0A C0
        jne     L_07F9                          ; 75 05
        mov     byte ptr es:[bx + 7], 4         ; 26 C6 47 07 04
;   [conditional branch target (if/else)] L_07F9
L_07F9:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 6], al        ; 26 88 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_082C                          ; E8 17 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 2], al        ; 26 88 47 02
        inc     al                              ; FE C0
        jne     L_0825                          ; 75 05
        mov     byte ptr es:[bx + 2], 0         ; 26 C6 47 02 00
;   [error/early exit] L_0825
L_0825:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_082C   offset=0x082C  size=225 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;
; Near calls (internal): L_0205, L_0A7D, L_0B53, L_0D20
;-------------------------------------------------------------------------
;   [sub-routine] L_082C
L_082C:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0837
L_0837:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpsz1 (low/offset)
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x176]       ; 8B 87 76 01
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A 4E 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0856                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_0862                          ; EB 0C
;   [conditional branch target (if/else)] L_0856
L_0856:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 4            ; 83 7E FE 04
        jl      L_0837                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_0862
L_0862:
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
        sub     sp, 0x1a                        ; 83 EC 1A
        push    di                              ; 57
        push    si                              ; 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0887                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_088C                          ; EB 05
;   [conditional branch target (if/else)] L_0887
L_0887:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_088C
L_088C:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0B53                          ; E8 B4 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_08B7                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_08B7                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0A70                          ; E9 B9 01
;   [conditional branch target (if/else)] L_08B7
L_08B7:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_08C7                          ; 75 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_090B                          ; 74 44
;   [conditional branch target (if/else)] L_08C7
L_08C7:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_090B                          ; EB 3D
;   [loop start] L_08CE
L_08CE:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0911                          ; 7E 3D
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D20                          ; E8 27 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 0x18]            ; FF 46 18
        dec     word ptr [bp + 0x16]            ; FF 4E 16
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
;   [branch target] L_090B
L_090B:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_08CE                          ; 7C BD
;   [conditional branch target (if/else)] L_0911
L_0911:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_092A                          ; 7E 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [conditional branch target (if/else)] L_092A
L_092A:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D20                          ; E8 CC 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_0972                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_0972
L_0972:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jg      L_0984                          ; 7F 0C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0981                          ; 75 03
        jmp     L_0A6A                          ; E9 E9 00
;   [conditional branch target (if/else)] L_0981
L_0981:
        jmp     L_0A62                          ; E9 DE 00
;   [conditional branch target (if/else)] L_0984
L_0984:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 0x10   ; 26 80 4F 26 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0A7D                          ; E8 E3 00
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_09AA                          ; 75 03
        jmp     L_0A6A                          ; E9 C0 00
;   [conditional branch target (if/else)] L_09AA
L_09AA:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     di, word ptr es:[bx + 0x10]     ; 26 8B 7F 10
        sub     si, si                          ; 2B F6
;   [loop start] L_09B3
L_09B3:
        cmp     word ptr [bp + 0x16], si        ; 39 76 16
        jg      L_09BB                          ; 7F 03
        jmp     L_0A5B                          ; E9 A0 00
;   [conditional branch target (if/else)] L_09BB
L_09BB:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_09E2                          ; 74 19
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0205                          ; E8 2A F8
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0x20                        ; 3C 20
        ja      L_09E5                          ; 77 03
;   [loop start (also forward branch)] L_09E2
L_09E2:
        inc     si                              ; 46
        jmp     L_09B3                          ; EB CE
;   [conditional branch target (if/else)] L_09E5
L_09E5:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        mov     ax, si                          ; 8B C6
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D20                          ; E8 0F 03
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
        push    es                              ; 06
        push    bx                              ; 53
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0D20                          ; E8 E3 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0A7D                          ; E8 27 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_09E2                          ; EB 87
;   [unconditional branch target] L_0A5B
L_0A5B:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x10], di     ; 26 89 7F 10
;   [unconditional branch target] L_0A62
L_0A62:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0A6A
L_0A6A:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [unconditional branch target] L_0A70
L_0A70:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;-------------------------------------------------------------------------
; sub_0A7D   offset=0x0A7D  size=74 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   INSERTPQ
;   SIZEPQ
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0C7F
;-------------------------------------------------------------------------
;   [sub-routine] L_0A7D
L_0A7D:
        ;   = cProc <8> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 8                           ; 83 EC 08
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr es:[bx + 0x30]     ; 26 8B 47 30
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        push    es                              ; 06
        push    bx                              ; 53
        push    ax                              ; 50
        call    L_0C7F                          ; E8 EC 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_0A9E                          ; 75 05
;   [loop start] L_0A99
L_0A99:
        sub     ax, ax                          ; 2B C0
        jmp     L_0B4D                          ; E9 AF 00
;   [conditional branch target (if/else)] L_0A9E
L_0A9E:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A EF 0B 00 00 [FIXUP]
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr es:[bx], ax            ; 26 89 07
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr es:[bx + 2], ax        ; 26 89 47 02
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr es:[bx + 8], ax        ; 26 89 47 08
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr es:[bx + 6], ax        ; 26 89 47 06
        mov     ax, bx                          ; 8B C3
        add     ax, 0xa                         ; 05 0A 00
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        add     ax, 0x68                        ; 05 68 00
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_106                  ; 9A 77 04 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A 3A 0B 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0B3E                          ; 75 3E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0B2C                          ; 75 19
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 46 0B 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        jmp     L_0A99                          ; E9 6D FF
;   [conditional branch target (if/else)] L_0B2C
L_0B2C:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0B3E
L_0B3E:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 6E 0C 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_0B4D
L_0B4D:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_0B53   offset=0x0B53  size=110 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;
; Near calls (internal): L_0205
;-------------------------------------------------------------------------
;   [sub-routine] L_0B53
L_0B53:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_0B71                          ; 75 0A
        mov     byte ptr [bp - 0xc], 0x7e       ; C6 46 F4 7E
        mov     byte ptr [bp - 2], 0x2e         ; C6 46 FE 2E
        jmp     L_0B86                          ; EB 15
;   [conditional branch target (if/else)] L_0B71
L_0B71:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 2], al           ; 88 46 FE
;   [unconditional branch target] L_0B86
L_0B86:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_0B97
L_0B97:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_0BB5                          ; 7D 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_0BB5                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0BC6                          ; 72 11
;   [conditional branch target (if/else)] L_0BB5
L_0BB5:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_0BCE                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_0C78                          ; E9 B2 00
;   [conditional branch target (if/else)] L_0BC6
L_0BC6:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0B97                          ; EB C9
;   [conditional branch target (if/else)] L_0BCE
L_0BCE:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A F0 0C 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_0BEB                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0C78                          ; E9 8D 00
;   [conditional branch target (if/else)] L_0BEB
L_0BEB:
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 8], dx           ; 89 56 F8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        jmp     L_0C62                          ; EB 56
;   [loop start] L_0C0C
L_0C0C:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_0C2F                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0C3B                          ; 72 10
        cmp     al, 0xa0                        ; 3C A0
        jae     L_0C3B                          ; 73 0C
;   [conditional branch target (if/else)] L_0C2F
L_0C2F:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0C3B
L_0C3B:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0C5C                          ; 72 14
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0205                          ; E8 B2 F5
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0C5C
L_0C5C:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_0C62
L_0C62:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0C0C                          ; 7C A2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A F3 04 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
;   [fall-through exit] L_0C78
L_0C78:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_0C7F   offset=0x0C7F  size=66 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0C7F
L_0C7F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    di                              ; 57
        push    si                              ; 56
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     si, word ptr es:[bx + 0x44]     ; 26 8B 77 44
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        add     ax, 0xa                         ; 05 0A 00
        add     word ptr es:[bx + 0x44], ax     ; 26 01 47 44
        mov     ax, word ptr es:[bx + 0x44]     ; 26 8B 47 44
        cmp     ax, word ptr es:[bx + 0x42]     ; 26 3B 47 42
        jl      L_0CD1                          ; 7C 2F
        add     byte ptr es:[bx + 0x43], 2      ; 26 80 47 43 02
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        mov     ax, word ptr es:[bx + 0x42]     ; 26 8B 47 42
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0CD1                          ; 75 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x44], si     ; 26 89 77 44
        sub     word ptr es:[bx + 0x42], 0x200  ; 26 81 6F 42 00 02
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0CD3                          ; EB 02
;   [conditional branch target (if/else)] L_0CD1
L_0CD1:
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_0CD3
L_0CD3:
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
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 0x200                       ; B8 00 02
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x40], ax     ; 26 89 47 40
        or      ax, ax                          ; 0B C0
        jne     L_0D03                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0D15                          ; EB 12
;   [conditional branch target (if/else)] L_0D03
L_0D03:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x42], 0x200  ; 26 C7 47 42 00 02
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0D15
L_0D15:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0D20   offset=0x0D20  size=177 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0240, L_02B4, L_0F15
;-------------------------------------------------------------------------
;   [sub-routine] L_0D20
L_0D20:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jle     L_0D32                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0D34                          ; EB 02
;   [conditional branch target (if/else)] L_0D32
L_0D32:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0D34
L_0D34:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0D6E                          ; 74 33
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cx, word ptr [0x188]            ; 8B 0E 88 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x38]     ; 26 8A 47 38
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_107                  ; 9A C1 0E 00 00 [FIXUP]
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_0240                          ; E8 D4 F4
        jmp     L_0D76                          ; EB 08
;   [conditional branch target (if/else)] L_0D6E
L_0D6E:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
;   [unconditional branch target] L_0D76
L_0D76:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0DE1                          ; 74 56
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        mov     ax, word ptr es:[bx + 0x3d]     ; 26 8B 47 3D
        mov     cl, byte ptr es:[bx + 0x1d]     ; 26 8A 4F 1D
        sub     ch, ch                          ; 2A ED
        shl     cx, 1                           ; D1 E1
        sub     ax, cx                          ; 2B C1
        add     ax, bx                          ; 03 C3
        mov     dx, es                          ; 8C C2
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 0x12], dx        ; 89 56 EE
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cwde                                    ; 98
        mov     bx, ax                          ; 8B D8
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
;   [loop start] L_0DBE
L_0DBE:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0DF1                          ; 7D 2B
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0DBE                          ; EB DD
;   [conditional branch target (if/else)] L_0DE1
L_0DE1:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_0DF1
L_0DF1:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0E0C                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0E19                          ; 75 0D
;   [conditional branch target (if/else)] L_0E0C
L_0E0C:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0E19                          ; 75 03
        jmp     L_0EAB                          ; E9 92 00
;   [conditional branch target (if/else)] L_0E19
L_0E19:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_0E93                          ; EB 60
;   [loop start] L_0E33
L_0E33:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0E69                          ; 74 26
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_0E69                          ; 75 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_0E69                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
;   [conditional branch target (if/else)] L_0E69
L_0E69:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0E8D                          ; 74 18
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0F15                          ; E8 88 00
;   [conditional branch target (if/else)] L_0E8D
L_0E8D:
        dec     word ptr [bp + 0x10]            ; FF 4E 10
        inc     word ptr [bp + 0x12]            ; FF 46 12
;   [unconditional branch target] L_0E93
L_0E93:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0E33                          ; 75 9A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0EC5                          ; 75 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_0EC5                          ; EB 1A
;   [unconditional branch target] L_0EAB
L_0EAB:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0EC5                          ; 74 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _entry_107                  ; 9A F8 0E 00 00 [FIXUP]
;   [branch target] L_0EC5
L_0EC5:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0F02                          ; 74 37
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_02B4                          ; E8 DA F3
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x39]     ; 26 8B 47 39
        mov     cx, word ptr [0x188]            ; 8B 0E 88 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 2B 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        jmp     L_0F0E                          ; EB 0C
;   [conditional branch target (if/else)] L_0F02
L_0F02:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [fall-through exit] L_0F0E
L_0F0E:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
;-------------------------------------------------------------------------
; sub_0F15   offset=0x0F15  size=217 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_0240, L_02B4, L_0B53, L_1164, L_119E
;-------------------------------------------------------------------------
;   [sub-routine] L_0F15
L_0F15:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp + 8]                    ; 8D 46 08
        push    ss                              ; 16
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 41 0F 00 00 [FIXUP]
        jmp     L_0F4B                          ; EB 1A
;   [loop start] L_0F31
L_0F31:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x18a                       ; B8 8A 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 76 0F 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [bp + 4], ax           ; 29 46 04
;   [unconditional branch target] L_0F4B
L_0F4B:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_0F31                          ; 7D DE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_0FAD                          ; 7E 54
        mov     ax, 0x184                       ; B8 84 01
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp + 4]               ; FF 76 04
        call    far _entry_109                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x18c                       ; B8 8C 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 8A 0F 00 00 [FIXUP]
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x184                       ; B8 84 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A A0 0F 00 00 [FIXUP]
        jmp     L_0FA7                          ; EB 17
;   [loop start] L_0F90
L_0F90:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x18f                       ; B8 8F 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 99 10 00 00 [FIXUP]
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [unconditional branch target] L_0FA7
L_0FA7:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0F90                          ; 75 E3
;   [error/early exit] L_0FAD
L_0FAD:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x10                        ; 83 EC 10
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_119E                          ; E8 CA 01
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x26], 2      ; 26 F6 47 26 02
        jne     L_0FE7                          ; 75 03
        jmp     L_111D                          ; E9 36 01
;   [conditional branch target (if/else)] L_0FE7
L_0FE7:
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        je      L_0FF0                          ; 74 03
        jmp     L_111D                          ; E9 2D 01
;   [conditional branch target (if/else)] L_0FF0
L_0FF0:
        mov     ax, word ptr es:[bx + 0x3c]     ; 26 8B 47 3C
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [loop start] L_0FF7
L_0FF7:
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0B53                          ; E8 4A FB
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     word ptr [bp - 0xa], dx         ; 89 56 F6
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_101C                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_101C                          ; 75 03
        jmp     L_1132                          ; E9 16 01
;   [conditional branch target (if/else)] L_101C
L_101C:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xa], dx         ; 39 56 F6
        jne     L_102C                          ; 75 05
        cmp     word ptr [bp - 0xc], ax         ; 39 46 F4
        je      L_1031                          ; 74 05
;   [conditional branch target (if/else)] L_102C
L_102C:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_1031
L_1031:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_108                  ; 9A 5E 10 00 00 [FIXUP]
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_0240                          ; E8 EF F1
;   [loop start] L_1051
L_1051:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_1164                          ; E8 F6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cmp     word ptr es:[bx + 0x3c], 0x5a0  ; 26 81 7F 3C A0 05
        jg      L_10F8                          ; 7F 71
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_109D                          ; 7C 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_107                  ; 9A 60 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_109D
L_109D:
        mov     ax, word ptr [bp - 0xe]         ; 8B 46 F2
        cmp     word ptr [bp + 0x1e], ax        ; 39 46 1E
        jge     L_10A8                          ; 7D 03
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [conditional branch target (if/else)] L_10A8
L_10A8:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_11                   ; 9A FF FF 00 00 [FIXUP]
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     word ptr [bp - 0xc], ax         ; 01 46 F4
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        je      L_10F8                          ; 74 03
        jmp     L_1051                          ; E9 59 FF
;   [conditional branch target (if/else)] L_10F8
L_10F8:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_02B4                          ; E8 AD F1
        dec     word ptr [bp - 0xc]             ; FF 4E F4
        les     bx, ptr [bp - 0xc]              ; C4 5E F4
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_1136                          ; 75 23
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        and     byte ptr es:[bx + 0x26], 0xfd   ; 26 80 67 26 FD
        jmp     L_113E                          ; EB 21
;   [unconditional branch target] L_111D
L_111D:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _entry_110                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_1132                          ; 74 03
        jmp     L_0FF7                          ; E9 C5 FE
;   [branch target] L_1132
L_1132:
        sub     ax, ax                          ; 2B C0
        jmp     L_1159                          ; EB 23
;   [conditional branch target (if/else)] L_1136
L_1136:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 2      ; 26 80 4F 26 02
;   [unconditional branch target] L_113E
L_113E:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr es:[bx + 0x46], ax     ; 26 89 47 46
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_1156                          ; 74 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 66 0A 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_1156
L_1156:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_1159
L_1159:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;-------------------------------------------------------------------------
; sub_1164   offset=0x1164  size=26 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_1164
L_1164:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_117C                          ; EB 0D
;   [loop start] L_116F
L_116F:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_1190                          ; 74 18
        inc     si                              ; 46
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_117C
L_117C:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_116F                          ; 7F EE
        jmp     L_1190                          ; EB 0D
;   [loop start] L_1183
L_1183:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_1195                          ; 75 06
        inc     si                              ; 46
;   [branch target] L_1190
L_1190:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_1183                          ; 7F EE
;   [error/early exit] L_1195
L_1195:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_119E   offset=0x119E  size=64 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=6, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_119E
L_119E:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_11BB                          ; 75 09
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        dec     ax                              ; 48
        dec     ax                              ; 48
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_11BB
L_11BB:
        cmp     word ptr [bp - 2], 0xf          ; 83 7E FE 0F
        jge     L_11E8                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_123A                          ; 74 6F
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2a7]            ; A1 A7 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2a9]            ; A0 A9 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 06 12 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
        jmp     L_123A                          ; EB 52
;   [conditional branch target (if/else)] L_11E8
L_11E8:
        cmp     word ptr [bp - 2], 0x12         ; 83 7E FE 12
        jge     L_1215                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xf    ; 26 83 7F 38 0F
        je      L_123A                          ; 74 42
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2ad]            ; A1 AD 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2af]            ; A0 AF 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 2D 12 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xf    ; 26 C7 47 38 0F 00
        jmp     L_123A                          ; EB 25
;   [conditional branch target (if/else)] L_1215
L_1215:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0x12   ; 26 83 7F 38 12
        je      L_123A                          ; 74 1B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x2aa]            ; A1 AA 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x2ac]            ; A0 AC 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 59 0D 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0x12   ; 26 C7 47 38 12 00
;   [branch target] L_123A
L_123A:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

TOSH_TEXT ENDS

        END
