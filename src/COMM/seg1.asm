; ======================================================================
; COMM / seg1.asm   (segment 1 of COMM)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        43
; Total instructions:                 1272
; 
; Classification (pass8):
;   C-origin (high+medium):              9
;   ASM-origin (high+medium):            4
;   Unclear:                            28
;   Tiny / unclassified:                 2
; 
; Far API calls in this segment:     2 (2 unique)
;   Top:
;        1  CREATESYSTEMTIMER
;        1  KILLSYSTEMTIMER
; ======================================================================
; AUTO-GENERATED from original COMM segment 1
; segment_size=2670 bytes, flags=0x0140
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

COMM_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; INICOM  (offset 0x0000, size 27 bytes)
;-----------------------------------------------------------------------
INICOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_01D1                          ; E8 C1 01
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
INICOM ENDP


;-----------------------------------------------------------------------
; SETCOM  (offset 0x001B, size 27 bytes)
;-----------------------------------------------------------------------
SETCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_044D                          ; E8 22 04
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETCOM ENDP


;-----------------------------------------------------------------------
; SETQUE  (offset 0x0036, size 30 bytes)
;-----------------------------------------------------------------------
SETQUE PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_06A3                          ; E8 5A 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
SETQUE ENDP


;-----------------------------------------------------------------------
; RECCOM  (offset 0x0054, size 39 bytes)
;-----------------------------------------------------------------------
RECCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_07EE                          ; E8 8A 07
        mov     cx, ax                          ; 8B C8
        mov     ah, 0                           ; B4 00
        jne     L_0070                          ; 75 06
        mov     ax, 0xfffe                      ; B8 FE FF
        jcxz    L_0070                          ; E3 01
        inc     ax                              ; 40
;   [conditional branch target (if/else)] L_0070
L_0070:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
RECCOM ENDP


;-----------------------------------------------------------------------
; SNDCOM  (offset 0x007B, size 30 bytes)
;-----------------------------------------------------------------------
SNDCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        call    L_02E7                          ; E8 59 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SNDCOM ENDP


;-----------------------------------------------------------------------
; CTX  (offset 0x0099, size 30 bytes)
;-----------------------------------------------------------------------
CTX PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     al, byte ptr [bp + 6]           ; 8A 46 06
        call    L_02C0                          ; E8 14 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CTX ENDP


;-----------------------------------------------------------------------
; TRMCOM  (offset 0x00B7, size 27 bytes)
;-----------------------------------------------------------------------
TRMCOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_032D                          ; E8 66 02
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
TRMCOM ENDP


;-----------------------------------------------------------------------
; STACOM  (offset 0x00D2, size 34 bytes)
;-----------------------------------------------------------------------
STACOM PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 0xa]         ; 8A 66 0A
        les     bx, ptr [bp + 6]                ; C4 5E 06
        call    L_06F6                          ; E8 0F 06
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    6                               ; CA 06 00
STACOM ENDP


;-----------------------------------------------------------------------
; CEXTFCN  (offset 0x00F4, size 30 bytes)
;-----------------------------------------------------------------------
CEXTFCN PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_076C                          ; E8 65 06
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEXTFCN ENDP


;-----------------------------------------------------------------------
; CFLUSH  (offset 0x0112, size 34 bytes)
;-----------------------------------------------------------------------
CFLUSH PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bh, byte ptr [bp + 6]           ; 8A 7E 06
        call    L_086F                          ; E8 48 07
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CFLUSH ENDP


;-----------------------------------------------------------------------
; CEVT  (offset 0x0134, size 30 bytes)
;-----------------------------------------------------------------------
CEVT PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_06C8                          ; E8 81 05
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEVT ENDP


;-----------------------------------------------------------------------
; CEVTGET  (offset 0x0152, size 30 bytes)
;-----------------------------------------------------------------------
CEVTGET PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ah, byte ptr [bp + 8]           ; 8A 66 08
        mov     bx, word ptr [bp + 6]           ; 8B 5E 06
        call    L_06DE                          ; E8 79 05
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
CEVTGET ENDP


;-----------------------------------------------------------------------
; CSETBRK  (offset 0x0170, size 31 bytes)
;-----------------------------------------------------------------------
CSETBRK PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_0741                          ; E8 BF 05
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CSETBRK ENDP


;-----------------------------------------------------------------------
; CCLRBRK  (offset 0x018F, size 31 bytes)
;-----------------------------------------------------------------------
CCLRBRK PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_0746                          ; E8 A5 05
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
CCLRBRK ENDP


;-----------------------------------------------------------------------
; GETDCB  (offset 0x01AE, size 31 bytes)
;-----------------------------------------------------------------------
GETDCB PROC FAR
        mov     ax, ds                          ; 8C D8
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr [bp + 6]           ; 8A 66 06
        call    L_07DE                          ; E8 1E 06
        pop     di                              ; 5F
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETDCB ENDP

        add     byte ptr [bx + si], al          ; 00 00
        add     byte ptr [bx + si], al          ; 00 00
; Description (heuristic):
;   Pure computation / dispatcher (108 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_01D1   offset=0x01D1  size=108 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=5)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_03CD, L_044D, L_05C6, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_01D1
L_01D1:
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr es:[bx]            ; 26 8A 27
        call    L_0677                          ; E8 9E 04
        jae     L_01E1                          ; 73 06
        mov     ax, 0xffff                      ; B8 FF FF
;   [loop start] L_01DE
L_01DE:
        jmp     L_02BD                          ; E9 DC 00
;   [conditional branch target (if/else)] L_01E1
L_01E1:
        push    ds                              ; 1E
        mov     word ptr cs:[0x1cd], ds         ; 2E 8C 1E CD 01
        mov     di, word ptr [si + 0x1e]        ; 8B 7C 1E
        mov     ax, 0xffff                      ; B8 FF FF
        mov     ds, ax                          ; 8E D8
        mov     al, byte ptr [0xe]              ; A0 0E 00
        xor     cx, cx                          ; 33 C9
        mov     ds, cx                          ; 8E D9
        xchg    word ptr [di], cx               ; 87 0D
        pop     ds                              ; 1F
        mov     byte ptr [0xfc], al             ; A2 FC 00
        mov     ax, 0xfff6                      ; B8 F6 FF
        jcxz    L_01DE                          ; E3 DD
        mov     word ptr [si + 0x1c], cx        ; 89 4C 1C
        test    di, 8                           ; F7 C7 08 00
        je      L_023F                          ; 74 35
        call    L_044D                          ; E8 40 02
        mov     ax, 0x1e                        ; B8 1E 00
        cmp     byte ptr [0xfc], 0xfc           ; 80 3E FC 00 FC
        je      L_021A                          ; 74 03
        mov     ax, 0xa                         ; B8 0A 00
;   [conditional branch target (if/else)] L_021A
L_021A:
        mov     word ptr [0xfd], ax             ; A3 FD 00
        call    L_05C6                          ; E8 A6 03
        jb      L_023D                          ; 72 1B
        mov     dl, byte ptr [si]               ; 8A 14
        and     dx, 3                           ; 81 E2 03 00
        ; constant WM_LBUTTONDBLCLK
        mov     ax, 0x203                       ; B8 03 02
        int     0x2f                            ; CD 2F
        ; constant WM_LBUTTONDOWN
        mov     ax, 0x201                       ; B8 01 02
        int     0x2f                            ; CD 2F
        xor     cx, cx                          ; 33 C9
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    ds                              ; 1E
        mov     ds, cx                          ; 8E D9
        mov     word ptr [bx], cx               ; 89 0F
        pop     ds                              ; 1F
;   [conditional branch target (if/else)] L_023D
L_023D:
        jmp     L_02B8                          ; EB 79
;   [conditional branch target (if/else)] L_023F
L_023F:
        push    es                              ; 06
        xor     di, di                          ; 33 FF
        mov     es, di                          ; 8E C7
        mov     di, 0x30                        ; BF 30 00
        mov     dx, 0x8a0                       ; BA A0 08
        mov     ax, 0xc10                       ; B8 10 0C
        cmp     ch, 3                           ; 80 FD 03
        je      L_025B                          ; 74 09
        mov     di, 0x2c                        ; BF 2C 00
        mov     dx, 0x89a                       ; BA 9A 08
        mov     ax, 0xb08                       ; B8 08 0B
;   [conditional branch target (if/else)] L_025B
L_025B:
        mov     word ptr [si + 0x48], ax        ; 89 44 48
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, byte ptr [si + 0x48]        ; 0A 44 48
        jmp     L_0266                          ; EB 00
;   [unconditional branch target] L_0266
L_0266:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        les     di, ptr es:[di]                 ; 26 C4 3D
        mov     word ptr [si + 0x4a], di        ; 89 7C 4A
        mov     word ptr [si + 0x4c], es        ; 8C 44 4C
        pop     es                              ; 07
        push    ds                              ; 1E
        mov     al, ah                          ; 8A C4
        push    cs                              ; 0E
        pop     ds                              ; 1F
        mov     ah, 0x25                        ; B4 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     dx, cx                          ; 8B D1
        xor     ax, ax                          ; 33 C0
        inc     dx                              ; 42
        out     dx, al                          ; EE
        add     dl, 3                           ; 80 C2 03
        jmp     L_0288                          ; EB 00
;   [unconditional branch target] L_0288
L_0288:
        out     dx, al                          ; EE
        push    es                              ; 06
        push    ds                              ; 1E
        pop     es                              ; 07
        lea     di, [si + 0x32]                 ; 8D 7C 32
        mov     cx, 6                           ; B9 06 00
        rep stosw word ptr es:[di], ax          ; F3 AB
        pop     es                              ; 07
        mov     byte ptr [si + 0x42], al        ; 88 44 42
        mov     word ptr [si + 0x22], ax        ; 89 44 22
        call    L_044D                          ; E8 AF 01
        je      L_02A7                          ; 74 07
        push    ax                              ; 50
        call    L_03CD                          ; E8 29 01
        pop     ax                              ; 58
        jmp     L_02BD                          ; EB 16
;   [conditional branch target (if/else)] L_02A7
L_02A7:
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        mov     ah, byte ptr [si + 0x48]        ; 8A 64 48
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        out     0x21, al                        ; E6 21
        sti                                     ; FB
        mov     byte ptr [si + 0x3e], 0         ; C6 44 3E 00
;   [unconditional branch target] L_02B8
L_02B8:
        xor     ax, ax                          ; 33 C0
        mov     word ptr [si + 0x1a], ax        ; 89 44 1A
;   [fall-through exit] L_02BD
L_02BD:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (20 instructions).

;-------------------------------------------------------------------------
; sub_02C0   offset=0x02C0  size=20 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_02E7, L_0656, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_02C0
L_02C0:
        push    si                              ; 56
        call    L_0677                          ; E8 B3 03
        jb      L_02E0                          ; 72 1A
        jns     L_02D1                          ; 79 09
        call    L_02E7                          ; E8 1C 00
        or      ax, ax                          ; 0B C0
        jne     L_02E2                          ; 75 13
        jmp     L_02DE                          ; EB 0D
;   [conditional branch target (if/else)] L_02D1
L_02D1:
        test    byte ptr [si + 0x3e], 0x40      ; F6 44 3E 40
        jne     L_02E2                          ; 75 0B
        mov     ah, al                          ; 8A E0
        cli                                     ; FA
        call    L_0656                          ; E8 79 03
        sti                                     ; FB
;   [unconditional branch target] L_02DE
L_02DE:
        xor     ax, ax                          ; 33 C0
;   [error/early exit] L_02E0
L_02E0:
        pop     si                              ; 5E
        ret                                     ; C3
;   [error/early exit] L_02E2
L_02E2:
        mov     ax, 0x4000                      ; B8 00 40
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (32 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_02E7   offset=0x02E7  size=32 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_03E8, L_05E6, L_065D, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_02E7
L_02E7:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 8B 03
        jb      L_0321                          ; 72 33
        jns     L_02F7                          ; 79 07
        xor     ch, ch                          ; 32 ED
        call    L_05E6                          ; E8 F1 02
        jmp     L_0321                          ; EB 2A
;   [conditional branch target (if/else)] L_02F7
L_02F7:
        push    ax                              ; 50
        call    L_03E8                          ; E8 ED 00
        pop     ax                              ; 58
        jne     L_0328                          ; 75 2A
        mov     cx, word ptr [si + 0x30]        ; 8B 4C 30
        cmp     cx, word ptr [si + 0x38]        ; 3B 4C 38
        jle     L_0324                          ; 7E 1E
        les     di, ptr [si + 0x2c]             ; C4 7C 2C
        mov     bx, word ptr [si + 0x3c]        ; 8B 5C 3C
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        cmp     bx, cx                          ; 3B D9
        jb      L_0316                          ; 72 02
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0316
L_0316:
        mov     word ptr [si + 0x3c], bx        ; 89 5C 3C
        inc     word ptr [si + 0x38]            ; FF 44 38
        call    L_065D                          ; E8 3E 03
        xor     ax, ax                          ; 33 C0
;   [loop start (also forward branch)] L_0321
L_0321:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0324
L_0324:
        or      byte ptr [si + 0x1b], 1         ; 80 4C 1B 01
;   [conditional branch target (if/else)] L_0328
L_0328:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
        jmp     L_0321                          ; EB F4
; Description (heuristic):
;   Mixed routine using: CREATESYSTEMTIMER, KILLSYSTEMTIMER.

;-------------------------------------------------------------------------
; sub_032D   offset=0x032D  size=40 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=5, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Far API calls:
;   CREATESYSTEMTIMER
;   KILLSYSTEMTIMER
;
; Near calls (internal): L_038D, L_0677, L_07EE
;-------------------------------------------------------------------------
;   [sub-routine] L_032D
L_032D:
        push    si                              ; 56
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        call    L_0677                          ; E8 43 03
        jb      L_038A                          ; 72 54
        js      L_0382                          ; 78 4A
        push    ax                              ; 50
        or      byte ptr [si + 0x42], 0x80      ; 80 4C 42 80
        mov     word ptr [si + 0x1a], cx        ; 89 4C 1A
        mov     word ptr [si + 0x32], cx        ; 89 4C 32
        call    L_07EE                          ; E8 A8 04
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0381                          ; E3 36
        mov     ax, 0x3e8                       ; B8 E8 03
        mov     bx, 0x5e0                       ; BB E0 05
        push    ax                              ; 50
        push    cs                              ; 0E
        push    bx                              ; 53
        call    far SYSTEM.CREATESYSTEMTIMER    ; 9A FF FF 00 00 [FIXUP]
;   [loop start] L_0359
L_0359:
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0375                          ; E3 17
        mov     word ptr cs:[0x1cf], 0x1e       ; 2E C7 06 CF 01 1E 00
;   [loop start] L_0365
L_0365:
        cmp     word ptr [si + 0x38], cx        ; 39 4C 38
        jne     L_0359                          ; 75 EF
        cmp     word ptr cs:[0x1cf], 0          ; 2E 83 3E CF 01 00
        jge     L_0365                          ; 7D F3
        mov     cx, 0xfffe                      ; B9 FE FF
;   [conditional branch target (if/else)] L_0375
L_0375:
        or      ax, ax                          ; 0B C0
        je      L_0381                          ; 74 08
        push    cx                              ; 51
        push    ax                              ; 50
        call    far SYSTEM.KILLSYSTEMTIMER      ; 9A FF FF 00 00 [FIXUP]
        pop     cx                              ; 59
;   [conditional branch target (if/else)] L_0381
L_0381:
        pop     ax                              ; 58
;   [conditional branch target (if/else)] L_0382
L_0382:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        call    L_038D                          ; E8 05 00
        mov     ax, cx                          ; 8B C1
;   [error/early exit] L_038A
L_038A:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_038D   offset=0x038D  size=31 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=0, ASM=9)
; Prologue: none     Epilogue: jmp_tail
;
; Near calls (internal): L_05C6
;-------------------------------------------------------------------------
;   [sub-routine] L_038D
L_038D:
        or      ah, ah                          ; 0A E4
        jns     L_03AB                          ; 79 1A
        call    L_05C6                          ; E8 32 02
        jb      L_03A6                          ; 72 10
        mov     dl, byte ptr [si]               ; 8A 14
        and     dx, 3                           ; 81 E2 03 00
        ; constant WM_LBUTTONUP
        mov     ax, 0x202                       ; B8 02 02
        int     0x2f                            ; CD 2F
        ; constant WM_RBUTTONDOWN
        mov     ax, 0x204                       ; B8 04 02
        int     0x2f                            ; CD 2F
;   [conditional branch target (if/else)] L_03A6
L_03A6:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        jmp     L_03DC                          ; EB 31
;   [conditional branch target (if/else)] L_03AB
L_03AB:
        inc     dx                              ; 42
        xor     ax, ax                          ; 33 C0
        out     dx, al                          ; EE
        add     dl, 4                           ; 80 C2 04
        jmp     L_03B4                          ; EB 00
;   [loop start (also forward branch)] L_03B4
L_03B4:
        in      al, dx                          ; EC
        and     al, 0x60                        ; 24 60
        cmp     al, 0x60                        ; 3C 60
        jne     L_03B4                          ; 75 F9
        dec     dx                              ; 4A
        xor     al, al                          ; 32 C0
        out     dx, al                          ; EE
        sub     dl, 4                           ; 80 EA 04
        cli                                     ; FA
        in      al, 0x21                        ; E4 21
        or      al, byte ptr [si + 0x48]        ; 0A 44 48
        jmp     L_03CA                          ; EB 00
;   [unconditional branch target] L_03CA
L_03CA:
        out     0x21, al                        ; E6 21
        sti                                     ; FB
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_03CD   offset=0x03CD  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=6)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_03CD
L_03CD:
        push    ds                              ; 1E
        mov     al, byte ptr [si + 0x49]        ; 8A 44 49
        lds     dx, ptr [si + 0x4a]             ; C5 54 4A
        mov     ah, 0x25                        ; B4 25
        int     0x21                            ; CD 21
        pop     ds                              ; 1F
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
;   [unconditional branch target] L_03DC
L_03DC:
        mov     bx, word ptr [si + 0x1e]        ; 8B 5C 1E
        push    ds                              ; 1E
        xor     ax, ax                          ; 33 C0
        mov     ds, ax                          ; 8E D8
        mov     word ptr [bx], dx               ; 89 17
        pop     ds                              ; 1F
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_03E8   offset=0x03E8  size=47 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=4)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_03E8
L_03E8:
        push    di                              ; 57
        xor     di, di                          ; 33 FF
;   [loop start] L_03EB
L_03EB:
        mov     cx, 0xb                         ; B9 0B 00
;   [loop iteration target] L_03EE
L_03EE:
        xor     dh, dh                          ; 32 F6
        mov     al, byte ptr [si + 0x45]        ; 8A 44 45
        and     al, byte ptr [si + 0x46]        ; 22 44 46
        xor     al, byte ptr [si + 0x46]        ; 32 44 46
        je      L_0449                          ; 74 4E
        mov     ah, al                          ; 8A E0
        cmp     di, word ptr [si + 6]           ; 3B 7C 06
        jb      L_0409                          ; 72 07
        shl     ah, 1                           ; D0 E4
        jae     L_0409                          ; 73 03
        or      dh, 0x80                        ; 80 CE 80
;   [conditional branch target (if/else)] L_0409
L_0409:
        cmp     di, word ptr [si + 0xa]         ; 3B 7C 0A
        jb      L_0417                          ; 72 09
        shr     ah, 1                           ; D0 EC
        shr     ah, 1                           ; D0 EC
        jae     L_0417                          ; 73 03
        or      dh, 0x40                        ; 80 CE 40
;   [conditional branch target (if/else)] L_0417
L_0417:
        cmp     di, word ptr [si + 8]           ; 3B 7C 08
        jb      L_0423                          ; 72 07
        shr     ah, 1                           ; D0 EC
        jae     L_0423                          ; 73 03
        or      dh, 0x20                        ; 80 CE 20
;   [conditional branch target (if/else)] L_0423
L_0423:
        or      dh, dh                          ; 0A F6
        jne     L_0442                          ; 75 1B
        cmp     byte ptr [0xfc], 0xfc           ; 80 3E FC 00 FC
        je      L_0432                          ; 74 04
        loop    L_03EE                          ; E2 BE
        jmp     L_043F                          ; EB 0D
;   [conditional branch target (if/else)] L_0432
L_0432:
        push    bx                              ; 53
        push    di                              ; 57
        xor     cx, cx                          ; 33 C9
        mov     dx, 0x3e8                       ; BA E8 03
        mov     ah, 0x86                        ; B4 86
        int     0x15                            ; CD 15
        pop     di                              ; 5F
        pop     bx                              ; 5B
;   [unconditional branch target] L_043F
L_043F:
        inc     di                              ; 47
        jmp     L_03EB                          ; EB A9
;   [conditional branch target (if/else)] L_0442
L_0442:
        xor     ah, ah                          ; 32 E4
        ; constant VK_RETURN
        mov     al, dh                          ; 8A C6
        or      byte ptr [si + 0x1a], al        ; 08 44 1A
;   [conditional branch target (if/else)] L_0449
L_0449:
        or      al, al                          ; 0A C0
        pop     di                              ; 5F
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (95 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_044D   offset=0x044D  size=95 instr  segment=seg1.asm
;
; Classification (pass8): asm_medium  (score C=1, ASM=4)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_050E, L_0522, L_0549, L_056A, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_044D
L_044D:
        push    si                              ; 56
        push    di                              ; 57
        mov     ah, byte ptr es:[bx]            ; 26 8A 27
        call    L_0677                          ; E8 22 02
        mov     ax, 0xffff                      ; B8 FF FF
        jb      L_0461                          ; 72 07
        jns     L_0466                          ; 79 0A
        call    L_050E                          ; E8 AF 00
;   [loop start] L_045F
L_045F:
        xor     ax, ax                          ; 33 C0
;   [loop start (also forward branch)] L_0461
L_0461:
        or      ax, ax                          ; 0B C0
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0466
L_0466:
        call    L_0549                          ; E8 E0 00
        jcxz    L_0461                          ; E3 F6
        call    L_056A                          ; E8 FC 00
        jb      L_0461                          ; 72 F1
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        inc     dx                              ; 42
        xor     ax, ax                          ; 33 C0
        out     dx, al                          ; EE
        call    L_050E                          ; E8 94 00
        mov     bx, si                          ; 8B DE
        call    L_0522                          ; E8 A3 00
        xchg    ah, al                          ; 86 C4
        mov     word ptr [si + 0x46], ax        ; 89 44 46
        call    L_056A                          ; E8 E3 00
        push    ax                              ; 50
        inc     dx                              ; 42
        inc     dx                              ; 42
        or      al, 0x80                        ; 0C 80
        out     dx, al                          ; EE
        mov     byte ptr [si + 0x40], ah        ; 88 64 40
        mov     ax, di                          ; 8B C7
        and     byte ptr [si + 0xc], ah         ; 20 64 0C
        mov     byte ptr [si + 0x3f], al        ; 88 44 3F
        call    L_0549                          ; E8 AE 00
        sub     dl, 3                           ; 80 EA 03
        mov     al, cl                          ; 8A C1
        out     dx, al                          ; EE
        ; constant WM_SETTEXT
        mov     al, ch                          ; 8A C5
        inc     dx                              ; 42
        jmp     L_04A6                          ; EB 00
;   [unconditional branch target] L_04A6
L_04A6:
        out     dx, al                          ; EE
        inc     dx                              ; 42
        inc     dx                              ; 42
        pop     ax                              ; 58
        out     dx, al                          ; EE
        inc     dx                              ; 42
        mov     al, byte ptr [si + 0xc]         ; 8A 44 0C
        and     al, 0x82                        ; 24 82
        rol     al, 1                           ; D0 C0
        shr     al, 1                           ; D0 E8
        adc     al, 0                           ; 14 00
        mov     ah, al                          ; 8A E0
        xor     al, 0xb                         ; 34 0B
        out     dx, al                          ; EE
        mov     al, byte ptr [si + 0xd]         ; 8A 44 0D
        rol     al, 1                           ; D0 C0
        rol     al, 1                           ; D0 C0
        rol     al, 1                           ; D0 C0
        and     al, 3                           ; 24 03
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        mov     byte ptr [si + 0x43], al        ; 88 44 43
        mov     al, byte ptr [si + 0xc]         ; 8A 44 0C
        shl     al, 1                           ; D0 E0
        and     al, 0x30                        ; 24 30
        mov     byte ptr [si + 0x44], al        ; 88 44 44
        mov     ax, word ptr [si + 0x2a]        ; 8B 44 2A
        sub     ax, word ptr [si + 0x12]        ; 2B 44 12
        mov     word ptr [si + 0x20], ax        ; 89 44 20
        sub     dl, 4                           ; 80 EA 04
        xor     cx, cx                          ; 33 C9
;   [loop iteration target] L_04E6
L_04E6:
        jmp     L_04E8                          ; EB 00
;   [unconditional branch target] L_04E8
L_04E8:
        in      al, dx                          ; EC
        loop    L_04E6                          ; E2 FB
        add     dl, 6                           ; 80 C2 06
        jmp     L_04F0                          ; EB 00
;   [unconditional branch target] L_04F0
L_04F0:
        in      al, dx                          ; EC
        jmp     L_04F3                          ; EB 00
;   [unconditional branch target] L_04F3
L_04F3:
        in      al, dx                          ; EC
        mov     byte ptr [si + 0x45], al        ; 88 44 45
        sub     dl, 5                           ; 80 EA 05
        ; constant VK_RETURN
        mov     al, 0xd                         ; B0 0D
        cli                                     ; FA
        out     dx, al                          ; EE
        add     dl, 4                           ; 80 C2 04
        jmp     L_0503                          ; EB 00
;   [unconditional branch target] L_0503
L_0503:
        in      al, dx                          ; EC
        sub     dl, 5                           ; 80 EA 05
        jmp     L_0509                          ; EB 00
;   [unconditional branch target] L_0509
L_0509:
        in      al, dx                          ; EC
        sti                                     ; FB
        jmp     L_045F                          ; E9 51 FF
; Description (heuristic):
;   Internal helper (12 instructions).

;-------------------------------------------------------------------------
; sub_050E   offset=0x050E  size=12 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_050E
L_050E:
        push    si                              ; 56
        mov     di, si                          ; 8B FE
        mov     si, bx                          ; 8B F3
        push    es                              ; 06
        mov     ax, ds                          ; 8C D8
        pop     ds                              ; 1F
        mov     es, ax                          ; 8E C0
        mov     cx, 0x19                        ; B9 19 00
        rep movsb byte ptr es:[di], byte ptr [si] ; F3 A4
        mov     ds, ax                          ; 8E D8
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (7 instructions).

;-------------------------------------------------------------------------
; sub_0522   offset=0x0522  size=7 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: unknown
;
; Near calls (internal): L_0530
;-------------------------------------------------------------------------
;   [sub-routine] L_0522
L_0522:
        xor     ax, ax                          ; 33 C0
        xor     cx, cx                          ; 33 C9
        call    L_0530                          ; E8 07 00
        not     al                              ; F6 D0
        and     al, 0xb0                        ; 24 B0
        xchg    al, ah                          ; 86 E0
        dec     cx                              ; 49
; Description (heuristic):
;   Internal helper (10 instructions).

;-------------------------------------------------------------------------
; sub_0530   offset=0x0530  size=10 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0530
L_0530:
        cmp     word ptr es:[bx + 6], cx        ; 26 39 4F 06
        jne     L_0538                          ; 75 02
        or      al, 0x80                        ; 0C 80
;   [conditional branch target (if/else)] L_0538
L_0538:
        cmp     word ptr es:[bx + 8], cx        ; 26 39 4F 08
        jne     L_0540                          ; 75 02
        or      al, 0x10                        ; 0C 10
;   [conditional branch target (if/else)] L_0540
L_0540:
        cmp     word ptr es:[bx + 0xa], cx      ; 26 39 4F 0A
        jne     L_0548                          ; 75 02
        or      al, 0x20                        ; 0C 20
;   [error/early exit] L_0548
L_0548:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_0549   offset=0x0549  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0549
L_0549:
        push    dx                              ; 52
        mov     cx, word ptr es:[bx + 1]        ; 26 8B 4F 01
        xor     ax, ax                          ; 33 C0
        cmp     cx, 0x32                        ; 83 F9 32
        jb      L_0563                          ; 72 0E
        cmp     cx, 0x4b01                      ; 81 F9 01 4B
        jae     L_0563                          ; 73 08
        ; constant WM_CREATE
        mov     dx, 1                           ; BA 01 00
        mov     ax, 0xc200                      ; B8 00 C2
        div     cx                              ; F7 F1
;   [error/early exit] L_0563
L_0563:
        mov     cx, ax                          ; 8B C8
        mov     ax, 0xfff4                      ; B8 F4 FF
        pop     dx                              ; 5A
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (43 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_056A   offset=0x056A  size=43 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_056A
L_056A:
        mov     ax, word ptr es:[bx + 3]        ; 26 8B 47 03
        cmp     ah, 4                           ; 80 FC 04
        ja      L_05C1                          ; 77 4E
        mov     di, 0xff1e                      ; BF 1E FF
        or      ah, ah                          ; 0A E4
        jne     L_057E                          ; 75 04
        xor     di, 0x404                       ; 81 F7 04 04
;   [conditional branch target (if/else)] L_057E
L_057E:
        cmp     al, 8                           ; 3C 08
        ja      L_05BC                          ; 77 3A
        sub     al, 5                           ; 2C 05
        jb      L_05BC                          ; 72 36
        add     ah, ah                          ; 02 E4
        je      L_058C                          ; 74 02
        dec     ah                              ; FE CC
;   [conditional branch target (if/else)] L_058C
L_058C:
        shl     ah, 1                           ; D0 E4
        shl     ah, 1                           ; D0 E4
        shl     ah, 1                           ; D0 E4
        or      al, ah                          ; 0A C4
        or      al, 4                           ; 0C 04
        mov     ah, byte ptr es:[bx + 5]        ; 26 8A 67 05
        or      ah, ah                          ; 0A E4
        js      L_05C1                          ; 78 23
        je      L_05AB                          ; 74 0B
        sub     ah, 2                           ; 80 EC 02
        je      L_05AD                          ; 74 08
        jns     L_05C1                          ; 79 1A
        test    al, 3                           ; A8 03
        jne     L_05C1                          ; 75 16
;   [conditional branch target (if/else)] L_05AB
L_05AB:
        and     al, 0xfb                        ; 24 FB
;   [conditional branch target (if/else)] L_05AD
L_05AD:
        push    dx                              ; 52
        mov     cl, byte ptr es:[bx + 3]        ; 26 8A 4F 03
        mov     dx, 0xff                        ; BA FF 00
        shl     dx, cl                          ; D3 E2
        ; constant VK_RETURN
        mov     ah, dh                          ; 8A E6
        pop     dx                              ; 5A
        clc                                     ; F8
        ret                                     ; C3
;   [conditional branch target (if/else)] L_05BC
L_05BC:
        mov     ax, 0xfff5                      ; B8 F5 FF
        stc                                     ; F9
        ret                                     ; C3
;   [conditional branch target (if/else)] L_05C1
L_05C1:
        mov     ax, 0xfffb                      ; B8 FB FF
        stc                                     ; F9
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_05C6   offset=0x05C6  size=14 instr  segment=seg1.asm
;
; Classification (pass8): asm_high  (score C=1, ASM=10)
; Prologue: none     Epilogue: retf
;-------------------------------------------------------------------------
;   [sub-routine] L_05C6
L_05C6:
        mov     ax, 0x3000                      ; B8 00 30
        int     0x21                            ; CD 21
        cmp     al, 3                           ; 3C 03
        jne     L_05DE                          ; 75 0F
        mov     ax, 0xb800                      ; B8 00 B8
        int     0x2f                            ; CD 2F
        or      al, al                          ; 0A C0
        je      L_05DE                          ; 74 06
        test    bx, 0xc4                        ; F7 C3 C4 00
        je      L_05DF                          ; 74 01
;   [conditional branch target (if/else)] L_05DE
L_05DE:
        stc                                     ; F9
;   [error/early exit] L_05DF
L_05DF:
        ret                                     ; C3
        dec     word ptr cs:[0x1cf]             ; 2E FF 0E CF 01
        retf                                    ; CB
; Description (heuristic):
;   Pure computation / dispatcher (47 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_05E6   offset=0x05E6  size=47 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=3, ASM=5)
; Prologue: saves_regs     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_05E6
L_05E6:
        push    di                              ; 57
        push    ds                              ; 1E
        mov     di, word ptr [0xfd]             ; 8B 3E FD 00
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        xor     bx, bx                          ; 33 DB
        mov     ds, bx                          ; 8E DB
        mov     bl, ah                          ; 8A DC
        ; constant WM_SETTEXT
        mov     ah, ch                          ; 8A E5
        shl     bl, 1                           ; D0 E3
        mov     word ptr [bx + 0x408], dx       ; 89 97 08 04
        mov     dx, bx                          ; 8B D3
        shr     dx, 1                           ; D1 EA
        or      ah, ah                          ; 0A E4
        jne     L_062E                          ; 75 29
        xchg    cx, ax                          ; 91
;   [loop start] L_0606
L_0606:
        mov     ah, 2                           ; B4 02
        int     0x17                            ; CD 17
        test    ah, 0x28                        ; F6 C4 28
        jne     L_0630                          ; 75 21
        test    ah, 0x10                        ; F6 C4 10
        je      L_0630                          ; 74 1C
        or      ah, ah                          ; 0A E4
        js      L_062D                          ; 78 15
        dec     di                              ; 4F
        jne     L_0606                          ; 75 EB
        mov     word ptr [bx + 0x408], 0        ; C7 87 08 04 00 00
        pop     ds                              ; 1F
        or      word ptr [si + 0x1a], 0x100     ; 81 4C 1A 00 01
        or      byte ptr [si + 0x42], 0x28      ; 80 4C 42 28
        pop     di                              ; 5F
        ret                                     ; C3
;   [conditional branch target (if/else)] L_062D
L_062D:
        xchg    cx, ax                          ; 91
;   [conditional branch target (if/else)] L_062E
L_062E:
        int     0x17                            ; CD 17
;   [conditional branch target (if/else)] L_0630
L_0630:
        mov     word ptr [bx + 0x408], 0        ; C7 87 08 04 00 00
        pop     ds                              ; 1F
        and     byte ptr [si + 0x42], 0xd7      ; 80 64 42 D7
        and     ax, 0x3900                      ; 25 00 39
        shr     ah, 1                           ; D0 EC
        adc     ah, al                          ; 12 E0
        xor     ah, 8                           ; 80 F4 08
        je      L_0654                          ; 74 0D
        or      byte ptr [si + 0x1b], ah        ; 08 64 1B
        test    byte ptr [si + 0x25], 2         ; F6 44 25 02
        je      L_0654                          ; 74 04
        or      byte ptr [si + 0x25], 2         ; 80 4C 25 02
;   [error/early exit] L_0654
L_0654:
        pop     di                              ; 5F
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (2 instructions).

;-------------------------------------------------------------------------
; sub_0656   offset=0x0656  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: unknown
;-------------------------------------------------------------------------
;   [sub-routine] L_0656
L_0656:
        or      byte ptr [si + 0x3e], 0x40      ; 80 4C 3E 40
        mov     byte ptr [si + 0x41], ah        ; 88 64 41
; Description (heuristic):
;   Internal helper (14 instructions).

;-------------------------------------------------------------------------
; sub_065D   offset=0x065D  size=14 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_065D
L_065D:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 5                           ; 80 C2 05
        in      al, dx                          ; EC
        and     al, 0x20                        ; 24 20
        je      L_0676                          ; 74 0E
        sub     dl, 4                           ; 80 EA 04
        in      al, dx                          ; EC
        test    al, 2                           ; A8 02
        jne     L_0676                          ; 75 06
        or      al, 2                           ; 0C 02
        out     dx, al                          ; EE
        jmp     L_0675                          ; EB 00
;   [unconditional branch target] L_0675
L_0675:
        out     dx, al                          ; EE
;   [error/early exit] L_0676
L_0676:
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_0677   offset=0x0677  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=0, ASM=2)
; Prologue: none     Epilogue: ret
;-------------------------------------------------------------------------
;   [sub-routine] L_0677
L_0677:
        cmp     ah, 0x82                        ; 80 FC 82
        ja      L_069E                          ; 77 22
        mov     si, 0xdc                        ; BE DC 00
        je      L_068E                          ; 74 0D
        cmp     ah, 1                           ; 80 FC 01
        ja      L_0691                          ; 77 0B
        mov     si, 0x4e                        ; BE 4E 00
        je      L_068E                          ; 74 03
        mov     si, 0                           ; BE 00 00
;   [loop start (also forward branch)] L_068E
L_068E:
        or      ah, ah                          ; 0A E4
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0691
L_0691:
        mov     si, 0x9c                        ; BE 9C 00
        cmp     ah, 0x80                        ; 80 FC 80
        je      L_068E                          ; 74 F5
        mov     si, 0xbc                        ; BE BC 00
        ja      L_068E                          ; 77 F0
;   [conditional branch target (if/else)] L_069E
L_069E:
        mov     ax, 0x8000                      ; B8 00 80
        stc                                     ; F9
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (24 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_06A3   offset=0x06A3  size=24 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_06A3
L_06A3:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 CF FF
        jb      L_06C5                          ; 72 1B
        js      L_06C5                          ; 78 19
        push    ds                              ; 1E
        push    es                              ; 06
        pop     ds                              ; 1F
        pop     es                              ; 07
        lea     di, [si + 0x26]                 ; 8D 7C 26
        mov     si, bx                          ; 8B F3
        mov     cx, 6                           ; B9 06 00
        xor     ax, ax                          ; 33 C0
        cld                                     ; FC
        cli                                     ; FA
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        mov     cl, 6                           ; B1 06
        rep movsw word ptr es:[di], word ptr [si] ; F3 A5
        sti                                     ; FB
        push    es                              ; 06
        pop     ds                              ; 1F
;   [error/early exit] L_06C5
L_06C5:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (11 instructions).

;-------------------------------------------------------------------------
; sub_06C8   offset=0x06C8  size=11 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_06C8
L_06C8:
        push    si                              ; 56
        xor     dx, dx                          ; 33 D2
        call    L_0677                          ; E8 A9 FF
        mov     ax, dx                          ; 8B C2
        jb      L_06DC                          ; 72 0A
        js      L_06DC                          ; 78 08
        mov     word ptr [si + 0x24], bx        ; 89 5C 24
        lea     ax, [si + 0x22]                 ; 8D 44 22
        mov     dx, ds                          ; 8C DA
;   [error/early exit] L_06DC
L_06DC:
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (13 instructions).

;-------------------------------------------------------------------------
; sub_06DE   offset=0x06DE  size=13 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_06DE
L_06DE:
        push    si                              ; 56
        call    L_0677                          ; E8 95 FF
        mov     ah, 0                           ; B4 00
        jb      L_06F4                          ; 72 0E
        js      L_06F4                          ; 78 0C
        cli                                     ; FA
        mov     ax, word ptr [si + 0x22]        ; 8B 44 22
        not     bx                              ; F7 D3
        and     bx, ax                          ; 23 D8
        mov     word ptr [si + 0x22], bx        ; 89 5C 22
        sti                                     ; FB
;   [error/early exit] L_06F4
L_06F4:
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (31 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_06F6   offset=0x06F6  size=31 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_06F6
L_06F6:
        push    si                              ; 56
        call    L_0677                          ; E8 7D FF
        jb      L_073F                          ; 72 43
        mov     cx, es                          ; 8C C1
        or      cx, bx                          ; 0B CB
        je      L_073A                          ; 74 38
        xor     cx, cx                          ; 33 C9
        xor     dx, dx                          ; 33 D2
        or      ah, ah                          ; 0A E4
        mov     ax, cx                          ; 8B C1
        js      L_072F                          ; 78 23
        mov     al, byte ptr [si + 0x45]        ; 8A 44 45
        and     al, byte ptr [si + 0x44]        ; 22 44 44
        xor     al, byte ptr [si + 0x44]        ; 32 44 44
        mov     cl, 4                           ; B1 04
        shr     al, cl                          ; D2 E8
        mov     ah, byte ptr [si + 0x42]        ; 8A 64 42
        and     ah, 0x18                        ; 80 E4 18
        or      al, ah                          ; 0A C4
        mov     ah, byte ptr [si + 0x3e]        ; 8A 64 3E
        and     ah, 0x60                        ; 80 E4 60
        or      al, ah                          ; 0A C4
        mov     cx, word ptr [si + 0x32]        ; 8B 4C 32
        mov     dx, word ptr [si + 0x38]        ; 8B 54 38
;   [conditional branch target (if/else)] L_072F
L_072F:
        mov     byte ptr es:[bx], al            ; 26 88 07
        mov     word ptr es:[bx + 1], cx        ; 26 89 4F 01
        mov     word ptr es:[bx + 3], dx        ; 26 89 57 03
;   [conditional branch target (if/else)] L_073A
L_073A:
        xor     ax, ax                          ; 33 C0
        xchg    word ptr [si + 0x1a], ax        ; 87 44 1A
;   [error/early exit] L_073F
L_073F:
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (2 instructions).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_0741   offset=0x0741  size=2 instr  segment=seg1.asm
;
; Classification (pass8): tiny  (score C=0, ASM=0)
; Prologue: none     Epilogue: jmp_tail
;-------------------------------------------------------------------------
;   [sub-routine] L_0741
L_0741:
        mov     cx, 0xff40                      ; B9 40 FF
        jmp     L_0749                          ; EB 03
; Description (heuristic):
;   Internal helper (19 instructions).

;-------------------------------------------------------------------------
; sub_0746   offset=0x0746  size=19 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=2)
; Prologue: none     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_0746
L_0746:
        mov     cx, 0xbf00                      ; B9 00 BF
;   [unconditional branch target] L_0749
L_0749:
        push    si                              ; 56
        call    L_0677                          ; E8 2A FF
        jb      L_076A                          ; 72 1B
        js      L_0767                          ; 78 16
        cli                                     ; FA
        and     byte ptr [si + 0x42], ch        ; 20 6C 42
        or      byte ptr [si + 0x42], cl        ; 08 4C 42
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 3                           ; 80 C2 03
        in      al, dx                          ; EC
        and     al, ch                          ; 22 C5
        or      al, cl                          ; 0A C1
        jmp     L_0765                          ; EB 00
;   [unconditional branch target] L_0765
L_0765:
        out     dx, al                          ; EE
        sti                                     ; FB
;   [error/early exit] L_0767
L_0767:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
;   [error/early exit] L_076A
L_076A:
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (61 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_076C   offset=0x076C  size=61 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=2, ASM=1)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_05E6, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_076C
L_076C:
        push    si                              ; 56
        call    L_0677                          ; E8 07 FF
        jb      L_0791                          ; 72 1F
        jns     L_077B                          ; 79 07
        cmp     bl, 7                           ; 80 FB 07
        jne     L_078E                          ; 75 15
        jmp     L_0783                          ; EB 08
;   [conditional branch target (if/else)] L_077B
L_077B:
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        cmp     bl, 7                           ; 80 FB 07
        jae     L_078E                          ; 73 0B
;   [unconditional branch target] L_0783
L_0783:
        xor     bh, bh                          ; 32 FF
        add     bx, bx                          ; 03 DB
        cli                                     ; FA
        call    word ptr cs:[bx + 0x793]        ; 2E FF 97 93 07
        sti                                     ; FB
;   [error/early exit] L_078E
L_078E:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
;   [error/early exit] L_0791
L_0791:
        pop     si                              ; 5E
        ret                                     ; C3
        xchg    dx, ax                          ; 92
        pop     es                              ; 07
        mov     word ptr [0xa807], ax           ; A3 07 A8
        pop     es                              ; 07
        scasw   ax, word ptr es:[di]            ; AF
        pop     es                              ; 07
        mov     cx, 0xc307                      ; B9 07 C3
        pop     es                              ; 07
        int     7                               ; CD 07
        xlatb                                   ; D7
        pop     es                              ; 07
        or      byte ptr [si + 0x42], 8         ; 80 4C 42 08
        ret                                     ; C3
        and     byte ptr [si + 0x42], 0xf7      ; 80 64 42 F7
        jmp     L_065D                          ; E9 AE FE
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, 2                           ; 0C 02
        jmp     L_07B7                          ; EB 00
;   [unconditional branch target] L_07B7
L_07B7:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        and     al, 0xfd                        ; 24 FD
        jmp     L_07C1                          ; EB 00
;   [unconditional branch target] L_07C1
L_07C1:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, 1                           ; 0C 01
        jmp     L_07CB                          ; EB 00
;   [unconditional branch target] L_07CB
L_07CB:
        out     dx, al                          ; EE
        ret                                     ; C3
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        and     al, 0xfe                        ; 24 FE
        jmp     L_07D5                          ; EB 00
;   [unconditional branch target] L_07D5
L_07D5:
        out     dx, al                          ; EE
        ret                                     ; C3
        sti                                     ; FB
        ; constant WM_CREATE
        mov     ch, 1                           ; B5 01
        call    L_05E6                          ; E8 09 FE
        ret                                     ; C3
; Description (heuristic):
;   Internal helper (9 instructions).

;-------------------------------------------------------------------------
; sub_07DE   offset=0x07DE  size=9 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_07DE
L_07DE:
        push    si                              ; 56
        xor     dx, dx                          ; 33 D2
        call    L_0677                          ; E8 93 FE
        mov     ax, dx                          ; 8B C2
        jb      L_07EC                          ; 72 04
        mov     ax, si                          ; 8B C6
        mov     dx, ds                          ; 8C DA
;   [error/early exit] L_07EC
L_07EC:
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (57 instructions, no FAR API calls).

;-------------------------------------------------------------------------
; sub_07EE   offset=0x07EE  size=57 instr  segment=seg1.asm
;
; Classification (pass8): c_medium  (score C=3, ASM=0)
; Prologue: saves_regs     Epilogue: ret
;
; Near calls (internal): L_065D, L_0677
;-------------------------------------------------------------------------
;   [sub-routine] L_07EE
L_07EE:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 84 FE
        jb      L_086A                          ; 72 75
        js      L_0868                          ; 78 71
        test    byte ptr [si + 0x42], 0x12      ; F6 44 42 12
        je      L_0831                          ; 74 34
        mov     ax, word ptr [si + 0x32]        ; 8B 44 32
        cmp     ax, word ptr [si + 0x10]        ; 3B 44 10
        ja      L_0831                          ; 77 2C
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        mov     ah, byte ptr [si + 0x43]        ; 8A 64 43
        cli                                     ; FA
        mov     cl, byte ptr [si + 0x42]        ; 8A 4C 42
        or      ah, ah                          ; 0A E4
        je      L_081F                          ; 74 0C
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        or      al, ah                          ; 0A C4
        jmp     L_081B                          ; EB 00
;   [unconditional branch target] L_081B
L_081B:
        out     dx, al                          ; EE
        and     cl, 0xfd                        ; 80 E1 FD
;   [conditional branch target (if/else)] L_081F
L_081F:
        test    cl, 0x10                        ; F6 C1 10
        je      L_082D                          ; 74 09
        or      cl, 4                           ; 80 C9 04
        and     cl, 0xef                        ; 80 E1 EF
        call    L_065D                          ; E8 30 FE
;   [conditional branch target (if/else)] L_082D
L_082D:
        mov     byte ptr [si + 0x42], cl        ; 88 4C 42
        sti                                     ; FB
;   [conditional branch target (if/else)] L_0831
L_0831:
        xor     ax, ax                          ; 33 C0
        or      ax, word ptr [si + 0x1a]        ; 0B 44 1A
        jne     L_086A                          ; 75 32
        or      ax, word ptr [si + 0x32]        ; 0B 44 32
        je      L_0859                          ; 74 1C
        les     di, ptr [si + 0x26]             ; C4 7C 26
        mov     bx, word ptr [si + 0x34]        ; 8B 5C 34
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x2a]        ; 3B 5C 2A
        jb      L_084E                          ; 72 02
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_084E
L_084E:
        mov     word ptr [si + 0x34], bx        ; 89 5C 34
        dec     word ptr [si + 0x32]            ; FF 4C 32
;   [loop start] L_0854
L_0854:
        or      sp, sp                          ; 0B E4
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
;   [conditional branch target (if/else)] L_0859
L_0859:
        test    byte ptr [si + 0xc], 1          ; F6 44 0C 01
        jne     L_0868                          ; 75 09
        mov     al, byte ptr [si + 0x15]        ; 8A 44 15
        test    byte ptr [si + 0x3e], 0x20      ; F6 44 3E 20
        jne     L_0854                          ; 75 EC
;   [conditional branch target (if/else)] L_0868
L_0868:
        xor     ax, ax                          ; 33 C0
;   [conditional branch target (if/else)] L_086A
L_086A:
        xor     cx, cx                          ; 33 C9
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
; Description (heuristic):
;   Pure computation / dispatcher (217 instructions, no FAR API calls).
;   Tail-calls into another routine.

;-------------------------------------------------------------------------
; sub_086F   offset=0x086F  size=217 instr  segment=seg1.asm
;
; Classification (pass8): unclear  (score C=1, ASM=2)
; Prologue: saves_regs     Epilogue: jmp_tail
;
; Near calls (internal): L_065D, L_0677, L_07EE
;-------------------------------------------------------------------------
;   [sub-routine] L_086F
L_086F:
        push    si                              ; 56
        push    di                              ; 57
        call    L_0677                          ; E8 03 FE
        jb      L_0897                          ; 72 21
        js      L_0894                          ; 78 1C
        mov     cx, 6                           ; B9 06 00
        lea     di, [si + 0x32]                 ; 8D 7C 32
        or      bh, bh                          ; 0A FF
        jne     L_0884                          ; 75 02
        add     di, cx                          ; 03 F9
;   [conditional branch target (if/else)] L_0884
L_0884:
        cld                                     ; FC
        push    ds                              ; 1E
        pop     es                              ; 07
        xor     al, al                          ; 32 C0
        cli                                     ; FA
        rep stosb byte ptr es:[di], al          ; F3 AA
        sti                                     ; FB
        or      bh, bh                          ; 0A FF
        je      L_0894                          ; 74 03
        call    L_07EE                          ; E8 5A FF
;   [error/early exit] L_0894
L_0894:
        mov     ax, word ptr [si + 0x1a]        ; 8B 44 1A
;   [error/early exit] L_0897
L_0897:
        pop     di                              ; 5F
        pop     si                              ; 5E
        ret                                     ; C3
        push    si                              ; 56
        mov     si, 0x4e                        ; BE 4E 00
        jmp     L_08A4                          ; EB 04
        push    si                              ; 56
        mov     si, 0                           ; BE 00 00
;   [unconditional branch target] L_08A4
L_08A4:
        push    ds                              ; 1E
        mov     ds, word ptr cs:[0x1cd]         ; 2E 8E 1E CD 01
        push    ax                              ; 50
        push    bx                              ; 53
        push    cx                              ; 51
        push    dx                              ; 52
        push    di                              ; 57
        push    es                              ; 06
        mov     dx, word ptr [si + 0x1c]        ; 8B 54 1C
        add     dl, 2                           ; 80 C2 02
        jmp     L_08B9                          ; EB 01
;   [loop start] L_08B8
L_08B8:
        pop     dx                              ; 5A
;   [unconditional branch target] L_08B9
L_08B9:
        in      al, dx                          ; EC
        test    al, 1                           ; A8 01
        jne     L_08C8                          ; 75 0A
        xor     ah, ah                          ; 32 E4
        mov     di, ax                          ; 8B F8
        push    dx                              ; 52
        jmp     word ptr cs:[di + 0x8dc]        ; 2E FF A5 DC 08
;   [conditional branch target (if/else)] L_08C8
L_08C8:
        mov     ax, word ptr [si + 0x24]        ; 8B 44 24
        and     word ptr [si + 0x22], ax        ; 21 44 22
        pop     es                              ; 07
        pop     di                              ; 5F
        pop     dx                              ; 5A
        pop     cx                              ; 59
        pop     bx                              ; 5B
        mov     al, 0x20                        ; B0 20
        out     0x20, al                        ; E6 20
        sti                                     ; FB
        pop     ax                              ; 58
        pop     ds                              ; 1F
        pop     si                              ; 5E
        iret                                    ; CF
        or      al, ah                          ; 36 0A C4
        or      ax, bp                          ; 09 E8
        or      ah, ah                          ; 08 E4
        or      byte ptr [bx + si + 0x224c], al ; 08 80 4C 22
        add     byte ptr [bx + si + 0x3c2], 0xec ; 80 80 C2 03 EC
        mov     ah, al                          ; 8A E0
        mov     bh, al                          ; 8A F8
        sub     dl, 5                           ; 80 EA 05
        in      al, dx                          ; EC
        test    ah, 0x10                        ; F6 C4 10
        je      L_08FD                          ; 74 04
        or      byte ptr [si + 0x22], 0x40      ; 80 4C 22 40
;   [conditional branch target (if/else)] L_08FD
L_08FD:
        and     ah, byte ptr [si + 0x3f]        ; 22 64 3F
        or      byte ptr [si + 0x1a], ah        ; 08 64 1A
        shr     bh, 1                           ; D0 EF
        jae     L_0949                          ; 73 42
        or      byte ptr [si + 0x22], 1         ; 80 4C 22 01
        mov     cx, word ptr [si + 0x32]        ; 8B 4C 32
        cmp     cx, word ptr [si + 0x2a]        ; 3B 4C 2A
        jge     L_0945                          ; 7D 32
        test    byte ptr [si + 0x3e], 0x20      ; F6 44 3E 20
        jne     L_0945                          ; 75 2C
        test    bh, 2                           ; F6 C7 02
        je      L_0929                          ; 74 0B
        test    byte ptr [si + 0xd], 4          ; F6 44 0D 04
        je      L_0929                          ; 74 05
        mov     al, byte ptr [si + 0x14]        ; 8A 44 14
        jmp     L_096B                          ; EB 42
;   [conditional branch target (if/else)] L_0929
L_0929:
        and     al, byte ptr [si + 0x40]        ; 22 44 40
        jne     L_0934                          ; 75 06
        test    byte ptr [si + 0xd], 8          ; F6 44 0D 08
        jne     L_0949                          ; 75 15
;   [conditional branch target (if/else)] L_0934
L_0934:
        test    byte ptr [si + 0xc], 1          ; F6 44 0C 01
        jne     L_094C                          ; 75 12
        cmp     al, byte ptr [si + 0x15]        ; 3A 44 15
        jne     L_094C                          ; 75 0D
        or      byte ptr [si + 0x3e], 0x20      ; 80 4C 3E 20
        jmp     L_0949                          ; EB 04
;   [conditional branch target (if/else)] L_0945
L_0945:
        or      byte ptr [si + 0x1a], 1         ; 80 4C 1A 01
;   [loop start (also forward branch)] L_0949
L_0949:
        jmp     L_08B8                          ; E9 6C FF
;   [conditional branch target (if/else)] L_094C
L_094C:
        test    byte ptr [si + 0xd], 1          ; F6 44 0D 01
        je      L_096B                          ; 74 19
        cmp     al, byte ptr [si + 0xf]         ; 3A 44 0F
        jne     L_095D                          ; 75 06
        or      byte ptr [si + 0x42], 8         ; 80 4C 42 08
        jmp     L_0949                          ; EB EC
;   [conditional branch target (if/else)] L_095D
L_095D:
        cmp     al, byte ptr [si + 0xe]         ; 3A 44 0E
        jne     L_096B                          ; 75 09
        and     byte ptr [si + 0x42], 0xf7      ; 80 64 42 F7
        call    L_065D                          ; E8 F4 FC
        jmp     L_0949                          ; EB DE
;   [branch target] L_096B
L_096B:
        cmp     al, byte ptr [si + 0x16]        ; 3A 44 16
        jne     L_0974                          ; 75 04
        or      byte ptr [si + 0x22], 2         ; 80 4C 22 02
;   [conditional branch target (if/else)] L_0974
L_0974:
        test    byte ptr [si + 0x42], 0x80      ; F6 44 42 80
        jne     L_0949                          ; 75 CF
        les     di, ptr [si + 0x26]             ; C4 7C 26
        mov     bx, word ptr [si + 0x36]        ; 8B 5C 36
        mov     byte ptr es:[bx + di], al       ; 26 88 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x2a]        ; 3B 5C 2A
        jb      L_098B                          ; 72 02
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_098B
L_098B:
        mov     word ptr [si + 0x36], bx        ; 89 5C 36
        inc     cx                              ; 41
        mov     word ptr [si + 0x32], cx        ; 89 4C 32
        cmp     cx, word ptr [si + 0x20]        ; 3B 4C 20
        jb      L_09C1                          ; 72 2A
        mov     cl, byte ptr [si + 0x42]        ; 8A 4C 42
        test    cl, 0x13                        ; F6 C1 13
        jne     L_09C1                          ; 75 22
        mov     ah, byte ptr [si + 0x43]        ; 8A 64 43
        or      ah, ah                          ; 0A E4
        je      L_09B2                          ; 74 0C
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        not     ah                              ; F6 D4
        and     al, ah                          ; 22 C4
        or      cl, 2                           ; 80 C9 02
        out     dx, al                          ; EE
;   [conditional branch target (if/else)] L_09B2
L_09B2:
        test    byte ptr [si + 0xd], 2          ; F6 44 0D 02
        je      L_09BE                          ; 74 06
        or      cl, 1                           ; 80 C9 01
        call    L_065D                          ; E8 9F FC
;   [conditional branch target (if/else)] L_09BE
L_09BE:
        mov     byte ptr [si + 0x42], cl        ; 88 4C 42
;   [conditional branch target (if/else)] L_09C1
L_09C1:
        jmp     L_08B8                          ; E9 F4 FE
        add     dl, 3                           ; 80 C2 03
        in      al, dx                          ; EC
        test    al, 0x20                        ; A8 20
        je      L_0A2C                          ; 74 60
        sub     dl, 5                           ; 80 EA 05
        mov     ah, byte ptr [si + 0x42]        ; 8A 64 42
        test    ah, 0x60                        ; F6 C4 60
        jne     L_0A30                          ; 75 59
        test    ah, 5                           ; F6 C4 05
        je      L_09F7                          ; 74 1B
        test    ah, 1                           ; F6 C4 01
        je      L_09EC                          ; 74 0B
        and     ah, 0xfe                        ; 80 E4 FE
        or      ah, 0x10                        ; 80 CC 10
        mov     al, byte ptr [si + 0xf]         ; 8A 44 0F
        jmp     L_09F2                          ; EB 06
;   [conditional branch target (if/else)] L_09EC
L_09EC:
        and     ah, 0xeb                        ; 80 E4 EB
        mov     al, byte ptr [si + 0xe]         ; 8A 44 0E
;   [unconditional branch target] L_09F2
L_09F2:
        mov     byte ptr [si + 0x42], ah        ; 88 64 42
        jmp     L_0A28                          ; EB 31
;   [conditional branch target (if/else)] L_09F7
L_09F7:
        test    ah, 0x7f                        ; F6 C4 7F
        jne     L_0A30                          ; 75 34
        test    byte ptr [si + 0x3e], 0x40      ; F6 44 3E 40
        je      L_0A0B                          ; 74 09
        and     byte ptr [si + 0x3e], 0xbf      ; 80 64 3E BF
        mov     al, byte ptr [si + 0x41]        ; 8A 44 41
        jmp     L_0A28                          ; EB 1D
;   [conditional branch target (if/else)] L_0A0B
L_0A0B:
        mov     cx, word ptr [si + 0x38]        ; 8B 4C 38
        jcxz    L_0A2C                          ; E3 1C
        les     di, ptr [si + 0x2c]             ; C4 7C 2C
        mov     bx, word ptr [si + 0x3a]        ; 8B 5C 3A
        mov     al, byte ptr es:[bx + di]       ; 26 8A 01
        inc     bx                              ; 43
        cmp     bx, word ptr [si + 0x30]        ; 3B 5C 30
        jb      L_0A21                          ; 72 02
        xor     bx, bx                          ; 33 DB
;   [conditional branch target (if/else)] L_0A21
L_0A21:
        mov     word ptr [si + 0x3a], bx        ; 89 5C 3A
        dec     cx                              ; 49
        mov     word ptr [si + 0x38], cx        ; 89 4C 38
;   [loop start (also forward branch)] L_0A28
L_0A28:
        out     dx, al                          ; EE
        jmp     L_08B8                          ; E9 8C FE
;   [conditional branch target (if/else)] L_0A2C
L_0A2C:
        or      byte ptr [si + 0x22], 4         ; 80 4C 22 04
;   [conditional branch target (if/else)] L_0A30
L_0A30:
        inc     dx                              ; 42
        in      al, dx                          ; EC
        and     al, 0xfd                        ; 24 FD
        jmp     L_0A28                          ; EB F2
        add     dl, 4                           ; 80 C2 04
        in      al, dx                          ; EC
        mov     byte ptr [si + 0x45], al        ; 88 44 45
        mov     ch, al                          ; 8A E8
        mov     ah, al                          ; 8A E0
        shr     ax, 1                           ; D1 E8
        shr     ax, 1                           ; D1 E8
        shr     ah, 1                           ; D0 EC
        ; constant WM_MOVE
        mov     cl, 3                           ; B1 03
        shr     ax, cl                          ; D3 E8
        and     ax, 0x138                       ; 25 38 01
        or      word ptr [si + 0x22], ax        ; 09 44 22
        mov     al, byte ptr [si + 0x44]        ; 8A 44 44
        or      al, al                          ; 0A C0
        je      L_0A6B                          ; 74 13
        and     ch, al                          ; 22 E8
        cmp     ch, al                          ; 3A E8
        je      L_0A64                          ; 74 06
        or      byte ptr [si + 0x42], 0x20      ; 80 4C 42 20
        jmp     L_0A6B                          ; EB 07
;   [conditional branch target (if/else)] L_0A64
L_0A64:
        and     byte ptr [si + 0x42], 0xdf      ; 80 64 42 DF
        call    L_065D                          ; E8 F2 FB
;   [branch target] L_0A6B
L_0A6B:
        jmp     L_08B8                          ; E9 4A FE

COMM_TEXT ENDS

        END
