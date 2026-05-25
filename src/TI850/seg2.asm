; ======================================================================
; TI850 / seg2.asm   (segment 2 of TI850)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        13
; Total instructions:                 1515
; 
; Classification (pass8):
;   C-origin (high+medium):             13
;   ASM-origin (high+medium):            0
;   Unclear:                             0
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     20 (15 unique)
;   Top:
;        3  GLOBALUNLOCK
;        2  GLOBALFREE
;        2  GLOBALLOCK
;        2  GLOBALALLOC
;        1  FINDRESOURCE
;        1  FREERESOURCE
;        1  GETMODULEHANDLE
;        1  LOADRESOURCE
; ======================================================================
; AUTO-GENERATED from original TI850 segment 2
; segment_size=4094 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

TI850_TEXT SEGMENT BYTE PUBLIC 'CODE'

;-------------------------------------------------------------------------
; sub_0000   offset=0x0000  size=29 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
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
        push    si                              ; 56
        cmp     byte ptr [bp + 8], 0xa0         ; 80 7E 08 A0
        jb      L_002D                          ; 72 1C
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        shl     al, 1                           ; D0 E0
        sub     al, 0x40                        ; 2C 40
        mov     byte ptr [bp + 8], al           ; 88 46 08
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        and     si, 0xff                        ; 81 E6 FF 00
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     al, byte ptr [bx + si + 0x2b0]  ; 8A 80 B0 02
        sub     ah, ah                          ; 2A E4
        jmp     L_002F                          ; EB 02
;   [conditional branch target (if/else)] L_002D
L_002D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_002F
L_002F:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_003B   offset=0x003B  size=44 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_003B
L_003B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jl      L_005F                          ; 7C 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x208]            ; A1 08 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x20a]            ; A0 0A 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 85 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_005F
L_005F:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_0089                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_0089                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x20e]            ; A1 0E 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x210]            ; A0 10 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A A5 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0089
L_0089:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_00A9                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x202]            ; A1 02 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x204]            ; A0 04 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A CF 00 00 00 [FIXUP]
;   [error/early exit] L_00A9
L_00A9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;-------------------------------------------------------------------------
; sub_00AF   offset=0x00AF  size=308 instr  segment=seg2.asm
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
; Near calls (internal): L_03C3, L_056B, L_0627
;-------------------------------------------------------------------------
;   [sub-routine] L_00AF
L_00AF:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     word ptr es:[bx + 8], 0x258     ; 26 81 7F 08 58 02
        jle     L_00D3                          ; 7E 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x20b]            ; A1 0B 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x20d]            ; A0 0D 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A F9 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00D3
L_00D3:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        test    byte ptr es:[bx + 0x26], 1      ; 26 F6 47 26 01
        je      L_00FD                          ; 74 20
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xb], 0       ; 26 80 7F 0B 00
        je      L_00FD                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x211]            ; A1 11 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x213]            ; A0 13 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 19 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00FD
L_00FD:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0xa], 0       ; 26 80 7F 0A 00
        je      L_011D                          ; 74 16
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        mov     ax, word ptr [0x205]            ; A1 05 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x207]            ; A0 07 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_011D
L_011D:
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
        call    L_056B                          ; E8 28 04
        mov     word ptr [bp - 0xa], 2          ; C7 46 F6 02 00
        mov     word ptr [bp - 8], 0xffff       ; C7 46 F8 FF FF
        mov     word ptr [bp - 0x10], 0         ; C7 46 F0 00 00
        mov     si, 0x118                       ; BE 18 01
        jmp     L_0201                          ; E9 A9 00
;   [loop start] L_0158
L_0158:
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     al, byte ptr [si + 1]           ; 8A 44 01
        cmp     byte ptr [bp - 0x19], al        ; 38 46 E7
        je      L_0169                          ; 74 04
        add     byte ptr [bp - 5], 8            ; 80 46 FB 08
;   [conditional branch target (if/else)] L_0169
L_0169:
        mov     al, byte ptr [si + 3]           ; 8A 44 03
        cmp     byte ptr [bp - 0x17], al        ; 38 46 E9
        je      L_0175                          ; 74 04
        add     byte ptr [bp - 5], 0x10         ; 80 46 FB 10
;   [conditional branch target (if/else)] L_0175
L_0175:
        mov     al, byte ptr [si + 2]           ; 8A 44 02
        cmp     byte ptr [bp - 0x18], al        ; 38 46 E8
        je      L_0181                          ; 74 04
        add     byte ptr [bp - 5], 0x20         ; 80 46 FB 20
;   [conditional branch target (if/else)] L_0181
L_0181:
        cmp     byte ptr [bp - 0x16], 0         ; 80 7E EA 00
        je      L_01AE                          ; 74 27
        mov     al, byte ptr [si + 4]           ; 8A 44 04
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x16]        ; 8A 46 EA
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_01AE                          ; 74 14
        or      ax, ax                          ; 0B C0
        jle     L_01A2                          ; 7E 04
        mov     cl, 6                           ; B1 06
        jmp     L_01A9                          ; EB 07
;   [conditional branch target (if/else)] L_01A2
L_01A2:
        mov     ax, word ptr [bp - 0x12]        ; 8B 46 EE
        neg     ax                              ; F7 D8
        mov     cl, 7                           ; B1 07
;   [unconditional branch target] L_01A9
L_01A9:
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_01AE
L_01AE:
        cmp     byte ptr [bp - 0x15], 0         ; 80 7E EB 00
        je      L_01D4                          ; 74 20
        mov     al, byte ptr [si + 5]           ; 8A 44 05
        cwde                                    ; 98
        mov     cx, ax                          ; 8B C8
        mov     al, byte ptr [bp - 0x15]        ; 8A 46 EB
        cwde                                    ; 98
        sub     ax, cx                          ; 2B C1
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        or      ax, ax                          ; 0B C0
        je      L_01D4                          ; 74 0D
        or      ax, ax                          ; 0B C0
        jg      L_01CD                          ; 7F 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_01CD
L_01CD:
        mov     cl, 4                           ; B1 04
        shl     ax, cl                          ; D3 E0
        add     word ptr [bp - 6], ax           ; 01 46 FA
;   [conditional branch target (if/else)] L_01D4
L_01D4:
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
        jae     L_01FB                          ; 73 0C
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [conditional branch target (if/else)] L_01FB
L_01FB:
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        add     si, 8                           ; 83 C6 08
;   [unconditional branch target] L_0201
L_0201:
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_020C                          ; 7D 03
        jmp     L_0158                          ; E9 4C FF
;   [conditional branch target (if/else)] L_020C
L_020C:
        mov     ax, 0x12c                       ; B8 2C 01
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
        jne     L_0247                          ; 75 03
        jmp     L_02FA                          ; E9 B3 00
;   [conditional branch target (if/else)] L_0247
L_0247:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 0xc]             ; FF 76 F4
        call    far KERNEL.LOADRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x1e], ax        ; 89 46 E2
        or      ax, ax                          ; 0B C0
        jne     L_025E                          ; 75 05
        sub     ax, ax                          ; 2B C0
        jmp     L_02FD                          ; E9 9F 00
;   [conditional branch target (if/else)] L_025E
L_025E:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp - 0x1e]            ; FF 76 E2
        call    far KERNEL.LOCKRESOURCE         ; 9A FF FF 00 00 [FIXUP]
        push    dx                              ; 52
        push    ax                              ; 50
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far _entry_105                  ; 9A FF FF 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     word ptr es:[bx], 0x84          ; 26 C7 07 84 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x118                       ; 05 18 01
        push    ax                              ; 50
        ; constant WM_SIZE
        mov     ax, 5                           ; B8 05 00
        push    ax                              ; 50
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_03C3                          ; E8 2D 01
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xb]      ; 26 8A 47 0B
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xb], al      ; 26 88 47 0B
        or      al, al                          ; 0A C0
        je      L_02AD                          ; 74 05
        or      byte ptr es:[bx + 0x10], 8      ; 26 80 4F 10 08
;   [conditional branch target (if/else)] L_02AD
L_02AD:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xc]      ; 26 8A 47 0C
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xc], al      ; 26 88 47 0C
        or      al, al                          ; 0A C0
        je      L_02C4                          ; 74 05
        or      byte ptr es:[bx + 0x10], 0x10   ; 26 80 4F 10 10
;   [conditional branch target (if/else)] L_02C4
L_02C4:
        cmp     byte ptr [0x204], 0             ; 80 3E 04 02 00
        je      L_02D9                          ; 74 0E
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     byte ptr es:[bx + 0xa], al      ; 26 88 47 0A
;   [conditional branch target (if/else)] L_02D9
L_02D9:
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
;   [unconditional branch target] L_02FA
L_02FA:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
;   [unconditional branch target] L_02FD
L_02FD:
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
        jne     L_0326                          ; 75 06
;   [loop start] L_0320
L_0320:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_03B8                          ; E9 92 00
;   [conditional branch target (if/else)] L_0326
L_0326:
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        je      L_0351                          ; 74 23
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        cmp     byte ptr es:[bx], 0             ; 26 80 3F 00
        je      L_0351                          ; 74 1A
        push    es                              ; 06
        push    bx                              ; 53
        call    L_0627                          ; E8 EB 02
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        inc     ax                              ; 40
        je      L_0320                          ; 74 DE
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shl     ax, cl                          ; D3 E0
        add     ax, 0x118                       ; 05 18 01
        mov     word ptr [bp - 0x3e], ax        ; 89 46 C2
        jmp     L_0368                          ; EB 17
;   [conditional branch target (if/else)] L_0351
L_0351:
        mov     word ptr [bp - 0x3e], 0x118     ; C7 46 C2 18 01
        mov     word ptr [bp - 6], 2            ; C7 46 FA 02 00
        mov     word ptr [bp - 0x3c], 0         ; C7 46 C4 00 00
;   [loop start] L_0360
L_0360:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        cmp     word ptr [bp - 0x3c], ax        ; 39 46 C4
        jge     L_03B5                          ; 7D 4D
;   [unconditional branch target] L_0368
L_0368:
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        lea     ax, [bp - 0x38]                 ; 8D 46 C8
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_03C3                          ; E8 4C 00
        push    word ptr [bp - 0x3e]            ; FF 76 C2
        mov     ax, 2                           ; B8 02 00
        push    ax                              ; 50
        lea     ax, [bp - 0x5e]                 ; 8D 46 A2
        push    ss                              ; 16
        push    ax                              ; 50
        call    L_03C3                          ; E8 3D 00
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
        je      L_03B5                          ; 74 11
        mov     ax, word ptr [bp + 0xe]         ; 8B 46 0E
        or      ax, word ptr [bp + 0x10]        ; 0B 46 10
        jne     L_03B5                          ; 75 09
        inc     word ptr [bp - 0x3c]            ; FF 46 C4
        add     word ptr [bp - 0x3e], 8         ; 83 46 C2 08
        jmp     L_0360                          ; EB AB
;   [conditional branch target (if/else)] L_03B5
L_03B5:
        mov     ax, word ptr [bp - 0x3a]        ; 8B 46 C6
;   [unconditional branch target] L_03B8
L_03B8:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x10                            ; CA 10 00
;-------------------------------------------------------------------------
; sub_03C3   offset=0x03C3  size=132 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
;-------------------------------------------------------------------------
;   [sub-routine] L_03C3
L_03C3:
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
        je      L_0410                          ; 74 13
        cmp     ax, 2                           ; 3D 02 00
        jne     L_0405                          ; 75 03
        jmp     L_04DF                          ; E9 DA 00
;   [conditional branch target (if/else)] L_0405
L_0405:
        cmp     ax, 5                           ; 3D 05 00
        jne     L_040D                          ; 75 03
        jmp     L_048E                          ; E9 81 00
;   [conditional branch target (if/else)] L_040D
L_040D:
        jmp     L_0563                          ; E9 53 01
;   [conditional branch target (if/else)] L_0410
L_0410:
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
        mov     ax, word ptr [bx + 0x128]       ; 8B 87 28 01
        push    ds                              ; 1E
        ;   ^ arg lpszSrc (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpszSrc (low/offset)
        ; --> LSTRCPY(LPSTR lpszDest, LPSTR lpszSrc) -> LPSTR
        call    far KERNEL.LSTRCPY              ; 9A FF FF 00 00 [FIXUP]
        jmp     L_0563                          ; E9 D5 00
;   [unconditional branch target] L_048E
L_048E:
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
        jmp     L_0563                          ; E9 84 00
;   [unconditional branch target] L_04DF
L_04DF:
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
        mov     word ptr es:[bx + 0x1b], 0x48   ; 26 C7 47 1B 48 00
        mov     word ptr es:[bx + 0x1d], 0x78   ; 26 C7 47 1D 78 00
;   [fall-through exit] L_0563
L_0563:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     8                               ; C2 08 00
;-------------------------------------------------------------------------
; sub_056B   offset=0x056B  size=69 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=8, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_0627
;-------------------------------------------------------------------------
;   [sub-routine] L_056B
L_056B:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0x11]     ; 26 8A 47 11
        and     al, 0xf                         ; 24 0F
        cmp     al, 2                           ; 3C 02
        jne     L_0580                          ; 75 04
        ; constant WM_CREATE
        mov     al, 1                           ; B0 01
        jmp     L_0582                          ; EB 02
;   [conditional branch target (if/else)] L_0580
L_0580:
        sub     al, al                          ; 2A C0
;   [unconditional branch target] L_0582
L_0582:
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
        jne     L_05A9                          ; 75 05
        mov     byte ptr es:[bx + 3], 3         ; 26 C6 47 03 03
;   [conditional branch target (if/else)] L_05A9
L_05A9:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     si, word ptr es:[bx]            ; 26 8B 37
        or      si, si                          ; 0B F6
        jle     L_05BA                          ; 7E 07
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, si                          ; 8B C6
        jmp     L_05C5                          ; EB 0B
;   [conditional branch target (if/else)] L_05BA
L_05BA:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx]            ; 26 8B 07
        neg     ax                              ; F7 D8
        les     bx, ptr [bp + 4]                ; C4 5E 04
;   [unconditional branch target] L_05C5
L_05C5:
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
        jne     L_05F4                          ; 75 05
        mov     byte ptr es:[bx + 7], 4         ; 26 C6 47 07 04
;   [conditional branch target (if/else)] L_05F4
L_05F4:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     al, byte ptr es:[bx + 0xa]      ; 26 8A 47 0A
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 6], al        ; 26 88 47 06
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     dx, word ptr [bp + 0xa]         ; 8B 56 0A
        add     ax, 0x12                        ; 05 12 00
        push    dx                              ; 52
        push    ax                              ; 50
        call    L_0627                          ; E8 17 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     byte ptr es:[bx + 2], al        ; 26 88 47 02
        inc     al                              ; FE C0
        jne     L_0620                          ; 75 05
        mov     byte ptr es:[bx + 2], 0         ; 26 C6 47 02 00
;   [error/early exit] L_0620
L_0620:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_0627   offset=0x0627  size=225 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;   LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
;
; Near calls (internal): L_0878, L_094E, L_0B1B
;-------------------------------------------------------------------------
;   [sub-routine] L_0627
L_0627:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        mov     word ptr [bp - 2], 0            ; C7 46 FE 00 00
;   [loop start] L_0632
L_0632:
        push    word ptr [bp + 6]               ; FF 76 06
        ;   ^ arg lpsz1 (high/segment)
        push    word ptr [bp + 4]               ; FF 76 04
        ;   ^ arg lpsz1 (low/offset)
        mov     bx, word ptr [bp - 2]           ; 8B 5E FE
        shl     bx, 1                           ; D1 E3
        mov     ax, word ptr [bx + 0x128]       ; 8B 87 28 01
        push    ds                              ; 1E
        ;   ^ arg lpsz2 (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpsz2 (low/offset)
        ; --> LSTRCMP(LPSTR lpsz1, LPSTR lpsz2) -> INT
        call    far KERNEL.LSTRCMP              ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_0651                          ; 75 05
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        jmp     L_065D                          ; EB 0C
;   [conditional branch target (if/else)] L_0651
L_0651:
        inc     word ptr [bp - 2]               ; FF 46 FE
        cmp     word ptr [bp - 2], 2            ; 83 7E FE 02
        jl      L_0632                          ; 7C D8
        mov     ax, 0xffff                      ; B8 FF FF
;   [fall-through exit] L_065D
L_065D:
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
        jle     L_0682                          ; 7E 05
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        jmp     L_0687                          ; EB 05
;   [conditional branch target (if/else)] L_0682
L_0682:
        mov     ax, word ptr [bp + 0x16]        ; 8B 46 16
        neg     ax                              ; F7 D8
;   [unconditional branch target] L_0687
L_0687:
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    ax                              ; 50
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_094E                          ; E8 B4 02
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        mov     word ptr [bp - 0xe], dx         ; 89 56 F2
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_06B2                          ; 75 0C
        or      ax, ax                          ; 0B C0
        jne     L_06B2                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_086B                          ; E9 B9 01
;   [conditional branch target (if/else)] L_06B2
L_06B2:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xe], dx         ; 39 56 F2
        jne     L_06C2                          ; 75 05
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        je      L_0706                          ; 74 44
;   [conditional branch target (if/else)] L_06C2
L_06C2:
        mov     word ptr [bp - 0xa], 1          ; C7 46 F6 01 00
        jmp     L_0706                          ; EB 3D
;   [loop start] L_06C9
L_06C9:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_070C                          ; 7E 3D
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
        call    L_0B1B                          ; E8 27 04
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        inc     word ptr [bp + 0x18]            ; FF 46 18
        dec     word ptr [bp + 0x16]            ; FF 4E 16
        add     word ptr [bp + 0x1e], ax        ; 01 46 1E
;   [branch target] L_0706
L_0706:
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_06C9                          ; 7C BD
;   [conditional branch target (if/else)] L_070C
L_070C:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jle     L_0725                          ; 7E 09
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     word ptr es:[bx + 0x30], 0      ; 26 C7 47 30 00 00
;   [conditional branch target (if/else)] L_0725
L_0725:
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
        call    L_0B1B                          ; E8 CC 03
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        cdq                                     ; 99
        add     ax, word ptr [bp - 8]           ; 03 46 F8
        adc     dx, word ptr [bp - 6]           ; 13 56 FA
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jne     L_076D                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 8], ax           ; 89 46 F8
;   [conditional branch target (if/else)] L_076D
L_076D:
        cmp     word ptr [bp + 0x16], 0         ; 83 7E 16 00
        jg      L_077F                          ; 7F 0C
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_077C                          ; 75 03
        jmp     L_0865                          ; E9 E9 00
;   [conditional branch target (if/else)] L_077C
L_077C:
        jmp     L_085D                          ; E9 DE 00
;   [conditional branch target (if/else)] L_077F
L_077F:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 0x10   ; 26 80 4F 26 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 8]               ; FF 76 F8
        call    L_0878                          ; E8 E3 00
        cdq                                     ; 99
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        mov     word ptr [bp - 6], dx           ; 89 56 FA
        cmp     word ptr [bp - 0xa], 0          ; 83 7E F6 00
        jne     L_07A5                          ; 75 03
        jmp     L_0865                          ; E9 C0 00
;   [conditional branch target (if/else)] L_07A5
L_07A5:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     di, word ptr es:[bx + 0x10]     ; 26 8B 7F 10
        sub     si, si                          ; 2B F6
;   [loop start] L_07AE
L_07AE:
        cmp     word ptr [bp + 0x16], si        ; 39 76 16
        jg      L_07B6                          ; 7F 03
        jmp     L_0856                          ; E9 A0 00
;   [conditional branch target (if/else)] L_07B6
L_07B6:
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        les     bx, ptr [bp - 0x10]             ; C4 5E F0
        cmp     byte ptr es:[bx + si], al       ; 26 38 00
        je      L_07DD                          ; 74 19
        les     bx, ptr [bp + 0x18]             ; C4 5E 18
        mov     al, byte ptr es:[bx + si]       ; 26 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 2A F8
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0x20                        ; 3C 20
        ja      L_07E0                          ; 77 03
;   [loop start (also forward branch)] L_07DD
L_07DD:
        inc     si                              ; 46
        jmp     L_07AE                          ; EB CE
;   [conditional branch target (if/else)] L_07E0
L_07E0:
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
        call    L_0B1B                          ; E8 0F 03
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
        call    L_0B1B                          ; E8 E3 02
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        add     ax, word ptr [bp - 0x1a]        ; 03 46 E6
        push    ax                              ; 50
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        push    word ptr [bp - 0x14]            ; FF 76 EC
        call    L_0878                          ; E8 27 00
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        jmp     L_07DD                          ; EB 87
;   [unconditional branch target] L_0856
L_0856:
        les     bx, ptr [bp + 0xe]              ; C4 5E 0E
        mov     word ptr es:[bx + 0x10], di     ; 26 89 7F 10
;   [unconditional branch target] L_085D
L_085D:
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0865
L_0865:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     dx, word ptr [bp - 6]           ; 8B 56 FA
;   [unconditional branch target] L_086B
L_086B:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;-------------------------------------------------------------------------
; sub_0878   offset=0x0878  size=74 instr  segment=seg2.asm
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
; Near calls (internal): L_0A7A
;-------------------------------------------------------------------------
;   [sub-routine] L_0878
L_0878:
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
        call    L_0A7A                          ; E8 EC 01
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        inc     ax                              ; 40
        jne     L_0899                          ; 75 05
;   [loop start] L_0894
L_0894:
        sub     ax, ax                          ; 2B C0
        jmp     L_0948                          ; E9 AF 00
;   [conditional branch target (if/else)] L_0899
L_0899:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A EA 09 00 00 [FIXUP]
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
        call    far _entry_105                  ; 9A 72 02 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A 35 09 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0939                          ; 75 3E
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        call    far GDI.SIZEPQ                  ; 9A FF FF 00 00 [FIXUP]
        inc     ax                              ; 40
        jne     L_0927                          ; 75 19
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 41 09 00 00 [FIXUP]
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        mov     word ptr es:[bx + 0x44], ax     ; 26 89 47 44
        jmp     L_0894                          ; E9 6D FF
;   [conditional branch target (if/else)] L_0927
L_0927:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x34]         ; 26 FF 77 34
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp + 6]               ; FF 76 06
        call    far GDI.INSERTPQ                ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0939
L_0939:
        les     bx, ptr [bp + 0xa]              ; C4 5E 0A
        push    word ptr es:[bx + 0x40]         ; 26 FF 77 40
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A 69 0A 00 00 [FIXUP]
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
;   [fall-through exit] L_0948
L_0948:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_094E   offset=0x094E  size=110 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALLOCK(HANDLE hMem) -> LPVOID
;   GLOBALUNLOCK(HANDLE hMem) -> BOOL
;-------------------------------------------------------------------------
;   [sub-routine] L_094E
L_094E:
        ;   = cProc <18> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x12                        ; 83 EC 12
        push    si                              ; 56
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x23]     ; 26 8B 47 23
        or      ax, word ptr es:[bx + 0x25]     ; 26 0B 47 25
        jne     L_096C                          ; 75 0A
        mov     byte ptr [bp - 0xc], 0x7e       ; C6 46 F4 7E
        mov     byte ptr [bp - 2], 0x2e         ; C6 46 FE 2E
        jmp     L_0981                          ; EB 15
;   [conditional branch target (if/else)] L_096C
L_096C:
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     al, byte ptr es:[bx + 0x1e]     ; 26 8A 47 1E
        mov     byte ptr [bp - 0xc], al         ; 88 46 F4
        mov     al, byte ptr es:[bx + 0x1f]     ; 26 8A 47 1F
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 2], al           ; 88 46 FE
;   [unconditional branch target] L_0981
L_0981:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        mov     word ptr [bp - 4], dx           ; 89 56 FC
        mov     word ptr [bp - 0xe], 0          ; C7 46 F2 00 00
;   [loop start] L_0992
L_0992:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jge     L_09B0                          ; 7D 16
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     byte ptr es:[bx + 0x1d], al     ; 26 38 47 1D
        ja      L_09B0                          ; 77 04
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_09C1                          ; 72 11
;   [conditional branch target (if/else)] L_09B0
L_09B0:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jne     L_09C9                          ; 75 11
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_0A73                          ; E9 B2 00
;   [conditional branch target (if/else)] L_09C1
L_09C1:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
        jmp     L_0992                          ; EB C9
;   [conditional branch target (if/else)] L_09C9
L_09C9:
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
        call    far KERNEL.GLOBALALLOC          ; 9A EB 0A 00 00 [FIXUP]
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        or      ax, ax                          ; 0B C0
        jne     L_09E6                          ; 75 08
        sub     ax, ax                          ; 2B C0
        mov     dx, 0x8000                      ; BA 00 80
        jmp     L_0A73                          ; E9 8D 00
;   [conditional branch target (if/else)] L_09E6
L_09E6:
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
        jmp     L_0A5D                          ; EB 56
;   [loop start] L_0A07
L_0A07:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
        les     bx, ptr [bp + 4]                ; C4 5E 04
        cmp     al, byte ptr es:[bx + 0x1d]     ; 26 3A 47 1D
        jb      L_0A2A                          ; 72 08
        cmp     al, 0x7f                        ; 3C 7F
        jb      L_0A36                          ; 72 10
        cmp     al, 0xa0                        ; 3C A0
        jae     L_0A36                          ; 73 0C
;   [conditional branch target (if/else)] L_0A2A
L_0A2A:
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     al, byte ptr [bp - 2]           ; 8A 46 FE
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0A36
L_0A36:
        les     bx, ptr [bp - 6]                ; C4 5E FA
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        mov     byte ptr [bp - 0x12], al        ; 88 46 EE
        cmp     al, 0xa0                        ; 3C A0
        jb      L_0A57                          ; 72 14
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    0                               ; E8 B2 F5
        mov     bx, word ptr [bp - 0xe]         ; 8B 5E F2
        les     si, ptr [bp - 0xa]              ; C4 76 F6
        mov     byte ptr es:[bx + si], al       ; 26 88 00
;   [conditional branch target (if/else)] L_0A57
L_0A57:
        inc     word ptr [bp - 0xe]             ; FF 46 F2
        inc     word ptr [bp - 6]               ; FF 46 FA
;   [unconditional branch target] L_0A5D
L_0A5D:
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        jl      L_0A07                          ; 7C A2
        push    word ptr [bp - 0x10]            ; FF 76 F0
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A EE 02 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        mov     dx, word ptr [bp - 8]           ; 8B 56 F8
;   [fall-through exit] L_0A73
L_0A73:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0xa                             ; C2 0A 00
;-------------------------------------------------------------------------
; sub_0A7A   offset=0x0A7A  size=66 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALALLOC(WORD wFlags, DWORD dwBytes) -> HANDLE
;   GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
;-------------------------------------------------------------------------
;   [sub-routine] L_0A7A
L_0A7A:
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
        jl      L_0ACC                          ; 7C 2F
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
        jne     L_0ACC                          ; 75 12
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x44], si     ; 26 89 77 44
        sub     word ptr es:[bx + 0x42], 0x200  ; 26 81 6F 42 00 02
        mov     ax, 0xffff                      ; B8 FF FF
        jmp     L_0ACE                          ; EB 02
;   [conditional branch target (if/else)] L_0ACC
L_0ACC:
        mov     ax, si                          ; 8B C6
;   [fall-through exit] L_0ACE
L_0ACE:
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
        jne     L_0AFE                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0B10                          ; EB 12
;   [conditional branch target (if/else)] L_0AFE
L_0AFE:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        mov     word ptr es:[bx + 0x42], 0x200  ; 26 C7 47 42 00 02
        mov     word ptr es:[bx + 0x44], 0      ; 26 C7 47 44 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0B10
L_0B10:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_0B1B   offset=0x0B1B  size=177 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=10, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;
; Near calls (internal): L_003B, L_00AF, L_0D10
;-------------------------------------------------------------------------
;   [sub-routine] L_0B1B
L_0B1B:
        ;   = cProc <26> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 0x1a                        ; 83 EC 1A
        push    si                              ; 56
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jle     L_0B2D                          ; 7E 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0B2F                          ; EB 02
;   [conditional branch target (if/else)] L_0B2D
L_0B2D:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0B2F
L_0B2F:
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        or      ax, ax                          ; 0B C0
        je      L_0B69                          ; 74 33
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x35]     ; 26 8B 47 35
        mov     cx, word ptr [0x132]            ; 8B 0E 32 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x38]     ; 26 8A 47 38
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A BC 0C 00 00 [FIXUP]
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_003B                          ; E8 D4 F4
        jmp     L_0B71                          ; EB 08
;   [conditional branch target (if/else)] L_0B69
L_0B69:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        neg     ax                              ; F7 D8
        mov     word ptr [bp + 0x10], ax        ; 89 46 10
;   [unconditional branch target] L_0B71
L_0B71:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     al, byte ptr es:[bx + 0x20]     ; 26 8A 47 20
        add     al, byte ptr es:[bx + 0x1d]     ; 26 02 47 1D
        mov     byte ptr [bp - 0x18], al        ; 88 46 E8
        test    byte ptr es:[bx + 0x18], 1      ; 26 F6 47 18 01
        je      L_0BDC                          ; 74 56
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
;   [loop start] L_0BB9
L_0BB9:
        mov     ax, word ptr [bp + 0x10]        ; 8B 46 10
        cmp     word ptr [bp - 0x10], ax        ; 39 46 F0
        jge     L_0BEC                          ; 7D 2B
        mov     bx, word ptr [bp - 0x10]        ; 8B 5E F0
        les     si, ptr [bp + 0x12]             ; C4 76 12
        mov     bl, byte ptr es:[bx + si]       ; 26 8A 18
        sub     bh, bh                          ; 2A FF
        shl     bx, 1                           ; D1 E3
        les     si, ptr [bp - 0x14]             ; C4 76 EC
        mov     ax, word ptr es:[bx + si]       ; 26 8B 00
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        jmp     L_0BB9                          ; EB DD
;   [conditional branch target (if/else)] L_0BDC
L_0BDC:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        imul    word ptr [bp + 0x10]            ; F7 6E 10
        mov     word ptr [bp - 0xa], ax         ; 89 46 F6
;   [conditional branch target (if/else)] L_0BEC
L_0BEC:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 0xc], ax         ; 89 46 F4
        mov     ax, word ptr es:[bx + 0xc]      ; 26 8B 47 0C
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        je      L_0C07                          ; 74 06
        cmp     word ptr [bp - 0xc], 0          ; 83 7E F4 00
        jne     L_0C14                          ; 75 0D
;   [conditional branch target (if/else)] L_0C07
L_0C07:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x16], 0      ; 26 83 7F 16 00
        jne     L_0C14                          ; 75 03
        jmp     L_0CA6                          ; E9 92 00
;   [conditional branch target (if/else)] L_0C14
L_0C14:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x12]     ; 26 8B 47 12
        mov     word ptr [bp - 0x16], ax        ; 89 46 EA
        mov     ax, word ptr es:[bx + 0x10]     ; 26 8B 47 10
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        mov     ax, word ptr es:[bx + 0xe]      ; 26 8B 47 0E
        mov     word ptr [bp - 0x1a], ax        ; 89 46 E6
        jmp     L_0C8E                          ; EB 60
;   [loop start] L_0C2E
L_0C2E:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr es:[bx + 0x16]     ; 26 8B 47 16
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0C64                          ; 74 26
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr [bp - 0x18]        ; 8A 46 E8
        cmp     byte ptr es:[bx], al            ; 26 38 07
        jne     L_0C64                          ; 75 1B
        mov     ax, word ptr [bp - 0x1a]        ; 8B 46 E6
        add     word ptr [bp - 0x10], ax        ; 01 46 F0
        mov     ax, word ptr [bp - 0x16]        ; 8B 46 EA
        sub     word ptr [bp - 2], ax           ; 29 46 FE
        cmp     word ptr [bp - 2], 0            ; 83 7E FE 00
        jg      L_0C64                          ; 7F 09
        inc     word ptr [bp - 0x10]            ; FF 46 F0
        mov     ax, word ptr [bp - 0xc]         ; 8B 46 F4
        add     word ptr [bp - 2], ax           ; 01 46 FE
;   [conditional branch target (if/else)] L_0C64
L_0C64:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        add     word ptr [bp - 0xa], ax         ; 01 46 F6
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0C88                          ; 74 18
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0x12]             ; C4 5E 12
        mov     al, byte ptr es:[bx]            ; 26 8A 07
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        push    word ptr [bp - 8]               ; FF 76 F8
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    L_0D10                          ; E8 88 00
;   [conditional branch target (if/else)] L_0C88
L_0C88:
        dec     word ptr [bp + 0x10]            ; FF 4E 10
        inc     word ptr [bp + 0x12]            ; FF 46 12
;   [unconditional branch target] L_0C8E
L_0C8E:
        cmp     word ptr [bp + 0x10], 0         ; 83 7E 10 00
        jne     L_0C2E                          ; 75 9A
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        jne     L_0CC0                          ; 75 26
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     ax, word ptr [bp - 2]           ; 8B 46 FE
        mov     word ptr es:[bx + 0x10], ax     ; 26 89 47 10
        jmp     L_0CC0                          ; EB 1A
;   [unconditional branch target] L_0CA6
L_0CA6:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0CC0                          ; 74 14
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        push    word ptr [bp + 0x10]            ; FF 76 10
        call    far _entry_106                  ; 9A F3 0C 00 00 [FIXUP]
;   [branch target] L_0CC0
L_0CC0:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_0CFD                          ; 74 37
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 6]               ; FF 76 06
        push    word ptr [bp + 4]               ; FF 76 04
        call    L_00AF                          ; E8 DA F3
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     ax, word ptr es:[bx + 0x39]     ; 26 8B 47 39
        mov     cx, word ptr [0x132]            ; 8B 0E 32 01
        add     ax, cx                          ; 03 C1
        mov     dx, ds                          ; 8C DA
        push    dx                              ; 52
        push    ax                              ; 50
        mov     al, byte ptr es:[bx + 0x3c]     ; 26 8A 47 3C
        cwde                                    ; 98
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 26 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
        cdq                                     ; 99
        jmp     L_0D09                          ; EB 0C
;   [conditional branch target (if/else)] L_0CFD
L_0CFD:
        les     bx, ptr [bp + 0xc]              ; C4 5E 0C
        mov     dx, word ptr es:[bx + 0x16]     ; 26 8B 57 16
        sub     ax, ax                          ; 2B C0
        mov     ax, word ptr [bp - 0xa]         ; 8B 46 F6
;   [fall-through exit] L_0D09
L_0D09:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     0x16                            ; C2 16 00
;-------------------------------------------------------------------------
; sub_0D10   offset=0x0D10  size=209 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=9, ASM=0)
; Prologue: standard_bp     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GLOBALFREE(HANDLE hMem) -> HANDLE
;
; Near calls (internal): L_003B, L_00AF, L_094E, L_0F4F, L_0F89
;-------------------------------------------------------------------------
;   [sub-routine] L_0D10
L_0D10:
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
        call    far _entry_106                  ; 9A 3C 0D 00 00 [FIXUP]
        jmp     L_0D46                          ; EB 1A
;   [loop start] L_0D2C
L_0D2C:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x134                       ; B8 34 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 75 0D 00 00 [FIXUP]
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        sub     word ptr [bp + 4], ax           ; 29 46 04
;   [unconditional branch target] L_0D46
L_0D46:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jge     L_0D2C                          ; 7D DE
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jle     L_0D98                          ; 7E 44
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0D98                          ; 74 3E
        mov     ax, word ptr [bp + 4]           ; 8B 46 04
        mov     word ptr [0x1fa], ax            ; A3 FA 01
        mov     byte ptr [0x1f9], 0x4c          ; C6 06 F9 01 4C
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x1f8                       ; B8 F8 01
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 8B 0D 00 00 [FIXUP]
        jmp     L_0D92                          ; EB 17
;   [loop start] L_0D7B
L_0D7B:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        mov     ax, 0x136                       ; B8 36 01
        push    ds                              ; 1E
        push    ax                              ; 50
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 84 0E 00 00 [FIXUP]
        dec     word ptr [bp + 4]               ; FF 4E 04
;   [unconditional branch target] L_0D92
L_0D92:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        jne     L_0D7B                          ; 75 E3
;   [error/early exit] L_0D98
L_0D98:
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
        sub     sp, 0x12                        ; 83 EC 12
        mov     word ptr [bp - 8], 0            ; C7 46 F8 00 00
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_0F89                          ; E8 CA 01
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        test    byte ptr es:[bx + 0x26], 2      ; 26 F6 47 26 02
        jne     L_0DD2                          ; 75 03
        jmp     L_0F08                          ; E9 36 01
;   [conditional branch target (if/else)] L_0DD2
L_0DD2:
        cmp     word ptr es:[bx + 0x46], ax     ; 26 39 47 46
        je      L_0DDB                          ; 74 03
        jmp     L_0F08                          ; E9 2D 01
;   [conditional branch target (if/else)] L_0DDB
L_0DDB:
        mov     ax, word ptr es:[bx + 0x3c]     ; 26 8B 47 3C
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [loop start] L_0DE2
L_0DE2:
        push    word ptr [bp + 0x1a]            ; FF 76 1A
        push    word ptr [bp + 0x18]            ; FF 76 18
        push    word ptr [bp + 0x16]            ; FF 76 16
        push    word ptr [bp + 0x14]            ; FF 76 14
        push    word ptr [bp + 0x12]            ; FF 76 12
        call    L_094E                          ; E8 5A FB
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        mov     word ptr [bp - 0xc], dx         ; 89 56 F4
        cmp     dx, 0x8000                      ; 81 FA 00 80
        jne     L_0E07                          ; 75 07
        or      ax, ax                          ; 0B C0
        jne     L_0E07                          ; 75 03
        jmp     L_0F1D                          ; E9 16 01
;   [conditional branch target (if/else)] L_0E07
L_0E07:
        mov     ax, word ptr [bp + 0x18]        ; 8B 46 18
        mov     dx, word ptr [bp + 0x1a]        ; 8B 56 1A
        cmp     word ptr [bp - 0xc], dx         ; 39 56 F4
        jne     L_0E17                          ; 75 05
        cmp     word ptr [bp - 0xe], ax         ; 39 46 F2
        je      L_0E1C                          ; 74 05
;   [conditional branch target (if/else)] L_0E17
L_0E17:
        mov     word ptr [bp - 8], 1            ; C7 46 F8 01 00
;   [conditional branch target (if/else)] L_0E1C
L_0E1C:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A 49 0E 00 00 [FIXUP]
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_003B                          ; E8 FF F1
;   [loop start] L_0E3C
L_0E3C:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1e]            ; FF 76 1E
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far _entry_107                  ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp + 0x16]            ; FF 76 16
        call    L_0F4F                          ; E8 F6 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr es:[bx + 0x38]     ; 26 8B 47 38
        imul    word ptr [bp - 6]               ; F7 6E FA
        add     word ptr es:[bx + 0x3c], ax     ; 26 01 47 3C
        cmp     word ptr es:[bx + 0x3c], 0x3c0  ; 26 81 7F 3C C0 03
        jg      L_0EE3                          ; 7F 71
        cmp     word ptr [bp + 0x1e], 0         ; 83 7E 1E 00
        jl      L_0E88                          ; 7C 10
        push    es                              ; 06
        push    bx                              ; 53
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
        push    word ptr [bp - 6]               ; FF 76 FA
        call    far _entry_106                  ; 9A 5B 00 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0E88
L_0E88:
        mov     ax, word ptr [bp - 0x10]        ; 8B 46 F0
        cmp     word ptr [bp + 0x1e], ax        ; 39 46 1E
        jge     L_0E93                          ; 7D 03
        mov     word ptr [bp + 0x1e], ax        ; 89 46 1E
;   [conditional branch target (if/else)] L_0E93
L_0E93:
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
        push    word ptr [bp - 0xc]             ; FF 76 F4
        push    word ptr [bp - 0xe]             ; FF 76 F2
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
        add     word ptr [bp - 0xe], ax         ; 01 46 F2
        sub     word ptr [bp + 0x16], ax        ; 29 46 16
        je      L_0EE3                          ; 74 03
        jmp     L_0E3C                          ; E9 59 FF
;   [conditional branch target (if/else)] L_0EE3
L_0EE3:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        call    L_00AF                          ; E8 BD F1
        dec     word ptr [bp - 0xe]             ; FF 4E F2
        les     bx, ptr [bp - 0xe]              ; C4 5E F2
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0F21                          ; 75 23
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        and     byte ptr es:[bx + 0x26], 0xfd   ; 26 80 67 26 FD
        jmp     L_0F29                          ; EB 21
;   [unconditional branch target] L_0F08
L_0F08:
        push    word ptr [bp + 0x22]            ; FF 76 22
        push    word ptr [bp + 0x20]            ; FF 76 20
        push    word ptr [bp + 0x1c]            ; FF 76 1C
        call    far _entry_108                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0F1D                          ; 74 03
        jmp     L_0DE2                          ; E9 C5 FE
;   [branch target] L_0F1D
L_0F1D:
        sub     ax, ax                          ; 2B C0
        jmp     L_0F44                          ; EB 23
;   [conditional branch target (if/else)] L_0F21
L_0F21:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        or      byte ptr es:[bx + 0x26], 2      ; 26 80 4F 26 02
;   [unconditional branch target] L_0F29
L_0F29:
        les     bx, ptr [bp + 0x20]             ; C4 5E 20
        mov     ax, word ptr [bp + 0x1e]        ; 8B 46 1E
        mov     word ptr es:[bx + 0x46], ax     ; 26 89 47 46
        cmp     word ptr [bp - 8], 0            ; 83 7E F8 00
        je      L_0F41                          ; 74 08
        push    word ptr [bp - 0xc]             ; FF 76 F4
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A 61 08 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0F41
L_0F41:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0F44
L_0F44:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0x1e                            ; CA 1E 00
;-------------------------------------------------------------------------
; sub_0F4F   offset=0x0F4F  size=26 instr  segment=seg2.asm
;
; Classification (pass8): c_high  (score C=7, ASM=0)
; Prologue: standard_bp     Epilogue: ret_n   (PASCAL NEAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_0F4F
L_0F4F:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        push    si                              ; 56
        sub     si, si                          ; 2B F6
        jmp     L_0F67                          ; EB 0D
;   [loop start] L_0F5A
L_0F5A:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        je      L_0F7B                          ; 74 18
        inc     si                              ; 46
        inc     word ptr [bp + 6]               ; FF 46 06
;   [unconditional branch target] L_0F67
L_0F67:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_0F5A                          ; 7F EE
        jmp     L_0F7B                          ; EB 0D
;   [loop start] L_0F6E
L_0F6E:
        les     bx, ptr [bp + 6]                ; C4 5E 06
        inc     word ptr [bp + 6]               ; FF 46 06
        cmp     byte ptr es:[bx], 0x20          ; 26 80 3F 20
        jne     L_0F80                          ; 75 06
        inc     si                              ; 46
;   [branch target] L_0F7B
L_0F7B:
        cmp     word ptr [bp + 4], si           ; 39 76 04
        jg      L_0F6E                          ; 7F EE
;   [error/early exit] L_0F80
L_0F80:
        mov     ax, si                          ; 8B C6
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     6                               ; C2 06 00
;-------------------------------------------------------------------------
; sub_0F89   offset=0x0F89  size=46 instr  segment=seg2.asm
;
; Classification (pass8): c_medium  (score C=7, ASM=2)
; Prologue: standard_bp     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_0F89
L_0F89:
        ;   = cProc <2> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 2                           ; 83 EC 02
        les     bx, ptr [bp + 4]                ; C4 5E 04
        mov     ax, word ptr es:[bx + 0x14]     ; 26 8B 47 14
        mov     word ptr [bp - 2], ax           ; 89 46 FE
        or      ax, ax                          ; 0B C0
        jne     L_0FA7                          ; 75 0A
        mov     ax, word ptr es:[bx + 0x19]     ; 26 8B 47 19
        sub     ax, 3                           ; 2D 03 00
        mov     word ptr [bp - 2], ax           ; 89 46 FE
;   [conditional branch target (if/else)] L_0FA7
L_0FA7:
        cmp     word ptr [bp - 2], 0xc          ; 83 7E FE 0C
        jge     L_0FD4                          ; 7D 27
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 7      ; 26 83 7F 38 07
        je      L_0FF9                          ; 74 42
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x217]            ; A1 17 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x219]            ; A0 19 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A EC 0F 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 7      ; 26 C7 47 38 07 00
        jmp     L_0FF9                          ; EB 25
;   [conditional branch target (if/else)] L_0FD4
L_0FD4:
        les     bx, ptr [bp + 8]                ; C4 5E 08
        cmp     word ptr es:[bx + 0x38], 0xc    ; 26 83 7F 38 0C
        je      L_0FF9                          ; 74 1B
        push    es                              ; 06
        push    bx                              ; 53
        mov     ax, word ptr [0x21a]            ; A1 1A 02
        push    ds                              ; 1E
        push    ax                              ; 50
        mov     al, byte ptr [0x21c]            ; A0 1C 02
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        call    far _entry_106                  ; 9A 54 0B 00 00 [FIXUP]
        les     bx, ptr [bp + 8]                ; C4 5E 08
        mov     word ptr es:[bx + 0x38], 0xc    ; 26 C7 47 38 0C 00
;   [branch target] L_0FF9
L_0FF9:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      008h                            ; 08

TI850_TEXT ENDS

        END
