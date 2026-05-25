; ======================================================================
; WRITE / seg26.asm   (segment 26 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         5
; Total instructions:                  498
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     10 (9 unique)
;   Top:
;        2  SENDDLGITEMMESSAGE
;        1  GETDLGITEM
;        1  GETDLGITEMTEXT
;        1  SETFOCUS
;        1  DIALOGBOX
;        1  ENABLEWINDOW
;        1  ISWINDOW
;        1  SHOWCURSOR
; ======================================================================
; AUTO-GENERATED from original WRITE segment 26
; segment_size=1532 bytes, flags=0xf130
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
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200a                      ; B8 0A 20
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0114                          ; E8 E9 00
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
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0114                          ; E8 B6 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x200c                      ; B8 0C 20
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0114                          ; E8 7C 00
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
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        mov     ax, 0x12                        ; B8 12 00
        push    ax                              ; 50
        mov     ax, 0x200c                      ; B8 0C 20
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0114                          ; E8 42 00
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
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [0x30e]                ; FF 36 0E 03
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0114                          ; E8 0B 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xe                             ; CA 0E 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x12]  INT       (1 use)
;     [bp+0x14]  HWND      (1 use)

; Description (heuristic):
;   Mixed routine using: GETDLGITEM, GETDLGITEMTEXT, SENDDLGITEMMESSAGE (+1 more).

;-------------------------------------------------------------------------
; sub_0114   offset=0x0114  size=195 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
;   GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SETFOCUS
;
; Near calls (internal): L_031A, L_0366
;-------------------------------------------------------------------------
;   [sub-routine] L_0114
L_0114:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0x36                        ; 83 EC 36
        push    si                              ; 56
        mov     word ptr [bp - 0x2e], 0         ; C7 46 D2 00 00
        mov     word ptr [bp - 0x2a], 1         ; C7 46 D6 01 00
        push    word ptr [bp + 0x14]            ; FF 76 14
        ;   ^ arg hDlg
        push    word ptr [bp + 0x12]            ; FF 76 12
        ;   ^ arg nIDItem
        lea     ax, [bp - 0x25]                 ; 8D 46 DB
        push    ss                              ; 16
        ;   ^ arg lpszText (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszText (low/offset)
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        ;   ^ arg cbMax
        ; --> GETDLGITEMTEXT(HWND hDlg, INT nIDItem, LPSTR lpszText, INT cbMax) -> INT
        call    far USER.GETDLGITEMTEXT         ; 9A FF FF 00 00 [FIXUP]
        mov     byte ptr [bp - 0x26], al        ; 88 46 DA
        test    byte ptr [bp + 0xc], 2          ; F6 46 0C 02
        je      L_015A                          ; 74 11
        or      al, al                          ; 0A C0
        jne     L_015A                          ; 75 0D
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        mov     ax, 2                           ; B8 02 00
        jmp     L_030E                          ; E9 B4 01
;   [conditional branch target (if/else)] L_015A
L_015A:
        lea     ax, [bp - 0x25]                 ; 8D 46 DB
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        test    byte ptr [bp + 0xc], 2          ; F6 46 0C 02
        je      L_0199                          ; 74 33
        test    byte ptr [bp + 0xc], 0x10       ; F6 46 0C 10
        je      L_0199                          ; 74 2D
        mov     word ptr [bp - 0x30], 1         ; C7 46 D0 01 00
;   [loop start] L_0171
L_0171:
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        cmp     byte ptr [bx], 0                ; 80 3F 00
        je      L_0186                          ; 74 0D
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        cmp     byte ptr [bx], 0x20             ; 80 3F 20
        je      L_0171                          ; 74 F0
        mov     word ptr [bp - 0x30], 0         ; C7 46 D0 00 00
;   [conditional branch target (if/else)] L_0186
L_0186:
        cmp     word ptr [bp - 0x30], 1         ; 83 7E D0 01
        jne     L_0199                          ; 75 0D
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        mov     word ptr [bx], 0xffff           ; C7 07 FF FF
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        jmp     L_030E                          ; E9 75 01
;   [conditional branch target (if/else)] L_0199
L_0199:
        lea     ax, [bp - 0x25]                 ; 8D 46 DB
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
        mov     al, byte ptr [bp - 0x26]        ; 8A 46 DA
        sub     ah, ah                          ; 2A E4
        mov     si, ax                          ; 8B F0
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        add     ax, si                          ; 03 C6
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01C6                          ; 74 12
        push    word ptr [bp + 0x16]            ; FF 76 16
        lea     ax, [bp - 0x25]                 ; 8D 46 DB
        push    ax                              ; 50
        push    si                              ; 56
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_87                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01D9                          ; EB 13
;   [conditional branch target (if/else)] L_01C6
L_01C6:
        push    word ptr [bp + 0x16]            ; FF 76 16
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        lea     ax, [bp - 0x2e]                 ; 8D 46 D2
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0366                          ; E8 8D 01
;   [unconditional branch target] L_01D9
L_01D9:
        mov     word ptr [bp - 0x28], ax        ; 89 46 D8
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_01E5                          ; 74 03
        jmp     L_0282                          ; E9 9D 00
;   [conditional branch target (if/else)] L_01E5
L_01E5:
        test    byte ptr [bp + 0xc], 8          ; F6 46 0C 08
        jne     L_01EE                          ; 75 03
        jmp     L_0282                          ; E9 94 00
;   [conditional branch target (if/else)] L_01EE
L_01EE:
        mov     ax, 2                           ; B8 02 00
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        imul    word ptr [bx]                   ; F7 2F
        mov     word ptr [bx], ax               ; 89 07
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
        mov     ax, 2                           ; B8 02 00
        imul    word ptr [bp + 0xe]             ; F7 6E 0E
        mov     word ptr [bp + 0xe], ax         ; 89 46 0E
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        jne     L_0282                          ; 75 72
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x2c], ax        ; 39 46 D4
        je      L_0282                          ; 74 6A
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        cmp     byte ptr [bx], 0x2e             ; 80 3F 2E
        jne     L_0282                          ; 75 62
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        lea     ax, [bp - 6]                    ; 8D 46 FA
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_031A                          ; E8 E5 00
        or      ax, ax                          ; 0B C0
        je      L_0240                          ; 74 07
        mov     word ptr [bp - 0x28], 1         ; C7 46 D8 01 00
        jmp     L_0282                          ; EB 42
;   [conditional branch target (if/else)] L_0240
L_0240:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        cmp     word ptr [bp - 0x2c], ax        ; 39 46 D4
        je      L_0274                          ; 74 2C
        mov     bx, word ptr [bp - 0x2c]        ; 8B 5E D4
        cmp     byte ptr [bx], 0x35             ; 80 3F 35
        jne     L_0274                          ; 75 24
        inc     word ptr [bp - 0x2c]            ; FF 46 D4
        lea     ax, [bp - 0x2c]                 ; 8D 46 D4
        push    ax                              ; 50
        push    word ptr [bp - 4]               ; FF 76 FC
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_031A                          ; E8 BB 00
        or      ax, ax                          ; 0B C0
        je      L_0274                          ; 74 11
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        inc     word ptr [bx]                   ; FF 07
        mov     word ptr [bp - 0x28], 1         ; C7 46 D8 01 00
        mov     word ptr [bp - 0x2a], 8         ; C7 46 D6 08 00
        jmp     L_0282                          ; EB 0E
;   [conditional branch target (if/else)] L_0274
L_0274:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        jbe     L_0282                          ; 76 06
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 0x2c], ax        ; 89 46 D4
;   [branch target] L_0282
L_0282:
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        je      L_02A2                          ; 74 1A
        cmp     word ptr [bp - 0x2e], 0         ; 83 7E D2 00
        jne     L_02A2                          ; 75 14
        mov     bx, word ptr [bp + 0x16]        ; 8B 5E 16
        mov     si, word ptr [bx]               ; 8B 37
        cmp     word ptr [bp + 0x10], si        ; 39 76 10
        jg      L_02A2                          ; 7F 0A
        cmp     word ptr [bp + 0xe], si         ; 39 76 0E
        jl      L_02A2                          ; 7C 05
        mov     ax, word ptr [bp - 0x2a]        ; 8B 46 D6
        jmp     L_030E                          ; EB 6C
;   [conditional branch target (if/else)] L_02A2
L_02A2:
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        je      L_02AC                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_02B4                          ; EB 08
;   [conditional branch target (if/else)] L_02AC
L_02AC:
        mov     ax, word ptr [bp - 0x2c]        ; 8B 46 D4
        sub     ax, bp                          ; 2B C5
        add     ax, 0x25                        ; 05 25 00
;   [unconditional branch target] L_02B4
L_02B4:
        mov     word ptr [bp - 0x34], ax        ; 89 46 CC
        mov     word ptr [bp - 0x36], 0x7fff    ; C7 46 CA FF 7F
        cmp     word ptr [bp + 8], 0            ; 83 7E 08 00
        je      L_02C7                          ; 74 05
        mov     ax, 0x200b                      ; B8 0B 20
        jmp     L_02CA                          ; EB 03
;   [conditional branch target (if/else)] L_02C7
L_02C7:
        mov     ax, 0x2008                      ; B8 08 20
;   [unconditional branch target] L_02CA
L_02CA:
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
        cmp     word ptr [bp - 0x28], 0         ; 83 7E D8 00
        je      L_02D9                          ; 74 06
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     word ptr [bp - 0x32], ax        ; 89 46 CE
;   [conditional branch target (if/else)] L_02D9
L_02D9:
        push    word ptr [bp + 0x14]            ; FF 76 14
        ;   ^ arg hDlg
        push    word ptr [bp + 0x12]            ; FF 76 12
        ;   ^ arg nIDItem
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     dx, word ptr [bp - 0x36]        ; 8B 56 CA
        mov     ax, word ptr [bp - 0x34]        ; 8B 46 CC
        push    dx                              ; 52
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x14]            ; FF 76 14
        ;   ^ arg hDlg
        push    word ptr [bp + 0x12]            ; FF 76 12
        ;   ^ arg nIDItem
        ; --> GETDLGITEM(HWND hDlg, INT nIDItem) -> HWND
        call    far USER.GETDLGITEM             ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x32]            ; FF 76 CE
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_030E
L_030E:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x12                            ; CA 12 00
; Description (heuristic):
;   Pure computation / dispatcher (36 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_031A   offset=0x031A  size=36 instr  segment=seg26.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_031A
L_031A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [loop start] L_032F
L_032F:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jae     L_0358                          ; 73 21
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     al, byte ptr [bx]               ; 8A 07
        mov     byte ptr [bp - 6], al           ; 88 46 FA
        cmp     al, 0x30                        ; 3C 30
        je      L_0347                          ; 74 04
        cmp     al, 0x20                        ; 3C 20
        jne     L_034C                          ; 75 05
;   [conditional branch target (if/else)] L_0347
L_0347:
        inc     word ptr [bp - 4]               ; FF 46 FC
        jmp     L_032F                          ; EB E3
;   [conditional branch target (if/else)] L_034C
L_034C:
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [bx], ax               ; 89 07
        sub     ax, ax                          ; 2B C0
        jmp     L_035B                          ; EB 03
;   [conditional branch target (if/else)] L_0358
L_0358:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_035B
L_035B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
; Description (heuristic):
;   Pure computation / dispatcher (95 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_0366   offset=0x0366  size=95 instr  segment=seg26.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0366
L_0366:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bx]               ; 8B 07
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 0xc], 0          ; C7 46 F4 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 0                ; C7 07 00 00
        jmp     L_042B                          ; E9 92 00
;   [loop start] L_0399
L_0399:
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        cmp     word ptr [bx], 0                ; 83 3F 00
        je      L_03A4                          ; 74 03
        jmp     L_0434                          ; E9 90 00
;   [conditional branch target (if/else)] L_03A4
L_03A4:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jb      L_03AF                          ; 72 03
        jmp     L_0434                          ; E9 85 00
;   [conditional branch target (if/else)] L_03AF
L_03AF:
        mov     bx, word ptr [bp - 0xa]         ; 8B 5E F6
        mov     al, byte ptr [bx]               ; 8A 07
        sub     ah, ah                          ; 2A E4
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_03C3                          ; 75 05
;   [loop start] L_03BE
L_03BE:
        inc     word ptr [bp - 0xa]             ; FF 46 F6
        jmp     L_042B                          ; EB 68
;   [conditional branch target (if/else)] L_03C3
L_03C3:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        or      ax, ax                          ; 0B C0
        je      L_03D6                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_03EB                          ; 74 1C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0405                          ; 74 31
        jmp     L_042B                          ; EB 55
;   [conditional branch target (if/else)] L_03D6
L_03D6:
        cmp     word ptr [bp - 8], 0x2d         ; 83 7E F8 2D
        jne     L_03E4                          ; 75 08
        mov     word ptr [bp - 0xe], 1          ; C7 46 F2 01 00
        inc     word ptr [bp - 0xa]             ; FF 46 F6
;   [conditional branch target (if/else)] L_03E4
L_03E4:
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        jmp     L_042B                          ; EB 40
;   [conditional branch target (if/else)] L_03EB
L_03EB:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_105                  ; 9A 09 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03FE                          ; 74 07
        mov     word ptr [bp - 4], 2            ; C7 46 FC 02 00
        jmp     L_042B                          ; EB 2D
;   [loop start (also forward branch)] L_03FE
L_03FE:
        mov     word ptr [bp - 0xc], 1          ; C7 46 F4 01 00
        jmp     L_042B                          ; EB 26
;   [conditional branch target (if/else)] L_0405
L_0405:
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_03FE                          ; 74 ED
        mov     ax, 0xa                         ; B8 0A 00
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        sub     ax, 0x30                        ; 2D 30 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        jge     L_03BE                          ; 7D 9A
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], 1                ; C7 07 01 00
;   [unconditional branch target] L_042B
L_042B:
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0434                          ; 75 03
        jmp     L_0399                          ; E9 65 FF
;   [branch target] L_0434
L_0434:
        mov     bx, word ptr [bp + 0xa]         ; 8B 5E 0A
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     word ptr [bx], ax               ; 89 07
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0449                          ; 74 07
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        neg     ax                              ; F7 D8
        jmp     L_044C                          ; EB 03
;   [conditional branch target (if/else)] L_0449
L_0449:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
;   [unconditional branch target] L_044C
L_044C:
        mov     bx, word ptr [bp + 0xc]         ; 8B 5E 0C
        mov     word ptr [bx], ax               ; 89 07
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_045C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_045E                          ; EB 02
;   [conditional branch target (if/else)] L_045C
L_045C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_045E
L_045E:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
; Description (heuristic):
;   Mixed routine using: DIALOGBOX, ENABLEWINDOW, ISWINDOW (+2 more).

;-------------------------------------------------------------------------
; sub_0469   offset=0x0469  size=145 instr  segment=seg26.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   ENABLEWINDOW
;   ISWINDOW
;   SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
;   SHOWCURSOR
;
; Near calls (internal): L_0469, L_05C2
;-------------------------------------------------------------------------
;   [sub-routine] L_0469
L_0469:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [0x7a2]                ; FF 36 A2 07
        call    far USER.ISWINDOW               ; 9A 91 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_048C                          ; 74 0C
        push    word ptr [0x7a2]                ; FF 36 A2 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A A1 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_048C
L_048C:
        push    word ptr [0x7a4]                ; FF 36 A4 07
        call    far USER.ISWINDOW               ; 9A AA 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04A5                          ; 74 0C
        push    word ptr [0x7a4]                ; FF 36 A4 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A BA 04 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04A5
L_04A5:
        push    word ptr [0x7a0]                ; FF 36 A0 07
        call    far USER.ISWINDOW               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_04BE                          ; 74 0C
        push    word ptr [0x7a0]                ; FF 36 A0 07
        push    word ptr [bp + 6]               ; FF 76 06
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_04BE
L_04BE:
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
        sub     sp, 6                           ; 83 EC 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0x7fff       ; C7 46 FA FF 7F
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDlg
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nIDItem
        mov     ax, 0x401                       ; B8 01 04
        push    ax                              ; 50
        ;   ^ arg wMsg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wParam
        mov     dx, 0x7fff                      ; BA FF 7F
        push    dx                              ; 52
        ;   ^ arg lParam (high/segment)
        push    ax                              ; 50
        ;   ^ arg lParam (low/offset)
        ; --> SENDDLGITEMMESSAGE(HWND hDlg, INT nIDItem, WORD wMsg, WPARAM wParam, LPARAM lParam) -> LRESULT
        call    far USER.SENDDLGITEMMESSAGE     ; 9A EF 02 00 00 [FIXUP]
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
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_0545                          ; 74 31
        cmp     ax, 9                           ; 3D 09 00
        je      L_0532                          ; 74 19
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_0525                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0562                          ; 74 3F
        jmp     L_0541                          ; EB 1C
;   [conditional branch target (if/else)] L_0525
L_0525:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0469                          ; E8 3C FF
;   [loop start] L_052D
L_052D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0586                          ; EB 54
;   [conditional branch target (if/else)] L_0532
L_0532:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0541                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A EE 05 00 00 [FIXUP]
;   [loop start (also forward branch)] L_0541
L_0541:
        sub     ax, ax                          ; 2B C0
        jmp     L_0586                          ; EB 41
;   [conditional branch target (if/else)] L_0545
L_0545:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0551                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
;   [conditional branch target (if/else)] L_0551
L_0551:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_0541                          ; 74 E9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0541                          ; EB DF
;   [conditional branch target (if/else)] L_0562
L_0562:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jb      L_052D                          ; 72 C3
        cmp     ax, 2                           ; 3D 02 00
        jbe     L_0579                          ; 76 0A
        cmp     ax, 6                           ; 3D 06 00
        jb      L_052D                          ; 72 B9
        cmp     ax, 7                           ; 3D 07 00
        ja      L_052D                          ; 77 B4
;   [conditional branch target (if/else)] L_0579
L_0579:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_05C2                          ; E8 3E 00
        jmp     L_052D                          ; EB A7
;   [unconditional branch target] L_0586
L_0586:
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
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0x10]            ; FF 76 10
        ;   ^ arg hInstance
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg lpszTemplate (high/segment)
        push    word ptr [bp + 0xc]             ; FF 76 0C
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWndOwner
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xc                             ; CA 0C 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x6]  INT       (1 use)
;     [bp+0x8]  HWND      (1 use)

; Description (heuristic):
;   Thin wrapper around ENDDIALOG(hDlg, nResult) -> BOOL.

;-------------------------------------------------------------------------
; sub_05C2   offset=0x05C2  size=27 instr  segment=seg26.asm
;
; Classification (pass8): unclear  (score C=2, ASM=0)
; Prologue: saves_regs     Epilogue: unknown
;
; Far API calls:
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;
; Near calls (internal): L_0469
;-------------------------------------------------------------------------
;   [sub-routine] L_05C2
L_05C2:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 0xe                         ; 83 EC 0E
        push    word ptr [bp + 8]               ; FF 76 08
        ;   ^ arg hDlg
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0469                          ; E8 86 FE
        mov     word ptr [0x7aa], 0             ; C7 06 AA 07 00 00
        push    word ptr [0x1bc6]               ; FF 36 C6 1B
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      004h                            ; 04

WRITE_TEXT ENDS

        END
