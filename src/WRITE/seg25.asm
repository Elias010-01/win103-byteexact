; ======================================================================
; WRITE / seg25.asm   (segment 25 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         2
; Total instructions:                  504
; 
; Classification (pass8):
;   C-origin (high+medium):              2
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     5 (5 unique)
;   Top:
;        1  ISDLGBUTTONCHECKED
;        1  DIALOGBOX
;        1  ENABLEWINDOW
;        1  ENDDIALOG
;        1  SHOWCURSOR
; ======================================================================
; AUTO-GENERATED from original WRITE segment 25
; segment_size=1675 bytes, flags=0xf130
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
        sub     sp, 0xe                         ; 83 EC 0E
        lea     ax, [bp - 0xe]                  ; 8D 46 F2
        mov     word ptr [0x1234], ax           ; A3 34 12
        push    word ptr [0x782]                ; FF 36 82 07
        mov     ax, 7                           ; B8 07 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [0x780]                ; FF 36 80 07
        push    word ptr [0x1216]               ; FF 36 16 12
        push    word ptr [0x1214]               ; FF 36 14 12
        call    far _entry_93                   ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, 0xffff                      ; 3D FF FF
        jne     L_0036                          ; 75 03
        jmp     L_00D0                          ; E9 9A 00
;   [conditional branch target (if/else)] L_0036
L_0036:
        cmp     ax, 1                           ; 3D 01 00
        je      L_003E                          ; 74 03
        jmp     L_00D9                          ; E9 9B 00
;   [conditional branch target (if/else)] L_003E
L_003E:
        call    far _entry_92                   ; 9A 5E 02 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_004D                          ; 74 03
        jmp     L_00D9                          ; E9 8C 00
;   [conditional branch target (if/else)] L_004D
L_004D:
        cmp     word ptr [0x56], 0              ; 83 3E 56 00 00
        je      L_008E                          ; 74 3A
        mov     ax, 0x1be2                      ; B8 E2 1B
        push    ax                              ; 50
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ax                              ; 50
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far _entry_45                   ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x2a                        ; B8 2A 00
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    word ptr [0x12b4]               ; FF 36 B4 12
        call    far _entry_89                   ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0xffff                      ; B8 FF FF
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_37                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_008E
L_008E:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_91                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x56], 0              ; 83 3E 56 00 00
        je      L_00D9                          ; 74 38
        cmp     word ptr [0x6c], 0              ; 83 3E 6C 00 00
        je      L_00D9                          ; 74 31
        call    far _entry_103                  ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_102                  ; 9A FA 01 00 00 [FIXUP]
        push    word ptr [bp - 0xa]             ; FF 76 F6
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 8]               ; FF 76 F8
        call    far _entry_97                   ; 9A 16 02 00 00 [FIXUP]
        mov     word ptr [0x7a], 1              ; C7 06 7A 00 01 00
        call    far _entry_39                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_00D9                          ; EB 09
;   [unconditional branch target] L_00D0
L_00D0:
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        call    far _entry_47                   ; 9A 57 02 00 00 [FIXUP]
;   [branch target] L_00D9
L_00D9:
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
        sub     sp, 4                           ; 83 EC 04
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_0143                          ; 74 46
        cmp     ax, 9                           ; 3D 09 00
        je      L_0130                          ; 74 2E
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_010E                          ; 74 07
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0160                          ; 74 54
        jmp     L_013F                          ; EB 31
;   [conditional branch target (if/else)] L_010E
L_010E:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_55                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     ax, word ptr [0x56]             ; A1 56 00
;   [loop start] L_0123
L_0123:
        mov     word ptr [bx], ax               ; 89 07
        push    ax                              ; 50
        call    far USER.CHECKDLGBUTTON         ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_012B
L_012B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01AC                          ; EB 7C
;   [conditional branch target (if/else)] L_0130
L_0130:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_013F                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 4D 03 00 00 [FIXUP]
;   [loop start (also forward branch)] L_013F
L_013F:
        sub     ax, ax                          ; 2B C0
        jmp     L_01AC                          ; EB 69
;   [conditional branch target (if/else)] L_0143
L_0143:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_014F                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
;   [conditional branch target (if/else)] L_014F
L_014F:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_013F                          ; 74 E9
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A D5 03 00 00 [FIXUP]
        jmp     L_013F                          ; EB DF
;   [conditional branch target (if/else)] L_0160
L_0160:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_0174                          ; 74 0C
        cmp     ax, 2                           ; 3D 02 00
        je      L_0183                          ; 74 16
        cmp     ax, 3                           ; 3D 03 00
        je      L_0190                          ; 74 1E
        jmp     L_013F                          ; EB CB
;-------------------------------------------------------------------------
; sub_0174   offset=0x0174  size=9 instr  segment=seg25.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   ISDLGBUTTONCHECKED
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0174
L_0174:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        call    far USER.ISDLGBUTTONCHECKED     ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x56], ax             ; A3 56 00
;   [conditional branch target (if/else)] L_0183
L_0183:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far _entry_59                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_012B                          ; EB 9B
;-------------------------------------------------------------------------
; sub_0190   offset=0x0190  size=495 instr  segment=seg25.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;
; Far API calls:
;   DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
;   ENABLEWINDOW
;   ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
;   SHOWCURSOR
;-------------------------------------------------------------------------
;   [conditional branch target (if/else)] L_0190
L_0190:
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        push    ax                              ; 50
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx], 0                ; 83 3F 00
        jne     L_01A4                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01A6                          ; EB 02
;   [conditional branch target (if/else)] L_01A4
L_01A4:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_01A6
L_01A6:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        jmp     L_0123                          ; E9 77 FF
;   [unconditional branch target] L_01AC
L_01AC:
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
        sub     sp, 8                           ; 83 EC 08
        push    si                              ; 56
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     bx, ax                          ; 8B D8
        mov     bx, word ptr [bx + 4]           ; 8B 5F 04
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     si, ax                          ; 8B F0
        mov     si, word ptr [si]               ; 8B 34
        mov     si, word ptr [si]               ; 8B 34
        mov     ax, word ptr [bx + si]          ; 8B 00
        mov     dx, word ptr [bx + si + 2]      ; 8B 50 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 7A 03 00 00 [FIXUP]
        call    far _entry_102                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_100                  ; 9A 29 03 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A 30 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_99                   ; 9A 3B 03 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_0234                          ; 74 08
;   [loop start] L_022C
L_022C:
        mov     word ptr [0x6c], 1              ; C7 06 6C 00 01 00
        jmp     L_027C                          ; EB 48
;   [conditional branch target (if/else)] L_0234
L_0234:
        push    word ptr [0x782]                ; FF 36 82 07
        ;   ^ arg hInstance
        mov     ax, 9                           ; B8 09 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x780]                ; FF 36 80 07
        ;   ^ arg hWndOwner
        push    word ptr [0x1134]               ; FF 36 34 11
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [0x1132]               ; FF 36 32 11
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_025D                          ; 75 0B
        mov     ax, 0x2013                      ; B8 13 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_022C                          ; EB CF
;   [conditional branch target (if/else)] L_025D
L_025D:
        call    far _entry_92                   ; 9A FF FF 00 00 [FIXUP]
        call    far _entry_69                   ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_022C                          ; 75 BE
        mov     bx, word ptr [bp - 8]           ; 8B 5E F8
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_027C                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_027E                          ; EB 02
;   [branch target] L_027C
L_027C:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_027E
L_027E:
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
        sub     sp, 0xa                         ; 83 EC 0A
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [0x1234]           ; 8B 36 34 12
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        jne     L_02A6                          ; 75 03
        jmp     L_03BE                          ; E9 18 01
;   [conditional branch target (if/else)] L_02A6
L_02A6:
        cmp     ax, 9                           ; 3D 09 00
        jne     L_02AE                          ; 75 03
        jmp     L_033F                          ; E9 91 00
;   [conditional branch target (if/else)] L_02AE
L_02AE:
        cmp     ax, 0x10                        ; 3D 10 00
        jne     L_02B6                          ; 75 03
        jmp     L_03DE                          ; E9 28 01
;   [conditional branch target (if/else)] L_02B6
L_02B6:
        cmp     ax, 0x110                       ; 3D 10 01
        je      L_02ED                          ; 74 32
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_02C3                          ; 74 03
        jmp     L_03D9                          ; E9 16 01
;   [conditional branch target (if/else)] L_02C3
L_02C3:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        jne     L_02CE                          ; 75 03
        jmp     L_03E3                          ; E9 15 01
;   [conditional branch target (if/else)] L_02CE
L_02CE:
        cmp     ax, 2                           ; 3D 02 00
        jne     L_02D6                          ; 75 03
        jmp     L_03DE                          ; E9 08 01
;   [conditional branch target (if/else)] L_02D6
L_02D6:
        cmp     ax, 5                           ; 3D 05 00
        je      L_02E2                          ; 74 07
        cmp     ax, 6                           ; 3D 06 00
        je      L_02F8                          ; 74 18
        jmp     L_033F                          ; EB 5D
;   [conditional branch target (if/else)] L_02E2
L_02E2:
        cmp     word ptr [si + 4], 1            ; 83 7C 04 01
        jne     L_02F3                          ; 75 0B
        call    far _entry_101                  ; 9A 01 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02ED
L_02ED:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0485                          ; E9 92 01
;   [conditional branch target (if/else)] L_02F3
L_02F3:
        dec     word ptr [si + 4]               ; FF 4C 04
        jmp     L_030A                          ; EB 12
;   [conditional branch target (if/else)] L_02F8
L_02F8:
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     word ptr [si + 4], ax           ; 39 44 04
        jne     L_0307                          ; 75 07
        call    far _entry_101                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_033F                          ; EB 38
;   [conditional branch target (if/else)] L_0307
L_0307:
        inc     word ptr [si + 4]               ; FF 44 04
;   [unconditional branch target] L_030A
L_030A:
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     dx, word ptr [bx + di + 2]      ; 8B 51 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        call    far _entry_100                  ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A B8 03 00 00 [FIXUP]
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_99                   ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_033F
L_033F:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        jne     L_0348                          ; 75 03
        jmp     L_03D9                          ; E9 91 00
;   [conditional branch target (if/else)] L_0348
L_0348:
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_03D9                          ; E9 85 00
;   [loop start] L_0354
L_0354:
        sub     ax, ax                          ; 2B C0
;   [loop start] L_0356
L_0356:
        push    ax                              ; 50
        call    far _entry_98                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     bx, word ptr [si + 2]           ; 8B 5C 02
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di]               ; 8B 3D
        push    word ptr [bx + di + 2]          ; FF 71 02
        push    word ptr [bx + di]              ; FF 31
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, word ptr [si + 6]           ; 8B 5C 06
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 6                           ; B8 06 00
        imul    word ptr [si + 8]               ; F7 6C 08
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     dx, word ptr [bp - 4]           ; 8B 56 FC
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        mov     word ptr [bx + di + 6], ax      ; 89 41 06
        mov     word ptr [bx + di + 8], dx      ; 89 51 08
;   [loop start] L_039D
L_039D:
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     dx, word ptr [bx + di + 2]      ; 8B 51 02
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A FF FF 00 00 [FIXUP]
        jmp     L_033F                          ; EB 81
;   [unconditional branch target] L_03BE
L_03BE:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_03CA                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
;   [conditional branch target (if/else)] L_03CA
L_03CA:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_03D9                          ; 74 08
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_03D9
L_03D9:
        sub     ax, ax                          ; 2B C0
        jmp     L_0485                          ; E9 A7 00
;   [unconditional branch target] L_03DE
L_03DE:
        mov     word ptr [si + 0xa], 1          ; C7 44 0A 01 00
;   [unconditional branch target] L_03E3
L_03E3:
        push    word ptr [0x780]                ; FF 36 80 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 03 04 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A 49 06 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 3E 06 00 00 [FIXUP]
        mov     word ptr [0x7aa], 0             ; C7 06 AA 07 00 00
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A F3 05 00 00 [FIXUP]
        cmp     word ptr [si + 0xa], 0          ; 83 7C 0A 00
        jne     L_039D                          ; 75 81
        mov     ax, word ptr [si + 2]           ; 8B 44 02
        cmp     word ptr [si + 4], ax           ; 39 44 04
        jne     L_0427                          ; 75 03
        jmp     L_039D                          ; E9 76 FF
;   [conditional branch target (if/else)] L_0427
L_0427:
        mov     byte ptr [bp - 0xa], 0xc        ; C6 46 F6 0C
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     bx, word ptr [si + 4]           ; 8B 5C 04
        mov     cl, 4                           ; B1 04
        shl     bx, cl                          ; D3 E3
        mov     di, word ptr [si]               ; 8B 3C
        mov     di, word ptr [di]               ; 8B 3D
        mov     ax, word ptr [bx + di]          ; 8B 01
        mov     dx, word ptr [bx + di + 2]      ; 8B 51 02
        add     word ptr [bx + di], 1           ; 83 01 01
        adc     word ptr [bx + di + 2], 0       ; 83 51 02 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_32                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp - 4]               ; FF 76 FC
        push    word ptr [bp - 6]               ; FF 76 FA
        lea     ax, [bp - 0xa]                  ; 8D 46 F6
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        mov     ax, word ptr [0x1c00]           ; A1 00 1C
        mov     dx, word ptr [0x1c02]           ; 8B 16 02 1C
        cmp     word ptr [bp - 4], dx           ; 39 56 FC
        je      L_0477                          ; 74 03
        jmp     L_0354                          ; E9 DD FE
;   [conditional branch target (if/else)] L_0477
L_0477:
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_047F                          ; 74 03
        jmp     L_0354                          ; E9 D5 FE
;   [conditional branch target (if/else)] L_047F
L_047F:
        mov     ax, 0xb72                       ; B8 72 0B
        jmp     L_0356                          ; E9 D1 FE
;   [unconditional branch target] L_0485
L_0485:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A 84 05 00 00 [FIXUP]
        call    far _entry_102                  ; 9A AE 00 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_97                   ; 9A 95 05 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_99                   ; 9A 21 02 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        je      L_04FE                          ; 74 09
;   [loop start] L_04F5
L_04F5:
        mov     word ptr [0x6c], 1              ; C7 06 6C 00 01 00
        jmp     L_05A7                          ; E9 A9 00
;   [conditional branch target (if/else)] L_04FE
L_04FE:
        push    word ptr [0x782]                ; FF 36 82 07
        ;   ^ arg hInstance
        mov     ax, 0xa                         ; B8 0A 00
        cdq                                     ; 99
        push    dx                              ; 52
        ;   ^ arg lpszTemplate (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszTemplate (low/offset)
        push    word ptr [0x780]                ; FF 36 80 07
        ;   ^ arg hWndOwner
        push    word ptr [0x13d6]               ; FF 36 D6 13
        ;   ^ arg lpDialogFunc (high/segment)
        push    word ptr [0x13d4]               ; FF 36 D4 13
        ;   ^ arg lpDialogFunc (low/offset)
        ; --> DIALOGBOX(HANDLE hInstance, LPSTR lpszTemplate, HWND hWndOwner, FARPROC lpDialogFunc) -> INT
        call    far USER.DIALOGBOX              ; 9A 4B 02 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0527                          ; 75 0B
        mov     ax, 0x2013                      ; B8 13 20
        push    ax                              ; 50
        call    far _entry_47                   ; 9A D5 00 00 00 [FIXUP]
        jmp     L_04F5                          ; EB CE
;   [conditional branch target (if/else)] L_0527
L_0527:
        call    far _entry_69                   ; 9A 63 02 00 00 [FIXUP]
        call    far _entry_92                   ; 9A 3F 00 00 00 [FIXUP]
        cmp     word ptr [0x4e], 0              ; 83 3E 4E 00 00
        jne     L_04F5                          ; 75 BD
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_0599                          ; 75 58
        cmp     word ptr [bx + 0xc], 0          ; 83 7F 0C 00
        je      L_0568                          ; 74 21
        push    word ptr [0x12b4]               ; FF 36 B4 12
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        mov     ax, 0x7fff                      ; B8 FF 7F
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _entry_104                  ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0599                          ; EB 31
;   [conditional branch target (if/else)] L_0568
L_0568:
        push    word ptr [0x12b4]               ; FF 36 B4 12
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        add     ax, 1                           ; 05 01 00
        adc     dx, 0                           ; 83 D2 00
        push    dx                              ; 52
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        cdq                                     ; 99
        push    dx                              ; 52
        push    ax                              ; 50
        call    far _entry_31                   ; 9A F5 01 00 00 [FIXUP]
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _entry_97                   ; 9A BF 00 00 00 [FIXUP]
;   [branch target] L_0599
L_0599:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        cmp     word ptr [bx + 0xa], 0          ; 83 7F 0A 00
        jne     L_05A7                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05A9                          ; EB 02
;   [branch target] L_05A7
L_05A7:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05A9
L_05A9:
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
        mov     ax, word ptr [0x1234]           ; A1 34 12
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [bp + 0xc]         ; 8B 46 0C
        cmp     ax, 6                           ; 3D 06 00
        je      L_05FC                          ; 74 2D
        cmp     ax, 9                           ; 3D 09 00
        je      L_05E8                          ; 74 14
        cmp     ax, 0x10                        ; 3D 10 00
        je      L_062D                          ; 74 54
        cmp     ax, 0x110                       ; 3D 10 01
        jne     L_05E1                          ; 75 03
        jmp     L_0668                          ; E9 87 00
;   [conditional branch target (if/else)] L_05E1
L_05E1:
        cmp     ax, 0x111                       ; 3D 11 01
        je      L_0619                          ; 74 33
        jmp     L_05F7                          ; EB 0F
;   [conditional branch target (if/else)] L_05E8
L_05E8:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_05F7                          ; 74 09
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 64 06 00 00 [FIXUP]
;   [loop start (also forward branch)] L_05F7
L_05F7:
        sub     ax, ax                          ; 2B C0
        jmp     L_0681                          ; E9 85 00
;   [conditional branch target (if/else)] L_05FC
L_05FC:
        cmp     word ptr [bp + 0xa], 0          ; 83 7E 0A 00
        je      L_0608                          ; 74 06
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        mov     word ptr [0x7aa], ax            ; A3 AA 07
;   [conditional branch target (if/else)] L_0608
L_0608:
        cmp     word ptr [0x60], 0              ; 83 3E 60 00 00
        je      L_05F7                          ; 74 E8
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    far USER.SHOWCURSOR             ; 9A 5A 01 00 00 [FIXUP]
        jmp     L_05F7                          ; EB DE
;   [conditional branch target (if/else)] L_0619
L_0619:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        cmp     ax, 1                           ; 3D 01 00
        je      L_066D                          ; 74 4C
        cmp     ax, 2                           ; 3D 02 00
        je      L_062D                          ; 74 07
        cmp     ax, 4                           ; 3D 04 00
        je      L_0677                          ; 74 4C
        jmp     L_05F7                          ; EB CA
;   [conditional branch target (if/else)] L_062D
L_062D:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xa], 1          ; C7 47 0A 01 00
;   [loop start] L_0635
L_0635:
        push    word ptr [0x780]                ; FF 36 80 07
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A 55 06 00 00 [FIXUP]
        push    word ptr [bp + 0xe]             ; FF 76 0E
        ;   ^ arg hDlg
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg nResult
        ; --> ENDDIALOG(HWND hDlg, INT nResult) -> BOOL
        call    far USER.ENDDIALOG              ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x780]                ; FF 36 80 07
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.ENABLEWINDOW           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x7aa], 0             ; C7 06 AA 07 00 00
        push    word ptr [0x1240]               ; FF 36 40 12
        call    far _entry_63                   ; 9A 3B 01 00 00 [FIXUP]
;   [unconditional branch target] L_0668
L_0668:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0681                          ; EB 14
;   [conditional branch target (if/else)] L_066D
L_066D:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], 0          ; C7 47 0C 00 00
        jmp     L_0635                          ; EB BE
;   [conditional branch target (if/else)] L_0677
L_0677:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     word ptr [bx + 0xc], 1          ; C7 47 0C 01 00
        jmp     L_0635                          ; EB B4
;   [unconditional branch target] L_0681
L_0681:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        db      00ah                            ; 0A

WRITE_TEXT ENDS

        END
