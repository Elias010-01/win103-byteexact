; ======================================================================
; USER / seg23.asm   (segment 23 of USER)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        14
; Total instructions:                  602
; 
; Classification (pass8):
;   C-origin (high+medium):             13
;   ASM-origin (high+medium):            0
;   Unclear:                             1
;   Tiny / unclassified:                 0
; 
; Far API calls in this segment:     24 (16 unique)
;   Top:
;        6  LOCALUNLOCK
;        4  LOCALLOCK
;        1  GETTASKQUEUE
;        1  DELETEATOM
;        1  LOCALFREE
;        1  GETATOMHANDLE
;        1  GLOBALREALLOC
;        1  LOCALALLOC
; ======================================================================
; AUTO-GENERATED from original USER segment 23
; segment_size=1509 bytes, flags=0xf130
; mode: humano legible - instrucciones x86 + bytes raw en comentario (autoritativo)
; 
; El comentario al final de cada linea contiene los bytes RAW del binario
; original; build_from_source.py los lee como autoridad para byte-exact.
; Las instrucciones (push, mov, ...) son las desensambladas para que
; un humano pueda leer/editar; no son re-ensambladas (encoders modernos
; eligen variantes distintas a las del MASM 4.0 de 1985 que produjo
; el binario original).

USER_TEXT SEGMENT BYTE PUBLIC 'CODE'


;-----------------------------------------------------------------------
; OPENCLIPBOARD  (offset 0x0000, size 86 bytes)
;-----------------------------------------------------------------------
OPENCLIPBOARD PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 4                           ; 83 EC 04
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_608D                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        jne     L_001D                          ; 75 04
;   [loop start] L_0019
L_0019:
        sub     ax, ax                          ; 2B C0
        jmp     L_004B                          ; EB 2E
;   [conditional branch target (if/else)] L_001D
L_001D:
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        call    far KERNEL.GETTASKQUEUE         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     ax, word ptr [0x20]             ; A1 20 00
        cmp     word ptr [bp + 6], ax           ; 39 46 06
        je      L_003C                          ; 74 0C
        cmp     word ptr [0x24], 0              ; 83 3E 24 00 00
        je      L_003C                          ; 74 05
        mov     ax, word ptr [0x24]             ; A1 24 00
        jmp     L_0019                          ; EB DD
;   [conditional branch target (if/else)] L_003C
L_003C:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x20], ax             ; A3 20 00
        mov     ax, word ptr [bp - 4]           ; 8B 46 FC
        mov     word ptr [0x24], ax             ; A3 24 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
;   [unconditional branch target] L_004B
L_004B:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
OPENCLIPBOARD ENDP


;-----------------------------------------------------------------------
; CLOSECLIPBOARD  (offset 0x0056, size 55 bytes)
;-----------------------------------------------------------------------
CLOSECLIPBOARD PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [0x24], 0              ; 83 3E 24 00 00
        je      L_0082                          ; 74 1B
        mov     word ptr [0x20], 0              ; C7 06 20 00 00 00
        mov     word ptr [0x24], 0              ; C7 06 24 00 00 00
        cmp     word ptr [0x2e], 0              ; 83 3E 2E 00 00
        je      L_007D                          ; 74 03
        call    L_04B0                          ; E8 33 04
;   [conditional branch target (if/else)] L_007D
L_007D:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0084                          ; EB 02
;   [conditional branch target (if/else)] L_0082
L_0082:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0084
L_0084:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
CLOSECLIPBOARD ENDP


;-----------------------------------------------------------------------
; EMPTYCLIPBOARD  (offset 0x008D, size 149 bytes)
;-----------------------------------------------------------------------
EMPTYCLIPBOARD PROC FAR
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
        cmp     word ptr [0x24], 0              ; 83 3E 24 00 00
        je      L_0115                          ; 74 72
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        je      L_00BC                          ; 74 12
        push    word ptr [0x26]                 ; FF 36 26 00
        mov     ax, 0x307                       ; B8 07 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A 3F 01 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_00BC
L_00BC:
        cmp     word ptr [0x22], 0              ; 83 3E 22 00 00
        je      L_0104                          ; 74 41
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 48 01 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, word ptr [0x2c]             ; 8B 3E 2C 00
        jmp     L_00E2                          ; EB 0E
;   [loop start] L_00D4
L_00D4:
        push    word ptr [si]                   ; FF 34
        call    far KERNEL.DELETEATOM           ; 9A FF FF 00 00 [FIXUP]
        push    si                              ; 56
        add     si, 4                           ; 83 C6 04
        call    L_04EF                          ; E8 0D 04
;   [unconditional branch target] L_00E2
L_00E2:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jne     L_00D4                          ; 75 EB
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 85 01 00 00 [FIXUP]
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.LOCALFREE            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x22], ax             ; A3 22 00
        mov     word ptr [0x2c], 0              ; C7 06 2C 00 00 00
;   [conditional branch target (if/else)] L_0104
L_0104:
        mov     word ptr [0x2e], 1              ; C7 06 2E 00 01 00
        mov     ax, word ptr [0x20]             ; A1 20 00
        mov     word ptr [0x26], ax             ; A3 26 00
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0117                          ; EB 02
;   [conditional branch target (if/else)] L_0115
L_0115:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0117
L_0117:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
EMPTYCLIPBOARD ENDP

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
        push    word ptr [0x26]                 ; FF 36 26 00
        mov     ax, 0x306                       ; B8 06 03
        push    ax                              ; 50
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A EF 02 00 00 [FIXUP]
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 4D 02 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        mov     di, si                          ; 8B FE
        mov     word ptr [bp - 6], 0            ; C7 46 FA 00 00
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        mov     word ptr [bp - 8], ax           ; 89 46 F8
        jmp     L_0176                          ; EB 19
;   [loop start] L_015D
L_015D:
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        je      L_0173                          ; 74 10
        inc     word ptr [bp - 6]               ; FF 46 FA
        mov     ax, word ptr [si]               ; 8B 04
        mov     dx, word ptr [si + 2]           ; 8B 54 02
        mov     word ptr [di], ax               ; 89 05
        mov     word ptr [di + 2], dx           ; 89 55 02
        add     di, 4                           ; 83 C7 04
;   [conditional branch target (if/else)] L_0173
L_0173:
        add     si, 4                           ; 83 C6 04
;   [unconditional branch target] L_0176
L_0176:
        mov     ax, word ptr [bp - 8]           ; 8B 46 F8
        dec     word ptr [bp - 8]               ; FF 4E F8
        or      ax, ax                          ; 0B C0
        jne     L_015D                          ; 75 DD
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 95 02 00 00 [FIXUP]
        mov     word ptr [0x26], 0              ; C7 06 26 00 00 00
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        cmp     word ptr [bp - 6], ax           ; 39 46 FA
        je      L_019D                          ; 74 06
        mov     word ptr [0x2e], 1              ; C7 06 2E 00 01 00
;   [conditional branch target (if/else)] L_019D
L_019D:
        mov     ax, word ptr [bp - 6]           ; 8B 46 FA
        mov     word ptr [0x2c], ax             ; A3 2C 00
        cmp     word ptr [0x2e], 0              ; 83 3E 2E 00 00
        je      L_01AD                          ; 74 03
        call    L_04B0                          ; E8 03 03
;   [conditional branch target (if/else)] L_01AD
L_01AD:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB

;-----------------------------------------------------------------------
; GETCLIPBOARDOWNER  (offset 0x01B8, size 22 bytes)
;-----------------------------------------------------------------------
GETCLIPBOARDOWNER PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x26]             ; A1 26 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
GETCLIPBOARDOWNER ENDP


;-----------------------------------------------------------------------
; SETCLIPBOARDDATA  (offset 0x01CE, size 225 bytes)
;-----------------------------------------------------------------------
SETCLIPBOARDDATA PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        sub     sp, 8                           ; 83 EC 08
        push    di                              ; 57
        push    si                              ; 56
        mov     si, word ptr [bp + 8]           ; 8B 76 08
        cmp     word ptr [0x24], 0              ; 83 3E 24 00 00
        je      L_01EB                          ; 74 04
        or      si, si                          ; 0B F6
        jne     L_01F0                          ; 75 05
;   [loop start (also forward branch)] L_01EB
L_01EB:
        sub     ax, ax                          ; 2B C0
        jmp     L_02A2                          ; E9 B2 00
;   [conditional branch target (if/else)] L_01F0
L_01F0:
        push    si                              ; 56
        call    L_0551                          ; E8 5D 03
        mov     di, ax                          ; 8B F8
        or      di, di                          ; 0B FF
        jne     L_0264                          ; 75 6A
        cmp     word ptr [0x22], 0              ; 83 3E 22 00 00
        jne     L_0216                          ; 75 15
        ; constant BLACKNESS
        mov     ax, 0x42                        ; B8 42 00
        push    ax                              ; 50
        ;   ^ arg wFlags
        mov     ax, 4                           ; B8 04 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        ; --> LOCALALLOC(WORD wFlags, WORD wBytes) -> HANDLE
        call    far KERNEL.LOCALALLOC           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [0x22], ax             ; A3 22 00
        jmp     L_0230                          ; EB 1A
;   [conditional branch target (if/else)] L_0216
L_0216:
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, 4                           ; 05 04 00
        push    ax                              ; 50
        ;   ^ arg wBytes
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> LOCALREALLOC(HANDLE hMem, WORD wBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.LOCALREALLOC         ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
;   [unconditional branch target] L_0230
L_0230:
        cmp     word ptr [bp - 4], 0            ; 83 7E FC 00
        je      L_01EB                          ; 74 B5
        push    si                              ; 56
        call    far KERNEL.GETATOMHANDLE        ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 6], ax           ; 89 46 FA
        or      ax, ax                          ; 0B C0
        je      L_0248                          ; 74 05
        mov     bx, ax                          ; 8B D8
        inc     word ptr [bx + 2]               ; FF 47 02
;   [conditional branch target (if/else)] L_0248
L_0248:
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A 8F 03 00 00 [FIXUP]
        mov     di, ax                          ; 8B F8
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        inc     word ptr [0x2c]                 ; FF 06 2C 00
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     di, ax                          ; 03 F8
        mov     word ptr [di], si               ; 89 35
        jmp     L_0268                          ; EB 04
;   [conditional branch target (if/else)] L_0264
L_0264:
        push    di                              ; 57
        call    L_04EF                          ; E8 87 02
;   [unconditional branch target] L_0268
L_0268:
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [di + 2], ax           ; 89 45 02
        push    di                              ; 57
        call    L_05AC                          ; E8 3A 03
        or      ax, ax                          ; 0B C0
        je      L_0280                          ; 74 0A
        cmp     ax, 2                           ; 3D 02 00
        jl      L_0290                          ; 7C 15
        cmp     ax, 3                           ; 3D 03 00
        jg      L_0290                          ; 7F 10
;   [conditional branch target (if/else)] L_0280
L_0280:
        push    word ptr [di + 2]               ; FF 75 02
        ;   ^ arg hMem
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        ;   ^ arg dwBytes (high/segment)
        push    ax                              ; 50
        ;   ^ arg dwBytes (low/offset)
        mov     ax, 0x2080                      ; B8 80 20
        push    ax                              ; 50
        ;   ^ arg wFlags
        ; --> GLOBALREALLOC(HANDLE hMem, DWORD dwBytes, WORD wFlags) -> HANDLE
        call    far KERNEL.GLOBALREALLOC        ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0290
L_0290:
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FB 02 00 00 [FIXUP]
        mov     word ptr [0x2e], 1              ; C7 06 2E 00 01 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
;   [unconditional branch target] L_02A2
L_02A2:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
SETCLIPBOARDDATA ENDP


;-----------------------------------------------------------------------
; GETCLIPBOARDDATA  (offset 0x02AF, size 95 bytes)
;-----------------------------------------------------------------------
GETCLIPBOARDDATA PROC FAR
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
        sub     di, di                          ; 2B FF
        cmp     word ptr [0x24], di             ; 39 3E 24 00
        je      L_02FF                          ; 74 39
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0551                          ; E8 85 02
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_02FF                          ; 74 2D
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        jne     L_02F3                          ; 75 1B
        cmp     word ptr [0x26], 0              ; 83 3E 26 00 00
        je      L_02F3                          ; 74 14
        push    word ptr [0x26]                 ; FF 36 26 00
        mov     ax, 0x305                       ; B8 05 03
        push    ax                              ; 50
        push    word ptr [bp + 6]               ; FF 76 06
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02F3
L_02F3:
        mov     di, word ptr [si + 2]           ; 8B 7C 02
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 3D 03 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_02FF
L_02FF:
        mov     ax, di                          ; 8B C7
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
GETCLIPBOARDDATA ENDP


;-----------------------------------------------------------------------
; COUNTCLIPBOARDFORMATS  (offset 0x030E, size 22 bytes)
;-----------------------------------------------------------------------
COUNTCLIPBOARDFORMATS PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
COUNTCLIPBOARDFORMATS ENDP


;-----------------------------------------------------------------------
; ISCLIPBOARDFORMATAVAILABLE  (offset 0x0324, size 47 bytes)
;-----------------------------------------------------------------------
ISCLIPBOARDFORMATAVAILABLE PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0551                          ; E8 1D 02
        or      ax, ax                          ; 0B C0
        je      L_0346                          ; 74 0E
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A 9D 03 00 00 [FIXUP]
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_0348                          ; EB 02
;   [conditional branch target (if/else)] L_0346
L_0346:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_0348
L_0348:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
ISCLIPBOARDFORMATAVAILABLE ENDP


;-----------------------------------------------------------------------
; ENUMCLIPBOARDFORMATS  (offset 0x0353, size 107 bytes)
;-----------------------------------------------------------------------
ENUMCLIPBOARDFORMATS PROC FAR
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
        cmp     word ptr [0x24], 0              ; 83 3E 24 00 00
        je      L_036F                          ; 74 07
        cmp     word ptr [0x22], 0              ; 83 3E 22 00 00
        jne     L_0373                          ; 75 04
;   [loop start (also forward branch)] L_036F
L_036F:
        sub     ax, ax                          ; 2B C0
        jmp     L_03B2                          ; EB 3F
;   [conditional branch target (if/else)] L_0373
L_0373:
        cmp     word ptr [bp + 6], 0            ; 83 7E 06 00
        je      L_038A                          ; 74 11
        push    word ptr [bp + 6]               ; FF 76 06
        call    L_0551                          ; E8 D2 01
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_036F                          ; 74 EA
        add     si, 4                           ; 83 C6 04
        jmp     L_0398                          ; EB 0E
;   [conditional branch target (if/else)] L_038A
L_038A:
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [0x2a], ax             ; A3 2A 00
        mov     si, ax                          ; 8B F0
;   [unconditional branch target] L_0398
L_0398:
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A FF FF 00 00 [FIXUP]
        mov     ax, word ptr [0x2c]             ; A1 2C 00
        shl     ax, 1                           ; D1 E0
        shl     ax, 1                           ; D1 E0
        add     ax, word ptr [0x2a]             ; 03 06 2A 00
        cmp     ax, si                          ; 3B C6
        jbe     L_036F                          ; 76 BF
        mov     ax, word ptr [si]               ; 8B 04
;   [unconditional branch target] L_03B2
L_03B2:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
ENUMCLIPBOARDFORMATS ENDP


;-----------------------------------------------------------------------
; REGISTERCLIPBOARDFORMAT  (offset 0x03BE, size 32 bytes)
;-----------------------------------------------------------------------
REGISTERCLIPBOARDFORMAT PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.ADDATOM              ; 9A FF FF 00 00 [FIXUP]
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
REGISTERCLIPBOARDFORMAT ENDP


;-----------------------------------------------------------------------
; GETCLIPBOARDFORMATNAME  (offset 0x03DE, size 49 bytes)
;-----------------------------------------------------------------------
GETCLIPBOARDFORMATNAME PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        cmp     word ptr [bp + 0xc], 0xbfff     ; 81 7E 0C FF BF
        jae     L_03F3                          ; 73 04
        sub     ax, ax                          ; 2B C0
        jmp     L_0404                          ; EB 11
;   [conditional branch target (if/else)] L_03F3
L_03F3:
        push    word ptr [bp + 0xc]             ; FF 76 0C
        push    word ptr [bp + 0xa]             ; FF 76 0A
        push    word ptr [bp + 8]               ; FF 76 08
        push    word ptr [bp + 6]               ; FF 76 06
        call    far KERNEL.GETATOMNAME          ; 9A FF FF 00 00 [FIXUP]
;   [unconditional branch target] L_0404
L_0404:
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    8                               ; CA 08 00
GETCLIPBOARDFORMATNAME ENDP


;-----------------------------------------------------------------------
; SETCLIPBOARDVIEWER  (offset 0x040F, size 57 bytes)
;-----------------------------------------------------------------------
SETCLIPBOARDVIEWER PROC FAR
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
        push    word ptr [bp + 6]               ; FF 76 06
        call    far _SEG1_608D                  ; 9A 66 04 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_043A                          ; 74 11
        mov     si, word ptr [0x28]             ; 8B 36 28 00
        mov     ax, word ptr [bp + 6]           ; 8B 46 06
        mov     word ptr [0x28], ax             ; A3 28 00
        call    L_04B0                          ; E8 7A 00
        mov     ax, si                          ; 8B C6
        jmp     L_043C                          ; EB 02
;   [conditional branch target (if/else)] L_043A
L_043A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_043C
L_043C:
        pop     si                              ; 5E
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    2                               ; CA 02 00
SETCLIPBOARDVIEWER ENDP


;-----------------------------------------------------------------------
; CHANGECLIPBOARDCHAIN  (offset 0x0448, size 145 bytes)
;-----------------------------------------------------------------------
CHANGECLIPBOARDCHAIN PROC FAR
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
        push    si                              ; 56
        call    far _SEG1_6092                  ; 9A FF FF 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0475                          ; 74 11
        push    di                              ; 57
        call    far _SEG1_608D                  ; 9A 11 00 00 00 [FIXUP]
        or      ax, ax                          ; 0B C0
        je      L_0475                          ; 74 07
        cmp     word ptr [0x28], 0              ; 83 3E 28 00 00
        jne     L_0479                          ; 75 04
;   [conditional branch target (if/else)] L_0475
L_0475:
        sub     ax, ax                          ; 2B C0
        jmp     L_04A3                          ; EB 2A
;   [conditional branch target (if/else)] L_0479
L_0479:
        cmp     word ptr [0x28], si             ; 39 36 28 00
        jne     L_0491                          ; 75 12
        cmp     word ptr [0x28], di             ; 39 3E 28 00
        jne     L_048A                          ; 75 05
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_048C                          ; EB 02
;   [conditional branch target (if/else)] L_048A
L_048A:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_048C
L_048C:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_04A3                          ; EB 12
;   [conditional branch target (if/else)] L_0491
L_0491:
        push    word ptr [0x28]                 ; FF 36 28 00
        mov     ax, 0x30d                       ; B8 0D 03
        push    ax                              ; 50
        push    si                              ; 56
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    di                              ; 57
        call    far _SEG1_253F                  ; 9A D1 04 00 00 [FIXUP]
;   [unconditional branch target] L_04A3
L_04A3:
        pop     si                              ; 5E
        pop     di                              ; 5F
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf    4                               ; CA 04 00
;   [sub-routine] L_04B0
L_04B0:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        mov     word ptr [0x2e], 0              ; C7 06 2E 00 00 00
        cmp     word ptr [0x28], 0              ; 83 3E 28 00 00
        je      L_04D5                          ; 74 15
        push    word ptr [0x28]                 ; FF 36 28 00
        mov     ax, 0x308                       ; B8 08 03
        push    ax                              ; 50
        push    word ptr [0x26]                 ; FF 36 26 00
        sub     ax, ax                          ; 2B C0
        push    ax                              ; 50
        push    ax                              ; 50
        call    far _SEG1_253F                  ; 9A B8 00 00 00 [FIXUP]
;   [error/early exit] L_04D5
L_04D5:
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret                                     ; C3
CHANGECLIPBOARDCHAIN ENDP


;-----------------------------------------------------------------------
; GETCLIPBOARDVIEWER  (offset 0x04D9, size 268 bytes)
;-----------------------------------------------------------------------
GETCLIPBOARDVIEWER PROC FAR
        push    ds                              ; 1E
        pop     ax                              ; 58
        nop                                     ; 90
        inc     bp                              ; 45
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    ds                              ; 1E
        mov     ds, ax                          ; 8E D8
        mov     ax, word ptr [0x28]             ; A1 28 00
        sub     bp, 2                           ; 83 ED 02
        mov     sp, bp                          ; 8B E5
        pop     ds                              ; 1F
        pop     bp                              ; 5D
        dec     bp                              ; 4D
        retf                                    ; CB
;   [sub-routine] L_04EF
L_04EF:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        cmp     word ptr [si + 2], 0            ; 83 7C 02 00
        je      L_054A                          ; 74 4B
        push    si                              ; 56
        call    L_05AC                          ; E8 A9 00
        or      ax, ax                          ; 0B C0
        je      L_054A                          ; 74 43
        cmp     ax, 1                           ; 3D 01 00
        je      L_0542                          ; 74 36
        cmp     ax, 2                           ; 3D 02 00
        je      L_0538                          ; 74 27
        cmp     ax, 3                           ; 3D 03 00
        jne     L_054A                          ; 75 34
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg hMem
        ; --> GLOBALLOCK(HANDLE hMem) -> LPVOID
        call    far KERNEL.GLOBALLOCK           ; 9A FF FF 00 00 [FIXUP]
        mov     word ptr [bp - 4], ax           ; 89 46 FC
        mov     word ptr [bp - 2], dx           ; 89 56 FE
        les     bx, ptr [bp - 4]                ; C4 5E FC
        push    word ptr es:[bx + 6]            ; 26 FF 77 06
        call    far GDI.DELETEMETAFILE          ; 9A FF FF 00 00 [FIXUP]
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg hMem
        ; --> GLOBALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.GLOBALUNLOCK         ; 9A FF FF 00 00 [FIXUP]
;   [conditional branch target (if/else)] L_0538
L_0538:
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg hMem
        ; --> GLOBALFREE(HANDLE hMem) -> HANDLE
        call    far KERNEL.GLOBALFREE           ; 9A FF FF 00 00 [FIXUP]
        jmp     L_054A                          ; EB 08
;   [conditional branch target (if/else)] L_0542
L_0542:
        push    word ptr [si + 2]               ; FF 74 02
        ;   ^ arg hObj
        ; --> DELETEOBJECT(HANDLE hObj) -> BOOL
        call    far GDI.DELETEOBJECT            ; 9A FF FF 00 00 [FIXUP]
;   [error/early exit] L_054A
L_054A:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;   [sub-routine] L_0551
L_0551:
        ;   = cProc <4> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        sub     sp, 4                           ; 83 EC 04
        push    di                              ; 57
        push    si                              ; 56
        sub     di, di                          ; 2B FF
        cmp     word ptr [0x22], di             ; 39 3E 22 00
        jne     L_0565                          ; 75 04
;   [loop start] L_0561
L_0561:
        sub     ax, ax                          ; 2B C0
        jmp     L_05A4                          ; EB 3F
;   [conditional branch target (if/else)] L_0565
L_0565:
        cmp     word ptr [bp + 4], 0            ; 83 7E 04 00
        je      L_0561                          ; 74 F6
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALLOCK(HANDLE hMem) -> PSTR
        call    far KERNEL.LOCALLOCK            ; 9A C8 00 00 00 [FIXUP]
        mov     si, ax                          ; 8B F0
        or      si, si                          ; 0B F6
        je      L_0561                          ; 74 E7
        mov     word ptr [0x2a], si             ; 89 36 2A 00
        mov     di, word ptr [0x2c]             ; 8B 3E 2C 00
        jmp     L_0592                          ; EB 0E
;   [loop start] L_0584
L_0584:
        mov     ax, word ptr [si]               ; 8B 04
        cmp     word ptr [bp + 4], ax           ; 39 46 04
        jne     L_058F                          ; 75 04
        mov     ax, si                          ; 8B C6
        jmp     L_05A4                          ; EB 15
;   [conditional branch target (if/else)] L_058F
L_058F:
        add     si, 4                           ; 83 C6 04
;   [unconditional branch target] L_0592
L_0592:
        mov     ax, di                          ; 8B C7
        dec     di                              ; 4F
        or      ax, ax                          ; 0B C0
        jne     L_0584                          ; 75 EB
        push    word ptr [0x22]                 ; FF 36 22 00
        ;   ^ arg hMem
        ; --> LOCALUNLOCK(HANDLE hMem) -> BOOL
        call    far KERNEL.LOCALUNLOCK          ; 9A EE 00 00 00 [FIXUP]
        jmp     L_0561                          ; EB BD
;   [fall-through exit] L_05A4
L_05A4:
        pop     si                              ; 5E
        pop     di                              ; 5F
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        ret     2                               ; C2 02 00
;   [sub-routine] L_05AC
L_05AC:
        ;   = cProc <0> ; NEAR PASCAL prologue
        push    bp                              ; 55
        mov     bp, sp                          ; 8B EC
        push    si                              ; 56
        mov     si, word ptr [bp + 4]           ; 8B 76 04
        mov     ax, word ptr [si]               ; 8B 04
        cmp     ax, 2                           ; 3D 02 00
        je      L_05D3                          ; 74 19
        cmp     ax, 3                           ; 3D 03 00
        je      L_05D8                          ; 74 19
        cmp     ax, 0x80                        ; 3D 80 00
        je      L_05DD                          ; 74 19
        cmp     ax, 0x82                        ; 3D 82 00
        je      L_05D3                          ; 74 0A
        cmp     ax, 0x83                        ; 3D 83 00
        je      L_05D8                          ; 74 0A
        mov     ax, 2                           ; B8 02 00
        jmp     L_05DF                          ; EB 0C
;   [conditional branch target (if/else)] L_05D3
L_05D3:
        ; constant WM_CREATE
        mov     ax, 1                           ; B8 01 00
        jmp     L_05DF                          ; EB 07
;   [conditional branch target (if/else)] L_05D8
L_05D8:
        ; constant WM_MOVE
        mov     ax, 3                           ; B8 03 00
        jmp     L_05DF                          ; EB 02
;   [conditional branch target (if/else)] L_05DD
L_05DD:
        sub     ax, ax                          ; 2B C0
;   [unconditional branch target] L_05DF
L_05DF:
        pop     si                              ; 5E
        mov     sp, bp                          ; 8B E5
        pop     bp                              ; 5D
        db      0c2h                            ; C2
        db      002h                            ; 02
GETCLIPBOARDVIEWER ENDP


USER_TEXT ENDS

        END
