; ======================================================================
; PAINT / seg7.asm   (segment 7 of PAINT)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         6
; Total instructions:                  893
; 
; Classification (pass8):
;   C-origin (high+medium):              6
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     34 (28 unique)
;   Top:
;        2  CLIENTTOSCREEN
;        2  GETCURSORPOS
;        2  SCREENTOCLIENT
;        2  SETCURSORPOS
;        2  GETSTOCKOBJECT
;        2  SELECTOBJECT
;        1  GETDC
;        1  OFFSETRECT
; ======================================================================
; AUTO-GENERATED from original PAINT segment 7
; segment_size=3109 bytes, flags=0xf130
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
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x82a                       ; B8 2A 08
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
        push    word ptr [bp + 6]               ; FF 76 06
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
        mov     word ptr [0x570], ax            ; A3 70 05
        push    ax                              ; 50
        call    far USER.SETFOCUS               ; 9A 7C 01 00 00 [FIXUP]
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
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0xe92]                ; FF 36 92 0E
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A A9 00 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x1114]           ; A1 14 11
        sub     ax, word ptr [0x9e8]            ; 2B 06 E8 09
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A DE 00 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        call    far _entry_28                   ; 9A BF 00 00 00 [FIXUP]
        mov     word ptr [0xc84], ax            ; A3 84 0C
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A F1 00 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0x1116]           ; A1 16 11
        sub     ax, word ptr [0x9ea]            ; 2B 06 EA 09
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A FF FF 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        call    far _entry_28                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0xc8e], ax            ; A3 8E 0C
        cmp     word ptr [0xc84], 0             ; 83 3E 84 0C 00
        jge     L_0107                          ; 7D 08
        mov     word ptr [0xc84], 0             ; C7 06 84 0C 00 00
        jmp     L_011E                          ; EB 17
;   [conditional branch target (if/else)] L_0107
L_0107:
        mov     ax, word ptr [0xc84]            ; A1 84 0C
        add     ax, word ptr [0xda8]            ; 03 06 A8 0D
        cmp     ax, word ptr [0xbfe]            ; 3B 06 FE 0B
        jl      L_011E                          ; 7C 0A
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        sub     ax, word ptr [0xda8]            ; 2B 06 A8 0D
        mov     word ptr [0xc84], ax            ; A3 84 0C
;   [branch target] L_011E
L_011E:
        cmp     word ptr [0xc8e], 0             ; 83 3E 8E 0C 00
        jge     L_012D                          ; 7D 08
        mov     word ptr [0xc8e], 0             ; C7 06 8E 0C 00 00
        jmp     L_0144                          ; EB 17
;   [conditional branch target (if/else)] L_012D
L_012D:
        mov     ax, word ptr [0xc8e]            ; A1 8E 0C
        add     ax, word ptr [0xdb4]            ; 03 06 B4 0D
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jl      L_0144                          ; 7C 0A
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [0xdb4]            ; 2B 06 B4 0D
        mov     word ptr [0xc8e], ax            ; A3 8E 0C
;   [branch target] L_0144
L_0144:
        push    word ptr [bp - 4]               ; FF 76 FC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0xda8]                ; FF 36 A8 0D
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        push    word ptr [0xc84]                ; FF 36 84 0C
        push    word ptr [0xc8e]                ; FF 36 8E 0C
        call    far _entry_112                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x570]                ; FF 36 70 05
        ;   ^ arg hWnd
        ; --> DESTROYWINDOW(HWND hWnd) -> BOOL
        call    far USER.DESTROYWINDOW          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x570], 0             ; C7 06 70 05 00 00
        push    word ptr [0x574]                ; FF 36 74 05
        call    far USER.SETFOCUS               ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_74                   ; 9A FF FF 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 0x26                        ; 83 EC 26
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 8                           ; 3D 08 00
        jbe     L_01B2                          ; 76 03
        jmp     L_023D                          ; E9 8B 00
;   [conditional branch target (if/else)] L_01B2
L_01B2:
        cmp     ax, 7                           ; 3D 07 00
        jae     L_0232                          ; 73 7B
        cmp     ax, 5                           ; 3D 05 00
        jne     L_0216                          ; 75 5A
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_09C7                          ; E8 02 08
;   [loop start] L_01C5
L_01C5:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        jmp     L_0258                          ; E9 8A 00
;   [loop start] L_01CE
L_01CE:
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
        call    L_0690                          ; E8 AC 04
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hWnd
        lea     ax, [bp - 0x26]                 ; 8D 46 DA
        push    ss                              ; 16
        ;   ^ arg lpPaintStruct (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpPaintStruct (low/offset)
        ; --> ENDPAINT(HWND hWnd, LPVOID lpPaintStruct) -> BOOL
        call    far USER.ENDPAINT               ; 9A FF FF 00 00 [FIXUP]
        jmp     L_01C5                          ; EB D2
;   [loop start] L_01F3
L_01F3:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        lea     ax, [bp + 6]                    ; 8D 46 06
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0263                          ; E8 62 00
        jmp     L_01C5                          ; EB C2
;   [loop start] L_0203
L_0203:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_03A4                          ; E8 92 01
        or      ax, ax                          ; 0B C0
        je      L_01C5                          ; 74 AF
;   [loop start (also forward branch)] L_0216
L_0216:
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
        jmp     L_01C5                          ; EB 93
;   [conditional branch target (if/else)] L_0232
L_0232:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xc]             ; FF 76 0C
        call    L_05A1                          ; E8 66 03
        jmp     L_01C5                          ; EB 88
;   [unconditional branch target] L_023D
L_023D:
        cmp     ax, 0xf                         ; 3D 0F 00
        je      L_01CE                          ; 74 8C
        cmp     ax, 0x100                       ; 3D 00 01
        jb      L_0216                          ; 72 CF
        cmp     ax, 0x101                       ; 3D 01 01
        jbe     L_0203                          ; 76 B7
        cmp     ax, 0x200                       ; 3D 00 02
        jb      L_0216                          ; 72 C5
        cmp     ax, 0x202                       ; 3D 02 02
        jbe     L_01F3                          ; 76 9D
        jmp     L_0216                          ; EB BE
;   [unconditional branch target] L_0258
L_0258:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
; Description (heuristic):
;   Drawing routine (3 GDI APIs).
;   Acquires a device context, draws, releases.

;-------------------------------------------------------------------------
; sub_0263   offset=0x0263  size=103 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETDC(HWND hWnd) -> HDC
;   OFFSETRECT
;   RELEASECAPTURE
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCAPTURE
;   UPDATEWINDOW(HWND hWnd) -> BOOL
;
; Near calls (internal): L_063F
;-------------------------------------------------------------------------
;   [sub-routine] L_0263
L_0263:
        ;   = cProc <6> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 6                           ; 83 EC 06
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0x1172], ax           ; A3 72 11
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0x1174], ax           ; A3 74 11
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        mov     word ptr [0xc8a], ax            ; A3 8A 0C
        mov     ax, word ptr es:[bx + 2]        ; 26 8B 47 02
        mov     word ptr [0xc8c], ax            ; A3 8C 0C
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x200                       ; 3D 00 02
        je      L_02A0                          ; 74 13
        cmp     ax, 0x201                       ; 3D 01 02
        jne     L_0295                          ; 75 03
        jmp     L_035E                          ; E9 C9 00
;   [conditional branch target (if/else)] L_0295
L_0295:
        cmp     ax, 0x202                       ; 3D 02 02
        jne     L_029D                          ; 75 03
        jmp     L_0387                          ; E9 EA 00
;   [conditional branch target (if/else)] L_029D
L_029D:
        jmp     L_039E                          ; E9 FE 00
;   [conditional branch target (if/else)] L_02A0
L_02A0:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_02AA                          ; 7F 03
        jmp     L_039E                          ; E9 F4 00
;   [conditional branch target (if/else)] L_02AA
L_02AA:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    ax                              ; 50
        call    L_063F                          ; E8 86 03
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        sub     ax, word ptr [0x1172]           ; 2B 06 72 11
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        sub     ax, word ptr [0x1174]           ; 2B 06 74 11
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x1118]           ; 03 06 18 11
        mov     cx, word ptr [0x9e8]            ; 8B 0E E8 09
        add     cx, word ptr [0x9ec]            ; 03 0E EC 09
        cmp     ax, cx                          ; 3B C1
        jl      L_02ED                          ; 7C 0D
        mov     ax, word ptr [0x9e8]            ; A1 E8 09
        sub     ax, word ptr [0x1118]           ; 2B 06 18 11
        add     ax, word ptr [0x9ec]            ; 03 06 EC 09
        jmp     L_0301                          ; EB 14
;   [conditional branch target (if/else)] L_02ED
L_02ED:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        add     ax, word ptr [0x1114]           ; 03 06 14 11
        cmp     ax, word ptr [0x9e8]            ; 3B 06 E8 09
        jge     L_0304                          ; 7D 0A
        mov     ax, word ptr [0x9e8]            ; A1 E8 09
        sub     ax, word ptr [0x1114]           ; 2B 06 14 11
;   [unconditional branch target] L_0301
L_0301:
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_0304
L_0304:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x111a]           ; 03 06 1A 11
        mov     cx, word ptr [0x9ea]            ; 8B 0E EA 09
        add     cx, word ptr [0x9ee]            ; 03 0E EE 09
        cmp     ax, cx                          ; 3B C1
        jl      L_0324                          ; 7C 0D
        mov     ax, word ptr [0x9ea]            ; A1 EA 09
        sub     ax, word ptr [0x111a]           ; 2B 06 1A 11
        add     ax, word ptr [0x9ee]            ; 03 06 EE 09
        jmp     L_0338                          ; EB 14
;   [conditional branch target (if/else)] L_0324
L_0324:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        cmp     ax, word ptr [0x9ea]            ; 3B 06 EA 09
        jge     L_033B                          ; 7D 0A
        mov     ax, word ptr [0x9ea]            ; A1 EA 09
        sub     ax, word ptr [0x1116]           ; 2B 06 16 11
;   [unconditional branch target] L_0338
L_0338:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_033B
L_033B:
        mov     ax, 0x1114                      ; B8 14 11
        push    ds                              ; 1E
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        call    far USER.OFFSETRECT             ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 2]               ; FF 76 FE
        call    L_063F                          ; E8 EE 02
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        push    word ptr [bp - 2]               ; FF 76 FE
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_039E                          ; EB 40
;   [unconditional branch target] L_035E
L_035E:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        ;   ^ arg hWnd
        ; --> UPDATEWINDOW(HWND hWnd) -> BOOL
        call    far USER.UPDATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_0381                          ; 75 14
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SETCAPTURE             ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xc8a]            ; A1 8A 0C
        mov     word ptr [0xbf0], ax            ; A3 F0 0B
        mov     ax, word ptr [0xc8c]            ; A1 8C 0C
        mov     word ptr [0xbf2], ax            ; A3 F2 0B
;   [conditional branch target (if/else)] L_0381
L_0381:
        inc     word ptr [0x878]                ; FF 06 78 08
        jmp     L_039E                          ; EB 17
;   [unconditional branch target] L_0387
L_0387:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_039E                          ; 7E 10
        dec     word ptr [0x878]                ; FF 0E 78 08
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jne     L_039E                          ; 75 05
        call    far USER.RELEASECAPTURE         ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_039E
L_039E:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: CLIENTTOSCREEN, GETCURSORPOS, GETKEYSTATE (+3 more).

;-------------------------------------------------------------------------
; sub_03A4   offset=0x03A4  size=168 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CLIENTTOSCREEN
;   GETCURSORPOS
;   GETKEYSTATE
;   GETPARENT
;   SCREENTOCLIENT
;   SETCURSORPOS
;
; Near calls (internal): L_0263
;-------------------------------------------------------------------------
;   [sub-routine] L_03A4
L_03A4:
        ;   = cProc <10> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0xa                         ; 83 EC 0A
        mov     ax, word ptr [0x10c0]           ; A1 C0 10
        cmp     word ptr [bp + 8], ax           ; 39 46 08
        je      L_03BE                          ; 74 0C
        mov     word ptr [0x55c], 1             ; C7 06 5C 05 01 00
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x10c0], ax           ; A3 C0 10
;   [conditional branch target (if/else)] L_03BE
L_03BE:
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.GETCURSORPOS           ; 9A D6 05 00 00 [FIXUP]
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.SCREENTOCLIENT         ; 9A E3 05 00 00 [FIXUP]
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0xd                         ; 3D 0D 00
        je      L_044D                          ; 74 66
        jbe     L_03EC                          ; 76 03
        jmp     L_057E                          ; E9 92 01
;   [conditional branch target (if/else)] L_03EC
L_03EC:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_03F4                          ; 75 03
        jmp     L_0519                          ; E9 25 01
;   [conditional branch target (if/else)] L_03F4
L_03F4:
        jmp     L_041B                          ; EB 25
;   [loop start] L_03F6
L_03F6:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0409                          ; 7D 0D
        mov     word ptr [0x556], 0             ; C7 06 56 05 00 00
        mov     word ptr [bp - 6], 0x202        ; C7 46 FA 02 02
        jmp     L_041B                          ; EB 12
;   [conditional branch target (if/else)] L_0409
L_0409:
        cmp     word ptr [0x556], 0             ; 83 3E 56 05 00
        jne     L_041B                          ; 75 0B
        mov     word ptr [0x556], 1             ; C7 06 56 05 01 00
        mov     word ptr [bp - 6], 0x201        ; C7 46 FA 01 02
;   [loop start (also forward branch)] L_041B
L_041B:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     word ptr [0x10c0], ax           ; A3 C0 10
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0435                          ; 74 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_0263                          ; E8 2E FE
;   [conditional branch target (if/else)] L_0435
L_0435:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_043E                          ; 74 03
        jmp     L_0599                          ; E9 5B 01
;   [conditional branch target (if/else)] L_043E
L_043E:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0447                          ; 74 03
        jmp     L_0599                          ; E9 52 01
;   [conditional branch target (if/else)] L_0447
L_0447:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_059B                          ; E9 4E 01
;   [conditional branch target (if/else)] L_044D
L_044D:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_045B                          ; 7D 08
        mov     word ptr [0x558], 0             ; C7 06 58 05 00 00
        jmp     L_041B                          ; EB C0
;   [conditional branch target (if/else)] L_045B
L_045B:
        cmp     word ptr [0x558], 0             ; 83 3E 58 05 00
        jne     L_041B                          ; 75 B9
        mov     word ptr [bp - 4], 1            ; C7 46 FC 01 00
        mov     word ptr [0x558], 1             ; C7 06 58 05 01 00
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jg      L_041B                          ; 7F A7
        push    word ptr [0x574]                ; FF 36 74 05
        call    far _entry_77                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_041B                          ; EB 9C
;   [loop start] L_047F
L_047F:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_0488                          ; 7D 03
        jmp     L_0510                          ; E9 88 00
;   [conditional branch target (if/else)] L_0488
L_0488:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     ax, 0x25                        ; 3D 25 00
        je      L_04C0                          ; 74 30
        cmp     ax, 0x26                        ; 3D 26 00
        je      L_04A1                          ; 74 0C
        cmp     ax, 0x27                        ; 3D 27 00
        je      L_04C8                          ; 74 2E
        cmp     ax, 0x28                        ; 3D 28 00
        je      L_04B8                          ; 74 19
        jmp     L_04A7                          ; EB 06
;   [conditional branch target (if/else)] L_04A1
L_04A1:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        sub     word ptr [bp - 8], ax           ; 29 46 F8
;   [loop start (also forward branch)] L_04A7
L_04A7:
        inc     word ptr [0x55c]                ; FF 06 5C 05
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jge     L_04D0                          ; 7D 1F
        mov     word ptr [bp - 0xa], 0          ; C7 46 F6 00 00
        jmp     L_04DC                          ; EB 24
;   [conditional branch target (if/else)] L_04B8
L_04B8:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        add     word ptr [bp - 8], ax           ; 01 46 F8
        jmp     L_04A7                          ; EB E7
;   [conditional branch target (if/else)] L_04C0
L_04C0:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        sub     word ptr [bp - 0xa], ax         ; 29 46 F6
        jmp     L_04A7                          ; EB DF
;   [conditional branch target (if/else)] L_04C8
L_04C8:
        mov     ax, word ptr [0x55c]            ; A1 5C 05
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        jmp     L_04A7                          ; EB D7
;   [conditional branch target (if/else)] L_04D0
L_04D0:
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 0xa], ax         ; 39 46 F6
        jl      L_04DC                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [branch target] L_04DC
L_04DC:
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        jge     L_04E9                          ; 7D 07
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        jmp     L_04F5                          ; EB 0C
;   [conditional branch target (if/else)] L_04E9
L_04E9:
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 8], ax           ; 39 46 F8
        jl      L_04F5                          ; 7C 04
        dec     ax                              ; 48
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [branch target] L_04F5
L_04F5:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A 2A 06 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far USER.SETCURSORPOS           ; 9A 35 06 00 00 [FIXUP]
        jmp     L_041B                          ; E9 0B FF
;   [unconditional branch target] L_0510
L_0510:
        mov     word ptr [0x55c], 1             ; C7 06 5C 05 01 00
        jmp     L_041B                          ; E9 02 FF
;   [unconditional branch target] L_0519
L_0519:
        cmp     word ptr [0x878], 0             ; 83 3E 78 08 00
        jle     L_0523                          ; 7E 03
        jmp     L_041B                          ; E9 F8 FE
;   [conditional branch target (if/else)] L_0523
L_0523:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jge     L_052C                          ; 7D 03
        jmp     L_041B                          ; E9 EF FE
;   [conditional branch target (if/else)] L_052C
L_052C:
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        ; constant VK_SHIFT
        mov     ax, 0x10                        ; B8 10 00
        push    ax                              ; 50
        call    far USER.GETKEYSTATE            ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jl      L_0551                          ; 7C 10
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 0x18         ; 83 7E FE 18
        jl      L_055F                          ; 7C 15
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
        jmp     L_055F                          ; EB 0E
;   [conditional branch target (if/else)] L_0551
L_0551:
        dec     word ptr [bp - 2]               ; FF 4E FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jge     L_055F                          ; 7D 05
        mov     word ptr [bp - 2], 0x17         ; C7 46 FE 17 00
;   [branch target] L_055F
L_055F:
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.GETPARENT              ; 9A 69 05 00 00 [FIXUP]
        push    ax                              ; 50
        call    far USER.GETPARENT              ; 9A FF FF 00 00 [FIXUP]
        push    ax                              ; 50
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far _entry_48                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], 0x200        ; C7 46 FA 00 02
        jmp     L_041B                          ; E9 9D FE
;   [unconditional branch target] L_057E
L_057E:
        cmp     ax, 0x20                        ; 3D 20 00
        jne     L_0586                          ; 75 03
        jmp     L_03F6                          ; E9 70 FE
;   [conditional branch target (if/else)] L_0586
L_0586:
        cmp     ax, 0x25                        ; 3D 25 00
        jae     L_058E                          ; 73 03
        jmp     L_041B                          ; E9 8D FE
;   [conditional branch target (if/else)] L_058E
L_058E:
        cmp     ax, 0x28                        ; 3D 28 00
        ja      L_0596                          ; 77 03
        jmp     L_047F                          ; E9 E9 FE
;   [conditional branch target (if/else)] L_0596
L_0596:
        jmp     L_041B                          ; E9 82 FE
;   [fall-through exit] L_0599
L_0599:
        sub     ax, ax                          ; 2B C0
;   [fall-through exit] L_059B
L_059B:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
; Description (heuristic):
;   Mixed routine using: CLIENTTOSCREEN, GETCURSORPOS, GETSYSTEMMETRICS (+3 more).

;-------------------------------------------------------------------------
; sub_05A1   offset=0x05A1  size=60 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   CLIENTTOSCREEN
;   GETCURSORPOS
;   GETSYSTEMMETRICS
;   SCREENTOCLIENT
;   SETCURSORPOS
;   SHOWCURSOR
;-------------------------------------------------------------------------
;   [sub-routine] L_05A1
L_05A1:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        mov     ax, 0x13                        ; B8 13 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_05B7                          ; 74 03
        jmp     L_0639                          ; E9 82 00
;   [conditional branch target (if/else)] L_05B7
L_05B7:
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_05C2                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05C4                          ; EB 02
;   [conditional branch target (if/else)] L_05C2
L_05C2:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05C4
L_05C4:
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp + 4], 7            ; 83 7E 04 07
        jne     L_0639                          ; 75 69
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
        jl      L_0603                          ; 7C 16
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_0603                          ; 7D 0E
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jl      L_0603                          ; 7C 08
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        cmp     word ptr [bp - 2], ax           ; 39 46 FE
        jl      L_0639                          ; 7C 36
;   [conditional branch target (if/else)] L_0603
L_0603:
        mov     ax, word ptr [0x1114]           ; A1 14 11
        add     ax, word ptr [0x1118]           ; 03 06 18 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x1116]           ; A1 16 11
        add     ax, word ptr [0x111a]           ; 03 06 1A 11
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 6]               ; FF 76 06
        lea     ax, [bp - 4]                    ; 8D 46 FC
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_0639
L_0639:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: GETSTOCKOBJECT, RECTANGLE, SELECTOBJECT (+1 more).

;-------------------------------------------------------------------------
; sub_063F   offset=0x063F  size=27 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETROP2
;-------------------------------------------------------------------------
;   [sub-routine] L_063F
L_063F:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SETROP2                 ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        mov     ax, 7                           ; B8 07 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A 68 06 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A 6E 06 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        ;   ^ arg iObject
        ; --> GETSTOCKOBJECT(INT iObject) -> HANDLE
        call    far GDI.GETSTOCKOBJECT          ; 9A AC 06 00 00 [FIXUP]
        push    ax                              ; 50
        ; --> SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
        call    far GDI.SELECTOBJECT            ; 9A B2 06 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg hDC
        push    word ptr [0x1114]               ; FF 36 14 11
        ;   ^ arg left
        push    word ptr [0x1116]               ; FF 36 16 11
        ;   ^ arg top
        push    word ptr [0x1118]               ; FF 36 18 11
        ;   ^ arg right
        push    word ptr [0x111a]               ; FF 36 1A 11
        ;   ^ arg bottom
        ; --> RECTANGLE(HDC hDC, INT left, INT top, INT right, INT bottom) -> BOOL
        call    far GDI.RECTANGLE               ; 9A FF FF 00 00 [FIXUP]
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
; Inferred stack frame (pass18, heuristic):
;   Arguments:
;     [bp+0x4]  HDC       (1 use)

; Description (heuristic):
;   Mixed routine using: BITBLT, CREATEBITMAP, DELETEDC (+9 more).

;-------------------------------------------------------------------------
; sub_0690   offset=0x0690  size=303 instr  segment=seg7.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
;   CREATEBITMAP(INT nWidth, INT nHeight, WORD nPlanes, WORD nBitCount, LPVOID lpBits) -> HBITMAP
;   DELETEDC(HDC hDC) -> BOOL
;   GETSTOCKOBJECT(INT iObject) -> HANDLE
;   PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
;   SELECTOBJECT(HDC hDC, HANDLE hObj) -> HANDLE
;   SETBITMAPBITS
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;   SETCURSOR
;
; Near calls (internal): L_063F
;-------------------------------------------------------------------------
;   [sub-routine] L_0690
L_0690:
        ;   = cProc <36> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x24                        ; 83 EC 24
        push    di                              ; 57
        push    si                              ; 56
        push    word ptr [0x3c8]                ; FF 36 C8 03
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        push    word ptr [bp + 4]               ; FF 76 04
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
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
        push    ax                              ; 50
        ;   ^ arg y
        push    word ptr [0xda8]                ; FF 36 A8 0D
        ;   ^ arg nWidth
        push    word ptr [0xdb4]                ; FF 36 B4 0D
        ;   ^ arg nHeight
        mov     ax, 0x21                        ; B8 21 00
        mov     dx, 0xf0                        ; BA F0 00
        push    dx                              ; 52
        ;   ^ arg dwRop (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwRop (low/offset)
        ; --> PATBLT(HDC hDC, INT x, INT y, INT nWidth, INT nHeight, DWORD dwRop) -> BOOL
        call    far GDI.PATBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        add     ax, 7                           ; 05 07 00
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        ; constant WM_MOVE
        mov     cx, 3                           ; B9 03 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0x1e], 0x10      ; C7 46 E2 10 00
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        mov     cx, 4                           ; B9 04 00
        sar     ax, cl                          ; D3 F8
        xor     ax, dx                          ; 33 C2
        sub     ax, dx                          ; 2B C2
        jmp     L_0735                          ; EB 34
;   [loop start] L_0701
L_0701:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_070D                          ; 74 06
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_0775                          ; 75 68
;   [conditional branch target (if/else)] L_070D
L_070D:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_071B                          ; 74 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 95 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_071B
L_071B:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_0729                          ; 74 08
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_19                   ; 9A A3 07 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0729
L_0729:
        inc     word ptr [bp - 0x1e]            ; FF 46 E2
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        mov     cx, word ptr [bp - 0x1e]        ; 8B 4E E2
        idiv    cx                              ; F7 F9
;   [unconditional branch target] L_0735
L_0735:
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 16 08 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
        call    far KERNEL.GLOBALALLOC          ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        ;   ^ arg nWidth
        push    word ptr [bp - 0x1a]            ; FF 76 E6
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
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        jne     L_0701                          ; 75 8C
;   [conditional branch target (if/else)] L_0775
L_0775:
        cmp     word ptr [bp - 0x1a], 0         ; 83 7E E6 00
        je      L_078B                          ; 74 10
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        jmp     L_07C0                          ; EB 35
;   [conditional branch target (if/else)] L_078B
L_078B:
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_0799                          ; 74 08
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A A5 09 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0799
L_0799:
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        je      L_07AD                          ; 74 0E
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_19                   ; 9A AD 09 00 00 [FIXUP]
        mov     ax, word ptr [0xc90]            ; A1 90 0C
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_07AD
L_07AD:
        mov     word ptr [bp - 0x16], 0         ; C7 46 EA 00 00
        mov     ax, 0xca6                       ; B8 A6 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], ds         ; 8C 5E F4
        mov     word ptr [bp - 0x1a], 1         ; C7 46 E6 01 00
;   [unconditional branch target] L_07C0
L_07C0:
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_27                   ; 9A 61 00 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        mov     word ptr [bp - 8], 0x20         ; C7 46 F8 20 00
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0980                          ; E9 A3 01
;   [loop start] L_07DD
L_07DD:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        cmp     ax, word ptr [0xc76]            ; 3B 06 76 0C
        jle     L_07F2                          ; 7E 09
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
;   [conditional branch target (if/else)] L_07F2
L_07F2:
        call    far _entry_84                   ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1c], ax        ; 89 46 E4
        push    ax                              ; 50
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_83                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 36 08 00 00 [FIXUP]
        add     word ptr [bp - 8], ax           ; 01 46 F8
        adc     word ptr [bp - 6], dx           ; 11 56 FA
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 58 08 00 00 [FIXUP]
        push    ax                              ; 50
        call    far _entry_82                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x1c]            ; FF 76 E4
        call    far _entry_43                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_29                   ; 9A 93 08 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far GDI.SETBITMAPBITS           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A A6 08 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A DC 08 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A BC 08 00 00 [FIXUP]
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     cx, 2                           ; B9 02 00
        sub     bx, bx                          ; 2B DB
        push    bx                              ; 53
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        call    far _entry_28                   ; 9A F1 08 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     word ptr [bp - 0x24], cx        ; 89 4E DC
        mov     word ptr [bp - 0x22], bx        ; 89 5E DE
        call    far _entry_29                   ; 9A 43 09 00 00 [FIXUP]
        add     ax, word ptr [bp - 0x24]        ; 03 46 DC
        adc     dx, word ptr [bp - 0x22]        ; 13 56 DE
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 28 09 00 00 [FIXUP]
        sub     ax, si                          ; 2B C6
        mov     word ptr [bp - 0x18], ax        ; 89 46 E8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        push    word ptr [0x9ec]                ; FF 36 EC 09
        push    ax                              ; 50
        push    word ptr [0xbfe]                ; FF 36 FE 0B
        push    word ptr [bp - 0x1a]            ; FF 76 E6
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_113                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 4]               ; FF 76 04
        push    word ptr [0x9e8]                ; FF 36 E8 09
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 56 09 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 0C 0A 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A F1 09 00 00 [FIXUP]
        add     ax, word ptr [0x9ea]            ; 03 06 EA 09
        push    ax                              ; 50
        push    word ptr [0x9ec]                ; FF 36 EC 09
        push    word ptr [bp - 0x18]            ; FF 76 E8
        push    word ptr [bp - 0x14]            ; FF 76 EC
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        mov     ax, 0x20                        ; B8 20 00
        mov     dx, 0xcc                        ; BA CC 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; --> BITBLT(HDC hDCDest, INT x, INT y, INT nWidth, INT nHeight, HDC hDCSrc, INT xSrc, INT ySrc, DWORD dwRop) -> BOOL
        call    far GDI.BITBLT                  ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 4], ax           ; 01 46 FC
;   [unconditional branch target] L_0980
L_0980:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jge     L_098B                          ; 7D 03
        jmp     L_07DD                          ; E9 52 FE
;   [conditional branch target (if/else)] L_098B
L_098B:
        push    word ptr [bp - 0x14]            ; FF 76 EC
        ;   ^ arg hDC
        ; --> DELETEDC(HDC hDC) -> BOOL
        call    far GDI.DELETEDC                ; 9A 64 01 00 00 [FIXUP]
        cmp     word ptr [bp - 0x16], 0         ; 83 7E EA 00
        je      L_09B1                          ; 74 18
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0x16]            ; FF 76 EA
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        call    far _entry_19                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_09B1
L_09B1:
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_063F                          ; E8 88 FC
        push    word ptr [bp - 2]               ; FF 76 FE
        call    far USER.SETCURSOR              ; 9A 9D 06 00 00 [FIXUP]
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     4                               ; C2 04 00
; Description (heuristic):
;   Pure computation / dispatcher (232 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_09C7   offset=0x09C7  size=232 instr  segment=seg7.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_09C7
L_09C7:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    di                              ; 57
        push    si                              ; 56
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        cdq                                     ; 99
        mov     word ptr [0x9f0], ax            ; A3 F0 09
        mov     word ptr [0x9f2], dx            ; 89 16 F2 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cdq                                     ; 99
        mov     word ptr [0x9f4], ax            ; A3 F4 09
        mov     word ptr [0x9f6], dx            ; 89 16 F6 09
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 1F 0A 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 58 0A 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 3D 0A 00 00 [FIXUP]
        cmp     ax, word ptr [bp + 4]           ; 3B 46 04
        jg      L_0A89                          ; 7F 61
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x9ec], ax            ; A3 EC 09
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 6B 0A 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 96 00 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 77 00 00 00 [FIXUP]
        mov     word ptr [0x9ee], ax            ; A3 EE 09
        mov     word ptr [0x9e8], 0             ; C7 06 E8 09 00 00
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        sub     ax, word ptr [0x9ee]            ; 2B 06 EE 09
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x9ea], ax            ; A3 EA 09
        jmp     L_0AFE                          ; EB 75
;   [conditional branch target (if/else)] L_0A89
L_0A89:
        mov     ax, word ptr [0xc76]            ; A1 76 0C
        cdq                                     ; 99
        mov     word ptr [0x9f0], ax            ; A3 F0 09
        mov     word ptr [0x9f2], dx            ; 89 16 F2 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        cdq                                     ; 99
        mov     word ptr [0x9f4], ax            ; A3 F4 09
        mov     word ptr [0x9f6], dx            ; 89 16 F6 09
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A DC 0A 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xbfe]            ; A1 FE 0B
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 28 0B 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 0D 0B 00 00 [FIXUP]
        mov     word ptr [0x9ec], ax            ; A3 EC 09
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x9ee], ax            ; A3 EE 09
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     ax, word ptr [0x9ec]            ; 2B 06 EC 09
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [0x9e8], ax            ; A3 E8 09
        mov     word ptr [0x9ea], 0             ; C7 06 EA 09 00 00
;   [unconditional branch target] L_0AFE
L_0AFE:
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 3B 0B 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xc84]            ; A1 84 0C
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 70 0B 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 55 0B 00 00 [FIXUP]
        add     ax, word ptr [0x9e8]            ; 03 06 E8 09
        mov     word ptr [0x1114], ax           ; A3 14 11
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 83 0B 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xc8e]            ; A1 8E 0C
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A B8 0B 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 9D 0B 00 00 [FIXUP]
        add     ax, word ptr [0x9ea]            ; 03 06 EA 09
        mov     word ptr [0x1116], ax           ; A3 16 11
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A CB 0B 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xda8]            ; A1 A8 0D
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 00 0C 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A E5 0B 00 00 [FIXUP]
        add     ax, word ptr [0x1114]           ; 03 06 14 11
        mov     word ptr [0x1118], ax           ; A3 18 11
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        mov     ax, 2                           ; B8 02 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_28                   ; 9A 13 0C 00 00 [FIXUP]
        mov     cx, ax                          ; 8B C8
        mov     ax, word ptr [0xdb4]            ; A1 B4 0D
        mov     bx, dx                          ; 8B DA
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f6]                ; FF 36 F6 09
        push    word ptr [0x9f4]                ; FF 36 F4 09
        mov     si, cx                          ; 8B F1
        mov     di, bx                          ; 8B FB
        call    far _entry_29                   ; 9A 49 07 00 00 [FIXUP]
        add     ax, si                          ; 03 C6
        adc     dx, di                          ; 13 D7
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x9f2]                ; FF 36 F2 09
        push    word ptr [0x9f0]                ; FF 36 F0 09
        call    far _entry_28                   ; 9A 78 08 00 00 [FIXUP]
        add     ax, word ptr [0x1116]           ; 03 06 16 11
        mov     word ptr [0x111a], ax           ; A3 1A 11
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      004h                            ; 04

PAINT_TEXT ENDS

        END
