# Progress Today — Toward the Absolute Ceiling

> Single-session work log for 2026-05-25 (during the launch day). Documents
> the second wave of semantic improvements applied on top of the initial
> one-night byte-exact rebuild.

## Summary

Building on the v10 baseline (byte-exact pipeline + 3954 functions identified
+ heuristic semantic descriptions), this session added a series of automated
analysis and annotation passes that move the project measurably closer to
what a Microsoft engineer would have seen on screen in 1986.

All transformations are **byte-safe by construction**: every pass only adds
or rewrites comment lines, never instruction bytes. The `db`-as-authority
build pipeline guarantees that comment-only changes cannot affect the
rebuilt binaries.

**Verification**: `python bootstrap/build_from_source.py` reports 68/69
byte-exact match against Microsoft's original binaries before and after
this session. The single non-match (MSDOS.EXE) is the pre-existing
elias-windows mod, unchanged.

## Passes added this session

### Pass 8 — Function origin classifier
File: `bootstrap/analyze/pass8_classify_origin.py`

For every one of the 3954 discovered functions, classify the *likely original
programming language* (C vs hand-written assembly) based on structural
signals: prologue/epilogue pattern, stack-frame use, DOS/BIOS interrupts,
string instructions, bit twiddling, saved registers, FAR API call density.

Output: `state/analyze/pass8/<MODULE>.json`, `pass8_summary.json`,
`pass8_report.md`.

Aggregate result over 3954 functions:

```
 2209 (55.9%)  C-origin
  493 (12.5%)  ASM-origin
 1173 (29.7%)  Unclear
   79 (2.0%)   Tiny (skipped)
```

Validated against historical record (Stephen Kitt's answer on Retrocomputing
Stack Exchange, BetaWiki): GDI ≈ 50% C, USER ≈ 50% C, display/input drivers
≈ 0-5% C, apps ≈ 80-95% C. All match.

### Pass 9 — Signature coverage preview
File: `bootstrap/analyze/pass9_preview_renames.py`

Identifies how many `[bp+N]` argument slots in the project could potentially
be renamed using our 109-API knowledge base. Result: ~8000 inferrable slots,
read-only analysis.

### Pass 10 — API call site annotations
File: `bootstrap/analyze/pass10_annotate_api_calls.py`

For every `call far MODULE.API` where `API` is known to our signature KB,
prepend a one-line C-style prototype comment immediately above the call:

```asm
        ; --> CREATEWINDOW(LPSTR lpszClassName, LPSTR lpszWindowName, ...) -> HWND
        call    far USER.CREATEWINDOW           ; 9A FF FF 00 00 [FIXUP]
```

Result: **6164 annotations** added across **222 files**. Byte-exact verified.

### Pass 11 — Function header blocks
File: `bootstrap/analyze/pass11_function_headers.py`

For every function discovered in pass 1b, insert a Microsoft-style header
block immediately before the function's entry label:

```asm
;-------------------------------------------------------------------------
; sub_0179   offset=0x0179  size=41 instr  segment=seg1.asm
;
; Classification (pass8): c_high  (score C=6, ASM=0)
; Prologue: standard_bp     Epilogue: ret
;
; Far API calls:
;   CREATEPEN(INT iStyle, INT iWidth, DWORD clrPen) -> HPEN
;   CREATESOLIDBRUSH(DWORD clr) -> HBRUSH
;-------------------------------------------------------------------------
L_0179:
        push    bp                              ; 55
```

Result: **3382 headers** added across **246 files**.

### Pass 12 — Constants annotation
File: `bootstrap/analyze/pass12_constants.py`

For every `mov reg, IMM` whose immediate matches a known unambiguous Win 1.x
constant (WM_*, ROP codes, VK_*, etc.), insert a `; constant NAME` comment
above the instruction.

Result: **5781 annotations** added across **276 files**.

### Pass 13 — File-level segment headers
File: `bootstrap/analyze/pass13_file_headers.py`

Replace each seg*.asm's minimal auto-generated header with a comprehensive
segment summary:

```asm
; ======================================================================
; CLOCK / seg1.asm   (segment 1 of CLOCK)
; ----------------------------------------------------------------------
; Functions discovered (pass1b):        24
; Total instructions:                 1726
;
; Classification (pass8):
;   C-origin (high+medium):             17
;   ASM-origin (high+medium):            2
;   Unclear:                             5
;
; Far API calls in this segment:     62 (47 unique)
;   Top:
;        3  LOADSTRING
;        3  LOCALALLOC
;        2  GLOBALLOCK
;        ...
; ======================================================================
```

Result: **362 files** enriched.

### Pass 14 — Emit MASM-style SDK headers
File: `bootstrap/analyze/pass14_emit_headers.py`

Generate reconstructed `.inc` files in `inc/`:

```
inc/windows.inc    7.2 KB   types, WM_*, VK_*, GMEM_*, WS_*, SW_*, ROP, MB_*
inc/kernel.inc     5.7 KB   46 KERNEL API prototypes
inc/user.inc       5.5 KB   37 USER API prototypes
inc/gdi.inc        4.2 KB   26 GDI API prototypes
inc/cmacros.inc    2.0 KB   standard FAR PASCAL prologue/epilogue macros
inc/README.md      explanation
```

These are not currently `INCLUDE`d by the seg*.asm sources (the sources are
byte-exact via raw `db`). They serve as documentation, future scaffolding,
and a clean-room reference.

## Knowledge bases created

### `bootstrap/analyze/win1x_api_signatures.py`
109 Windows 1.x API signatures with full parameter information and
PASCAL FAR BP-offset layout. Coverage:

- KERNEL: 46 APIs
- USER:   37 APIs
- GDI:    26 APIs
- Total parameters described: 281

### `bootstrap/analyze/win1x_constants.py`
Win 1.x symbolic constants: WM_*, VK_*, GMEM_*, LMEM_*, ROP codes, plus a
"safe to annotate" filter for unambiguous values.

## Total semantic improvements

Across the entire project (3954 functions, ~7700 .asm files):

| Pass | What it adds | Total count |
|------|--------------|------------:|
| 10   | API call annotations | 6164 |
| 11   | Function header blocks | 3382 |
| 12   | Constant name annotations | 5781 |
| 13   | File-level segment summaries | 362 |
| Sum  | **Semantic comment lines added** | **~15,500** |

## Position relative to the theoretical ceiling

The "absolute ceiling" of source reconstruction from binaries is
approximately 30-50% of what the original developers had on screen (the rest
— line-by-line comments, original variable names, macro identifiers, file
boundaries — is mathematically unrecoverable from compiled output).

Estimates of our position on that scale:

```
Start of session:    ~15-20% of the theoretical ceiling
End of session:      ~30-40% of the theoretical ceiling
```

We now have, for every Microsoft API call site in the project, the C-style
prototype with parameter types and names; for every function, a header
block with origin classification and APIs called; for every magic number
that maps to a known constant, the symbolic name; and a complete
reconstructed SDK header tree in `inc/`.

## What remains for the ceiling

The next phases of `docs/research/RECONSTRUCTION_ROADMAP.md`:

1. **Per-push argument labels** — for each push sequence before a known
   API call, annotate which arg each push contributes (e.g., `; arg lpsz (high)`).
2. **Semantic renaming of `L_xxxx` labels** — detect control-flow role
   (loop start, if-else branch, error exit) and rename.
3. **MASM macro extraction** — detect N-gram patterns and emit macros.
4. **Per-function locals analysis** — infer types of `[bp-N]` slots from
   which APIs receive them as arguments.
5. **LLM line-by-line comments** — batch-annotate every PROC.
6. **C decompilation of app modules** — start with CARDFILE/NOTEPAD/REVERSI.

## Verification command

```
python bootstrap/build_from_source.py
```

Expected output: `68/69 byte-exact, diff: MSDOS` (MSDOS is the
elias-windows mod, pre-existing).
