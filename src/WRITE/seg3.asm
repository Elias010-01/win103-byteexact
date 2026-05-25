; ======================================================================
; WRITE / seg3.asm   (segment 3 of WRITE)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):         4
; Total instructions:                  501
; 
; Classification (pass8):
;   C-origin (high+medium):              3
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     10 (10 unique)
;   Top:
;        1  GETDEVICECAPS
;        1  CLIENTTOSCREEN
;        1  GETCLIENTRECT
;        1  GETDC
;        1  GETSYSTEMMETRICS
;        1  ISWINDOW
;        1  RELEASEDC
;        1  SETCURSOR
; ======================================================================
; AUTO-GENERATED from original WRITE segment 3
; segment_size=2112 bytes, flags=0xf170
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

WRITE_TEXT SEGMENT BYTE PUBLIC 'CODE'

        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, di                          ; 8B C7
        add     ax, cx                          ; 03 C1
        push    ds                              ; 1E
        pop     es                              ; 07
        cmp     si, di                          ; 3B F7
        jae     L_0026                          ; 73 07
        add     si, cx                          ; 03 F1
        add     di, cx                          ; 03 F9
        dec     si                              ; 4E
        dec     di                              ; 4F
        std                                     ; FD
;   [conditional branch target (if/else)] L_0026
L_0026:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cld                                     ; FC
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
        les     di, ptr [bp + 8]                ; C4 7E 08
        lds     si, ptr [bp + 0xc]              ; C5 76 0C
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, di                          ; 8B C7
        add     ax, cx                          ; 03 C1
        cmp     si, di                          ; 3B F7
        jae     L_005A                          ; 73 07
        add     si, cx                          ; 03 F1
        add     di, cx                          ; 03 F9
        dec     si                              ; 4E
        dec     di                              ; 4F
        std                                     ; FD
;   [conditional branch target (if/else)] L_005A
L_005A:
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        cld                                     ; FC
        mov     dx, es                          ; 8C C2
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        push    ds                              ; 1E
        pop     es                              ; 07
        cmp     si, di                          ; 3B F7
        jae     L_0096                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
;   [conditional branch target (if/else)] L_0096
L_0096:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
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
        les     di, ptr [bp + 8]                ; C4 7E 08
        lds     si, ptr [bp + 0xc]              ; C5 76 0C
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, di                          ; 8B C7
        mov     bx, cx                          ; 8B D9
        shl     bx, 1                           ; D1 E3
        add     ax, bx                          ; 03 C3
        cmp     si, di                          ; 3B F7
        jae     L_00CE                          ; 73 07
        dec     bx                              ; 4B
        dec     bx                              ; 4B
        add     si, bx                          ; 03 F3
        add     di, bx                          ; 03 FB
        std                                     ; FD
;   [conditional branch target (if/else)] L_00CE
L_00CE:
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        cld                                     ; FC
        mov     dx, es                          ; 8C C2
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    0xa                             ; CA 0A 00
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
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
        push    di                              ; 57
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     ax, word ptr [bp + 8]           ; 8B 46 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        cld                                     ; FC
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     di                              ; 5F
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
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     di, word ptr [bp + 0xa]         ; 8B 7E 0A
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        cld                                     ; FC
        rep stosb byte ptr es:[di], al          ; F3 AA
        pop     di                              ; 5F
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
        push    di                              ; 57
        les     di, ptr [bp + 0xa]              ; C4 7E 0A
        mov     al, byte ptr [bp + 8]           ; 8A 46 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        cld                                     ; FC
        rep stosb byte ptr es:[di], al          ; F3 AA
        pop     di                              ; 5F
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
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     cx, bx                          ; 8B CB
        or      bx, bx                          ; 0B DB
        jns     L_0189                          ; 79 02
        neg     bx                              ; F7 DB
;   [conditional branch target (if/else)] L_0189
L_0189:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        xor     cx, ax                          ; 33 C8
        or      ax, ax                          ; 0B C0
        jns     L_0194                          ; 79 02
        neg     ax                              ; F7 D8
;   [conditional branch target (if/else)] L_0194
L_0194:
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        xor     cx, dx                          ; 33 CA
        or      dx, dx                          ; 0B D2
        jns     L_019F                          ; 79 02
        neg     dx                              ; F7 DA
;   [conditional branch target (if/else)] L_019F
L_019F:
        mul     dx                              ; F7 E2
        mov     cl, bl                          ; 8A CB
        sar     bx, 1                           ; D1 FB
        add     ax, bx                          ; 03 C3
        adc     dx, 0                           ; 83 D2 00
        shl     bx, 1                           ; D1 E3
        or      bl, cl                          ; 0A D9
        cmp     dx, bx                          ; 3B D3
        jae     L_01C9                          ; 73 17
        div     bx                              ; F7 F3
        or      ax, ax                          ; 0B C0
        js      L_01C9                          ; 78 11
        or      cx, cx                          ; 0B C9
        jns     L_01BE                          ; 79 02
        neg     ax                              ; F7 D8
;   [loop start (also forward branch)] L_01BE
L_01BE:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
;   [conditional branch target (if/else)] L_01C9
L_01C9:
        mov     ax, 0x7fff                      ; B8 FF 7F
        or      cx, cx                          ; 0B C9
        jns     L_01BE                          ; 79 EE
        neg     ax                              ; F7 D8
        jmp     L_01BE                          ; EB EA
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        mov     bx, word ptr [bp + 8]           ; 8B 5E 08
        mov     si, word ptr [bp + 6]           ; 8B 76 06
;   [loop start] L_01E5
L_01E5:
        mov     al, byte ptr [bx]               ; 8A 07
        cmp     al, byte ptr [si]               ; 3A 04
        jne     L_01F7                          ; 75 0C
        inc     bx                              ; 43
        inc     si                              ; 46
        test    al, al                          ; 84 C0
        jne     L_01E5                          ; 75 F4
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_01F9                          ; EB 03
        nop                                     ; 90
;   [conditional branch target (if/else)] L_01F7
L_01F7:
        xor     ax, ax                          ; 33 C0
;   [unconditional branch target] L_01F9
L_01F9:
        pop     si                              ; 5E
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
        push    si                              ; 56
        push    di                              ; 57
        mov     ax, ds                          ; 8C D8
        mov     es, ax                          ; 8E C0
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     di, word ptr [bp + 8]           ; 8B 7E 08
        mov     cx, word ptr [bp + 6]           ; 8B 4E 06
        mov     ax, cx                          ; 8B C1
        dec     ax                              ; 48
        add     si, ax                          ; 03 F0
        add     di, ax                          ; 03 F8
        std                                     ; FD
        repe cmpsb byte ptr [si], byte ptr es:[di] ; F3 A6
        je      L_022B                          ; 74 01
        inc     cx                              ; 41
;   [conditional branch target (if/else)] L_022B
L_022B:
        mov     ax, cx                          ; 8B C1
        cld                                     ; FC
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
        mov     ah, 0x2c                        ; B4 2C
        int     0x21                            ; CD 21
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        mov     word ptr [bx], cx               ; 89 0F
        mov     word ptr [bx + 2], dx           ; 89 57 02
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jl      L_0280                          ; 7C 0F
        jg      L_0278                          ; 7F 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jbe     L_0280                          ; 76 08
;   [conditional branch target (if/else)] L_0278
L_0278:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_0286                          ; EB 06
;   [conditional branch target (if/else)] L_0280
L_0280:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_0286
L_0286:
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
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
        cmp     word ptr [bp + 0xc], dx         ; 39 56 0C
        jg      L_02B5                          ; 7F 0F
        jl      L_02AD                          ; 7C 05
        cmp     word ptr [bp + 0xa], ax         ; 39 46 0A
        jae     L_02B5                          ; 73 08
;   [conditional branch target (if/else)] L_02AD
L_02AD:
        mov     ax, word ptr [bp + 0xa]         ; 8B 46 0A
        mov     dx, word ptr [bp + 0xc]         ; 8B 56 0C
        jmp     L_02BB                          ; EB 06
;   [conditional branch target (if/else)] L_02B5
L_02B5:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     dx, word ptr [bp + 8]           ; 8B 56 08
;   [unconditional branch target] L_02BB
L_02BB:
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     si, di                          ; 3B F7
        jae     L_02E0                          ; 73 04
        mov     ax, si                          ; 8B C6
        jmp     L_02E2                          ; EB 02
;   [conditional branch target (if/else)] L_02E0
L_02E0:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_02E2
L_02E2:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     si, di                          ; 3B F7
        jbe     L_0309                          ; 76 04
        mov     ax, si                          ; 8B C6
        jmp     L_030B                          ; EB 02
;   [conditional branch target (if/else)] L_0309
L_0309:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_030B
L_030B:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     si, di                          ; 3B F7
        jge     L_0332                          ; 7D 04
        mov     ax, si                          ; 8B C6
        jmp     L_0334                          ; EB 02
;   [conditional branch target (if/else)] L_0332
L_0332:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_0334
L_0334:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        cmp     si, di                          ; 3B F7
        jle     L_035B                          ; 7E 04
        mov     ax, si                          ; 8B C6
        jmp     L_035D                          ; EB 02
;   [conditional branch target (if/else)] L_035B
L_035B:
        mov     ax, di                          ; 8B C7
;   [unconditional branch target] L_035D
L_035D:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        ; constant WM_CREATE
        mov     di, 1                           ; BF 01 00
        jmp     L_0382                          ; EB 01
;   [loop start] L_0381
L_0381:
        inc     di                              ; 47
;   [unconditional branch target] L_0382
L_0382:
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_0381                          ; 75 F8
        mov     ax, di                          ; 8B C7
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 2]      ; 8B 41 02
        mov     dx, word ptr [bx + di + 4]      ; 8B 51 04
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 6]           ; 8B 76 06
        mov     bx, word ptr [0xf92]            ; 8B 1E 92 0F
        mov     bx, word ptr [bx]               ; 8B 1F
        mov     ax, 0x16                        ; B8 16 00
        imul    si                              ; F7 EE
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [bx + di + 0xa]    ; 8B 41 0A
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
        mov     word ptr [0xcac], 0             ; C7 06 AC 0C 00 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_0415                          ; E8 09 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;-------------------------------------------------------------------------
; sub_0415   offset=0x0415  size=92 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=1)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Near calls (internal): L_04BE
;-------------------------------------------------------------------------
;   [sub-routine] L_0415
L_0415:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x65a], ax            ; A3 5A 06
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
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_0450                          ; EB 04
;   [loop start] L_044C
L_044C:
        inc     di                              ; 47
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_0450
L_0450:
        lodsb   al, byte ptr [si]               ; AC
        mov     byte ptr [di], al               ; 88 05
        or      al, al                          ; 0A C0
        jne     L_044C                          ; 75 F5
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        sub     sp, 6                           ; 83 EC 06
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        jmp     L_0488                          ; EB 0A
;   [loop start] L_047E
L_047E:
        cmp     word ptr [bp - 6], 0            ; 83 7E FA 00
        jne     L_0488                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_04B1                          ; EB 29
;   [branch target] L_0488
L_0488:
        inc     si                              ; 46
        mov     al, byte ptr [si - 1]           ; 8A 44 FF
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BE                          ; E8 2A 00
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        inc     di                              ; 47
        mov     al, byte ptr [di - 1]           ; 8A 45 FF
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BE                          ; E8 1B 00
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_047E                          ; 74 D3
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 4]           ; 2B 46 FC
;   [unconditional branch target] L_04B1
L_04B1:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;-------------------------------------------------------------------------
; sub_04BE   offset=0x04BE  size=256 instr  segment=seg3.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;
; Far API calls:
;   GETDEVICECAPS(HDC hDC, INT iCap) -> INT
;   CLIENTTOSCREEN
;   GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
;   GETDC(HWND hWnd) -> HDC
;   GETSYSTEMMETRICS
;   ISWINDOW
;   RELEASEDC(HWND hWnd, HDC hDC) -> INT
;   SETCURSOR
;   SETCURSORPOS
;   SHOWCURSOR
;
; Near calls (internal): L_070D, L_074D
;-------------------------------------------------------------------------
;   [sub-routine] L_04BE
L_04BE:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_074D                          ; E8 7A 02
        or      ax, ax                          ; 0B C0
        je      L_04E1                          ; 74 0A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        add     ax, 0x20                        ; 05 20 00
        jmp     L_04E6                          ; EB 05
;   [conditional branch target (if/else)] L_04E1
L_04E1:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
;   [unconditional branch target] L_04E6
L_04E6:
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
        sub     sp, 0x14                        ; 83 EC 14
        mov     ax, word ptr [0x7d2]            ; A1 D2 07
        inc     word ptr [0x7d2]                ; FF 06 D2 07
        or      ax, ax                          ; 0B C0
        je      L_050C                          ; 74 03
        jmp     L_0601                          ; E9 F5 00
;   [conditional branch target (if/else)] L_050C
L_050C:
        mov     word ptr [0x64], 1              ; C7 06 64 00 01 00
        mov     word ptr [0x60], 1              ; C7 06 60 00 01 00
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_0522                          ; 74 03
        jmp     L_05CE                          ; E9 AC 00
;   [conditional branch target (if/else)] L_0522
L_0522:
        mov     ax, word ptr [0x7aa]            ; A1 AA 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
        or      ax, ax                          ; 0B C0
        jne     L_0532                          ; 75 06
        mov     ax, word ptr [0x780]            ; A1 80 07
        mov     word ptr [bp - 0xe], ax         ; 89 46 F2
;   [conditional branch target (if/else)] L_0532
L_0532:
        cmp     word ptr [0x38], 0              ; 83 3E 38 00 00
        jne     L_0583                          ; 75 4A
        cmp     word ptr [bp - 0xe], 0          ; 83 7E F2 00
        je      L_0583                          ; 74 44
        push    word ptr [bp - 0xe]             ; FF 76 F2
        call    far USER.ISWINDOW               ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0583                          ; 74 38
        push    word ptr [bp - 0xe]             ; FF 76 F2
        ;   ^ arg hWnd
        lea     ax, [bp - 0xc]                  ; 8D 46 F4
        push    ss                              ; 16
        ;   ^ arg lpRect (high/segment)
        push    ax                              ; 50
        ;   ^ arg lpRect (low/offset)
        ; --> GETCLIENTRECT(HWND hWnd, LPRECT lpRect) -> VOID
        call    far USER.GETCLIENTRECT          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        sub     ax, word ptr [bp - 0xc]         ; 2B 46 F4
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        sub     ax, word ptr [bp - 0xa]         ; 2B 46 F6
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        push    word ptr [bp - 0xe]             ; FF 76 F2
        lea     ax, [bp - 0x12]                 ; 8D 46 EE
        push    ss                              ; 16
        push    ax                              ; 50
        call    far USER.CLIENTTOSCREEN         ; 9A FF FF 00 00 [FIXUP]
        jmp     L_05C3                          ; EB 40
;   [conditional branch target (if/else)] L_0583
L_0583:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        ; --> GETDC(HWND hWnd) -> HDC
        call    far USER.GETDC                  ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 0x14], ax        ; 89 46 EC
        or      ax, ax                          ; 0B C0
        je      L_05CE                          ; 74 3C
        push    ax                              ; 50
        ;   ^ arg hDC
        mov     ax, 8                           ; B8 08 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A AC 05 00 00 [FIXUP]
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x12], ax        ; 89 46 EE
        push    word ptr [bp - 0x14]            ; FF 76 EC
        ;   ^ arg hDC
        mov     ax, 0xa                         ; B8 0A 00
        push    ax                              ; 50
        ;   ^ arg iCap
        ; --> GETDEVICECAPS(HDC hDC, INT iCap) -> INT
        call    far GDI.GETDEVICECAPS           ; 9A FF FF 00 00 [FIXUP]
        cdq                                     ; 99
        sub     ax, dx                          ; 2B C2
        sar     ax, 1                           ; D1 F8
        mov     word ptr [bp - 0x10], ax        ; 89 46 F0
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg hWnd
        push    word ptr [bp - 0x14]            ; FF 76 EC
        ;   ^ arg hDC
        ; --> RELEASEDC(HWND hWnd, HDC hDC) -> INT
        call    far USER.RELEASEDC              ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_05C3
L_05C3:
        push    word ptr [bp - 0x12]            ; FF 76 EE
        push    word ptr [bp - 0x10]            ; FF 76 F0
        call    far USER.SETCURSORPOS           ; 9A FF FF 00 00 [FIXUP]
;   [branch target] L_05CE
L_05CE:
        push    word ptr [0xc32]                ; FF 36 32 0C
        call    far USER.SETCURSOR              ; 9A FF FF 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A F3 05 00 00 [FIXUP]
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        jmp     L_05F7                          ; EB 09
;   [loop start] L_05EE
L_05EE:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 34 06 00 00 [FIXUP]
;   [unconditional branch target] L_05F7
L_05F7:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        or      ax, ax                          ; 0B C0
        jl      L_05EE                          ; 7C ED
;   [unconditional branch target] L_0601
L_0601:
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
        cmp     word ptr [0x7d2], 0             ; 83 3E D2 07 00
        jle     L_0686                          ; 7E 68
        dec     word ptr [0x7d2]                ; FF 0E D2 07
        jne     L_0686                          ; 75 62
        mov     word ptr [0x64], 0              ; C7 06 64 00 00 00
        mov     word ptr [0x60], 0              ; C7 06 60 00 00 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A FF FF 00 00 [FIXUP]
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_0644                          ; 74 05
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        jmp     L_0646                          ; EB 02
;   [conditional branch target (if/else)] L_0644
L_0644:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0646
L_0646:
        push    ax                              ; 50
        call    far USER.SETCURSOR              ; 9A D3 05 00 00 [FIXUP]
        mov     ax, 0x19                        ; B8 19 00
        push    ax                              ; 50
        call    far USER.GETSYSTEMMETRICS       ; 9A E5 05 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        cmp     word ptr [0x62], 0              ; 83 3E 62 00 00
        je      L_067C                          ; 74 1D
;   [loop start] L_065F
L_065F:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        inc     word ptr [bp - 4]               ; FF 46 FC
        or      ax, ax                          ; 0B C0
        jge     L_0686                          ; 7D 1D
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A 78 06 00 00 [FIXUP]
        jmp     L_065F                          ; EB EB
;   [loop start] L_0674
L_0674:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far USER.SHOWCURSOR             ; 9A DC 05 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_067C
L_067C:
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        dec     word ptr [bp - 4]               ; FF 4E FC
        or      ax, ax                          ; 0B C0
        jge     L_0674                          ; 7D EE
;   [conditional branch target (if/else)] L_0686
L_0686:
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
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     di, word ptr [bp + 6]           ; 8B 7E 06
        jmp     L_06B0                          ; EB 0B
;   [loop start] L_06A5
L_06A5:
        inc     si                              ; 46
        cmp     byte ptr [si - 1], 0            ; 80 7C FF 00
        jne     L_06B0                          ; 75 04
        sub     ax, ax                          ; 2B C0
        jmp     L_06BA                          ; EB 0A
;   [branch target] L_06B0
L_06B0:
        mov     al, byte ptr [si]               ; 8A 04
        sub     ah, ah                          ; 2A E4
        cmp     ax, di                          ; 3B C7
        jne     L_06A5                          ; 75 ED
        mov     ax, si                          ; 8B C6
;   [unconditional branch target] L_06BA
L_06BA:
        pop     si                              ; 5E
        pop     di                              ; 5F
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
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070D                          ; E8 31 00
        or      ax, ax                          ; 0B C0
        jne     L_06FB                          ; 75 1B
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_074D                          ; E8 62 00
        or      ax, ax                          ; 0B C0
        jne     L_06FB                          ; 75 0C
        cmp     byte ptr [bp + 6], 0xff         ; 80 7E 06 FF
        je      L_06FB                          ; 74 06
        cmp     byte ptr [bp + 6], 0xdf         ; 80 7E 06 DF
        jne     L_0700                          ; 75 05
;   [conditional branch target (if/else)] L_06FB
L_06FB:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0702                          ; EB 02
;   [conditional branch target (if/else)] L_0700
L_0700:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0702
L_0702:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;-------------------------------------------------------------------------
; sub_070D   offset=0x070D  size=29 instr  segment=seg3.asm
;
; Classification (pass8): c_medium  (score C=4, ASM=0)
; Prologue: saves_regs     Epilogue: retf_n   (PASCAL FAR, callee cleans args)
;-------------------------------------------------------------------------
;   [sub-routine] L_070D
L_070D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     byte ptr [bp + 6], 0x61         ; 80 7E 06 61
        jb      L_0723                          ; 72 06
        cmp     byte ptr [bp + 6], 0x7a         ; 80 7E 06 7A
        jbe     L_073B                          ; 76 18
;   [conditional branch target (if/else)] L_0723
L_0723:
        cmp     byte ptr [bp + 6], 0xe0         ; 80 7E 06 E0
        jb      L_072F                          ; 72 06
        cmp     byte ptr [bp + 6], 0xf6         ; 80 7E 06 F6
        jbe     L_073B                          ; 76 0C
;   [conditional branch target (if/else)] L_072F
L_072F:
        cmp     byte ptr [bp + 6], 0xf8         ; 80 7E 06 F8
        jb      L_0740                          ; 72 0B
        cmp     byte ptr [bp + 6], 0xfe         ; 80 7E 06 FE
        ja      L_0740                          ; 77 05
;   [conditional branch target (if/else)] L_073B
L_073B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0742                          ; EB 02
;   [conditional branch target (if/else)] L_0740
L_0740:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0742
L_0742:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
;-------------------------------------------------------------------------
; sub_074D   offset=0x074D  size=124 instr  segment=seg3.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_04BE, L_070D
;-------------------------------------------------------------------------
;   [sub-routine] L_074D
L_074D:
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     byte ptr [bp + 6], 0x41         ; 80 7E 06 41
        jb      L_0763                          ; 72 06
        cmp     byte ptr [bp + 6], 0x5a         ; 80 7E 06 5A
        jbe     L_077B                          ; 76 18
;   [conditional branch target (if/else)] L_0763
L_0763:
        cmp     byte ptr [bp + 6], 0xc0         ; 80 7E 06 C0
        jb      L_076F                          ; 72 06
        cmp     byte ptr [bp + 6], 0xd6         ; 80 7E 06 D6
        jbe     L_077B                          ; 76 0C
;   [conditional branch target (if/else)] L_076F
L_076F:
        cmp     byte ptr [bp + 6], 0xd8         ; 80 7E 06 D8
        jb      L_0780                          ; 72 0B
        cmp     byte ptr [bp + 6], 0xde         ; 80 7E 06 DE
        ja      L_0780                          ; 77 05
;   [conditional branch target (if/else)] L_077B
L_077B:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0782                          ; EB 02
;   [conditional branch target (if/else)] L_0780
L_0780:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0782
L_0782:
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
        cmp     byte ptr [bp + 6], 0x30         ; 80 7E 06 30
        jb      L_07A8                          ; 72 0B
        cmp     byte ptr [bp + 6], 0x39         ; 80 7E 06 39
        ja      L_07A8                          ; 77 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_07AA                          ; EB 02
;   [conditional branch target (if/else)] L_07A8
L_07A8:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_07AA
L_07AA:
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
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_070D                          ; E8 43 FF
        or      ax, ax                          ; 0B C0
        je      L_07D8                          ; 74 0A
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
        sub     ax, 0x20                        ; 2D 20 00
        jmp     L_07DD                          ; EB 05
;   [conditional branch target (if/else)] L_07D8
L_07D8:
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        sub     ah, ah                          ; 2A E4
;   [unconditional branch target] L_07DD
L_07DD:
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
        push    si                              ; 56
        mov     word ptr [bp - 4], 0            ; C7 46 FC 00 00
        jmp     L_082A                          ; EB 2D
;   [loop start] L_07FD
L_07FD:
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        mov     al, byte ptr [bx + si]          ; 8A 00
        sub     ah, ah                          ; 2A E4
        push    ax                              ; 50
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BE                          ; E8 B1 FC
        mov     bx, word ptr [bp - 4]           ; 8B 5E FC
        mov     si, word ptr [bp + 0xa]         ; 8B 76 0A
        mov     cl, byte ptr [bx + si]          ; 8A 08
        sub     ch, ch                          ; 2A ED
        push    cx                              ; 51
        mov     si, ax                          ; 8B F0
        nop                                     ; 90
        push    cs                              ; 0E
        call    L_04BE                          ; E8 9F FC
        cmp     ax, si                          ; 3B C6
        je      L_0827                          ; 74 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0835                          ; EB 0E
;   [conditional branch target (if/else)] L_0827
L_0827:
        inc     word ptr [bp - 4]               ; FF 46 FC
;   [unconditional branch target] L_082A
L_082A:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        cmp     word ptr [bp - 4], ax           ; 39 46 FC
        jl      L_07FD                          ; 7C CB
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_0835
L_0835:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        db      0cah                            ; CA
        push    es                              ; 06

WRITE_TEXT ENDS

        END
