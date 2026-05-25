; ======================================================================
; TERMINAL / seg6.asm   (segment 6 of TERMINAL)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  288
; 
; Classification (pass8):
;   C-origin (high+medium):              4
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     10 (8 unique)
;   Top:
;        2  OPENFILE
;        2  _LCLOSE
;        1  _LLSEEK
;        1  _LWRITE
;        1  ANSIUPPER
;        1  LSTRCPY
;        1  CHECKMENUITEM
;        1  GETMENU
; ======================================================================
; AUTO-GENERATED from original TERMINAL segment 6
; segment_size=666 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TERMINAL_TEXT SEGMENT BYTE PUBLIC 'CODE'

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=34 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;-------------------------------------------------------------------------
L_0000:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x187c                      ; B8 7C 18
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x4002                      ; B8 02 40
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 2C 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jge     L_003D                          ; 7D 20
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x187c                      ; B8 7C 18
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        mov     ax, 0x1000                      ; B8 00 10
        push    ax                              ; 50
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A 63 00 00 00 [FIXUP]
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jle     L_0041                          ; 7E 0A
        push    ax                              ; 50
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A 95 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_003D
L_003D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0044                          ; EB 03
;   [error/early exit] L_0041
L_0041:
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_0044
L_0044:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_004A   offset=0x004A  size=44 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
;   _LCLOSE(HFILE hFile) -> HFILE
;   _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
;   _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
;-------------------------------------------------------------------------
;   [sub-routine] L_004A
L_004A:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        push    ds                              ; 1E
        ;   ^ arg lpszFileName (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszFileName (low/offset)
        mov     ax, 0x187c                      ; B8 7C 18
        push    ds                              ; 1E
        ;   ^ arg lpReOpenBuff (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpReOpenBuff (low/offset)
        push    word ptr [0x442]                ; FF 36 42 04
        ;   ^ arg wStyle
        ; --> OPENFILE(LPSTR lpszFileName, LPVOID lpReOpenBuff, WORD wStyle) -> HFILE
        call    far KERNEL.OPENFILE             ; 9A FF FF 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        jl      L_009B                          ; 7C 2E
        push    si                              ; 56
        ;   ^ arg hFile
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg lOffset (high/segment)
        push    ax                              ; 50
        ;   ^ arg lOffset (low/offset)
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        ;   ^ arg iOrigin
        ; --> _LLSEEK(HFILE hFile, LONG lOffset, INT iOrigin) -> LONG
        call    far KERNEL._LLSEEK              ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        ;   ^ arg hFile
        mov     ax, 0x18fc                      ; B8 FC 18
        push    ds                              ; 1E
        ;   ^ arg lpBuffer (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpBuffer (low/offset)
        push    word ptr [0x440]                ; FF 36 40 04
        ;   ^ arg wBytes
        ; --> _LWRITE(HFILE hFile, LPCVOID lpBuffer, WORD wBytes) -> WORD
        call    far KERNEL._LWRITE              ; 9A FF FF 00 00 [FIXUP]
        cmp     ax, word ptr [0x440]            ; 3B 06 40 04
        je      L_0093                          ; 74 03
        mov     di, 0xfffe                      ; BF FE FF
;   [conditional branch target (if/else)] L_0093
L_0093:
        push    si                              ; 56
        ;   ^ arg hFile
        ; --> _LCLOSE(HFILE hFile) -> HFILE
        call    far KERNEL._LCLOSE              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_009E                          ; EB 03
;   [conditional branch target (if/else)] L_009B
L_009B:
        mov     di, 0xfffa                      ; BF FA FF
;   [unconditional branch target] L_009E
L_009E:
        mov     word ptr [0x440], 0             ; C7 06 40 04 00 00
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;-------------------------------------------------------------------------
; sub_00AE   offset=0x00AE  size=36 instr  segment=seg6.asm
;
; Classification (pass8): c_high  (score C=7, ASM=1)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_004A
;-------------------------------------------------------------------------
;   [sub-routine] L_00AE
L_00AE:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     di, word ptr [bp + 4]           ; 8B 7E 04
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
;   [loop start] L_00C6
L_00C6:
        dec     di                              ; 4F
        or      di, di                          ; 0B FF
        jl      L_00E0                          ; 7C 15
        cmp     word ptr [0x440], 0x200         ; 81 3E 40 04 00 02
        jl      L_00E5                          ; 7C 12
        push    word ptr [bp + 8]               ; FF 76 08
        call    L_004A                          ; E8 71 FF
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_00E5                          ; 74 05
;   [conditional branch target (if/else)] L_00E0
L_00E0:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        jmp     L_0102                          ; EB 1D
;   [conditional branch target (if/else)] L_00E5
L_00E5:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [bp - 2], al           ; 88 46 FE
        or      al, al                          ; 0A C0
        jne     L_00F1                          ; 75 04
        mov     byte ptr [bp - 2], 0x20         ; C6 46 FE 20
;   [conditional branch target (if/else)] L_00F1
L_00F1:
        mov     bx, word ptr [0x440]            ; 8B 1E 40 04
        inc     word ptr [0x440]                ; FF 06 40 04
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr [bx + 0x18fc], al      ; 88 87 FC 18
        jmp     L_00C6                          ; EB C4
;   [fall-through exit] L_0102
L_0102:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_010A   offset=0x010A  size=174 instr  segment=seg6.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf
;
; Far API calls:
;   ANSIUPPER(LPSTR lpsz) -> LPSTR
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;   CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
;   GETMENU
;
; Near calls (internal): L_004A, L_00AE, L_010A
;-------------------------------------------------------------------------
;   [sub-routine] L_010A
L_010A:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        or      ax, ax                          ; 0B C0
        je      L_0127                          ; 74 0C
        cmp     ax, 1                           ; 3D 01 00
        je      L_0152                          ; 74 32
        cmp     ax, 2                           ; 3D 02 00
        je      L_0164                          ; 74 3F
        jmp     L_014D                          ; EB 26
;   [conditional branch target (if/else)] L_0127
L_0127:
        push    word ptr [bp + 8]               ; FF 76 08
        call    0                               ; E8 D3 FE
        mov     word ptr [0x444], ax            ; A3 44 04
        or      ax, ax                          ; 0B C0
        jne     L_014D                          ; 75 19
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ds                              ; 1E
        ;   ^ arg lpszDest (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszDest (low/offset)
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ds                              ; 1E
        ;   ^ arg lpsz (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz (low/offset)
        ; --> ANSIUPPER(LPSTR lpsz) -> LPSTR
        call    far KERNEL.ANSIUPPER            ; 9A FF FF 00 00 [FIXUP]
;   [loop start (also forward branch)] L_014D
L_014D:
        mov     ax, word ptr [0x444]            ; A1 44 04
        jmp     L_016D                          ; EB 1B
;   [conditional branch target (if/else)] L_0152
L_0152:
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_00AE                          ; E8 4F FF
        mov     word ptr [0x444], ax            ; A3 44 04
        jmp     L_014D                          ; EB E9
;   [conditional branch target (if/else)] L_0164
L_0164:
        mov     ax, 0x2aa                       ; B8 AA 02
        push    ax                              ; 50
        call    L_004A                          ; E8 DF FE
        jmp     L_014D                          ; EB E0
;   [unconditional branch target] L_016D
L_016D:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 6                           ; 83 EC 06
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        jne     L_018F                          ; 75 03
        jmp     L_0213                          ; E9 84 00
;   [conditional branch target (if/else)] L_018F
L_018F:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        jle     L_01B0                          ; 7E 16
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_010A                          ; E8 5D FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_01B0
L_01B0:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_01CE                          ; 75 18
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        mov     ax, 0x446                       ; B8 46 04
        push    ax                              ; 50
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_010A                          ; E8 3F FF
        mov     word ptr [bp - 6], ax           ; 89 46 FA
;   [conditional branch target (if/else)] L_01CE
L_01CE:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        je      L_0213                          ; 74 3F
        mov     word ptr [0x18c], 0             ; C7 06 8C 01 00 00
        push    word ptr [0x2070]               ; FF 36 70 20
        call    far USER.GETMENU                ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        push    ax                              ; 50
        ;   ^ arg hMenu
        mov     ax, 9                           ; B8 09 00
        push    ax                              ; 50
        ;   ^ arg wIDItem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wCheck
        ; --> CHECKMENUITEM(HMENU hMenu, WORD wIDItem, WORD wCheck) -> BOOL
        call    far USER.CHECKMENUITEM          ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [bp - 6], -2           ; 83 7E FA FE
        jne     L_020A                          ; 75 11
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x1f                        ; B8 1F 00
        push    ax                              ; 50
        call    far _entry_27                   ; 9A 8D 02 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_020A
L_020A:
        mov     ax, 0x1b80                      ; B8 80 1B
        push    ax                              ; 50
        call    far _entry_57                   ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_0213
L_0213:
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
        sub     sp, 0x5c                        ; 83 EC 5C
        cmp     word ptr [0x18c], 0             ; 83 3E 8C 01 00
        je      L_0291                          ; 74 5F
        lea     ax, [bp - 0x5c]                 ; 8D 46 A4
        push    ax                              ; 50
        call    far _entry_34                   ; 9A FF FF 00 00 [FIXUP]
        mov     bx, ax                          ; 8B D8
        mov     ax, word ptr [bx]               ; 8B 07
        mov     dx, word ptr [bx + 2]           ; 8B 57 02
        mov     word ptr [bp - 0x58], ax        ; 89 46 A8
        mov     word ptr [bp - 0x56], dx        ; 89 56 AA
        push    dx                              ; 52
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_56                   ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_010A                          ; E8 A3 FE
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0291                          ; 74 23
        cmp     ax, 0xfffe                      ; 3D FE FF
        jne     L_0280                          ; 75 0D
        push    word ptr [0x2070]               ; FF 36 70 20
        ; constant WM_PAINT
        mov     ax, 0xf                         ; B8 0F 00
        push    ax                              ; 50
        mov     ax, 0x1f                        ; B8 1F 00
        jmp     L_028B                          ; EB 0B
;   [conditional branch target (if/else)] L_0280
L_0280:
        push    word ptr [0x2070]               ; FF 36 70 20
        mov     ax, 0x15                        ; B8 15 00
        push    ax                              ; 50
        mov     ax, 0x2aa                       ; B8 AA 02
;   [unconditional branch target] L_028B
L_028B:
        push    ax                              ; 50
        call    far _entry_27                   ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0291
L_0291:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

TERMINAL_TEXT ENDS

        END
