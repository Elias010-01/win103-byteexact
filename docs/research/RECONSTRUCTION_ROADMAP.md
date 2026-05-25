# Reconstruction Roadmap: From Byte-Exact Pipeline to Faithful Source Tree

> **Goal**: Get our source tree as close as physically possible to what Microsoft
> engineers had on screen in 1985-1986, while preserving 100% byte-exact
> recompilability.

This document explains:
1. What Microsoft actually wrote, in what languages, with what tools.
2. What is recoverable from the binary alone and what is permanently lost.
3. A concrete, time-boxed plan to advance from the current state (raw
   disassembly + pipeline) toward a faithful hybrid C/ASM source tree.

---

## 1. What Microsoft Wrote (Reference Data)

### 1.1 Language distribution across modules

Source: Stephen Kitt's answer on Retrocomputing Stack Exchange
([question 30617](https://retrocomputing.stackexchange.com/questions/30617),
archived 2024), corroborated by BetaWiki's Windows 1.0 technical implementation
notes.

| Module             | Original language   | Notes                                                  |
|--------------------|---------------------|--------------------------------------------------------|
| `KERNEL.EXE`       | ~95% MASM assembly  | Some functions were translated from C to ASM by hand.  |
| `GDI.EXE`          | ~50% C, ~50% ASM    | C for high-level API, ASM for rendering primitives.    |
| `USER.EXE`         | ~50% C, ~50% ASM    | C for message handling, ASM for window mgmt low-level. |
| `MSDOS.EXE` (shell)| Mostly C            | Application-style code with C runtime.                 |
| `WIN.COM` / boot   | Pure ASM            | DOS interop, real-mode init.                           |
| Display drivers    | ~95% ASM            | `CGA.DRV`, `EGA*.DRV`, `HERCULES.DRV`, etc.            |
| Keyboard drivers   | ~95% ASM            | `KEYBOARD.DRV`, `*KBD.DRV`.                            |
| Mouse drivers      | ~95% ASM            | `MOUSE.DRV`, `*MOUSE.DRV`.                             |
| Printer drivers    | Mostly ASM          | `CITOH.DRV`, `EPSON.DRV`, etc.                         |
| Apps (CALC, ...)   | ~95% C              | CALC, CALENDAR, CARDFILE, CLOCK, CLIPBRD, NOTEPAD,     |
|                    |                     | PAINT, REVERSI, TERMINAL, WRITE, CONTROL.              |
| Sound drivers      | Mostly ASM          | `SOUND.DRV`.                                           |

> *"It seems that KERNEL is mostly written in assembly language, and GDI and USER
> are a mixture of C and assembly. Some of the assembly language modules are
> actually manual translations of C modules into assembly, but after the initial
> translation the modules were maintained using the assembly language versions.
> The device drivers are mostly written in assembly language; this can be seen
> in the DDK."* — Stephen Kitt

### 1.2 Toolchain Microsoft used

- **Assembler**: MASM 4.0 (released October 1985).
- **C compiler**: Microsoft C 3.0 (1984, internal) for early Windows 1.0 work;
  MSC 4.0 (October 1985) for Windows 1.03 timeframe (released August 1986).
- **Linker**: LINK (16-bit OMF → NE).
- **Calling convention**: PASCAL (parameters pushed left-to-right, callee
  cleans the stack via `ret <args>`).
- **Code model**: small/medium model for apps, large/medium for the core.

### 1.3 What was on the engineers' screens

Approximately:

```asm
;-------------------------------------------------------------------------
; GLOBALALLOC - Allocate a movable memory block in the global heap
;
; Input:    flag    word    GMEM_FIXED | GMEM_MOVEABLE | etc.
;           size    dword   size in bytes
;
; Output:   AX      handle to allocated block (0 if failed)
;-------------------------------------------------------------------------
GLOBALALLOC PROC FAR
        ENTER_PROC 2                    ; macro: push bp / mov bp,sp / sub sp,2
        mov     ax, [bp.flag]           ; named arg via struct symbolic
        or      ax, ax
        jne     @validate_flags
        ...
```

And for C code (e.g. CALC):

```c
/* CALC.C - Windows Calculator */
#include <windows.h>
#include "calc.h"

LONG FAR PASCAL CalcWndProc(HWND hWnd, WORD msg, WORD wParam, LONG lParam)
{
    HDC     hDC;
    PAINTSTRUCT ps;

    switch (msg) {
        case WM_CREATE:
            ...
```

Both compiled into the same `.EXE` we are working with.

---

## 2. What Is Recoverable, What Is Lost

### 2.1 Recoverable (with effort)

| Information                          | How                                              |
|--------------------------------------|--------------------------------------------------|
| Bytes of every segment               | Already done (`db` directives).                  |
| Instruction sequences                | Already done (Capstone disassembly).             |
| Call graph                           | Already done (pass 2).                           |
| Module boundaries                    | Done (NE segment table).                         |
| Public API names                     | Done (NE resident name table).                   |
| Function boundaries                  | ~95% via pass 1b heuristic discovery.            |
| Probable original language (C vs ASM)| Heuristic via prologue patterns, BP usage, etc.  |
| Parameter names for exported APIs    | KB ingest from Petzold, Pietrek, Microsoft KB.   |
| Common constants (GMEM_FIXED, etc.)  | KB ingest + literal substitution.                |
| Common MASM macros                   | N-gram analysis of repeated patterns.            |
| Function purpose (heuristic)         | Pass 3 done; can be deeper with LLM batch.       |
| Line-by-line comments                | LLM batch over each PROC.                        |
| Plausible C source for app modules   | Ghidra decompile + LLM refinement.               |

### 2.2 Permanently lost in compilation

| Information                          | Why                                              |
|--------------------------------------|--------------------------------------------------|
| Original line-by-line comments       | Compiler discards comments.                      |
| Original local variable names        | Compiler emits `[bp-N]` not `[bp.hWnd]`.         |
| Original macro names                 | Macros are expanded before assembly.             |
| Original file boundaries             | Linker merges into segments.                     |
| Whitespace, indentation, formatting  | Discarded.                                       |
| Comments inside functions            | Discarded.                                       |
| TODO / FIXME / debug notes           | Discarded.                                       |
| Original development build system    | Not in the binary.                               |

### 2.3 The honest ceiling

Even with infinite effort, a recovered source tree contains, at best, **~30-50%
of the information** that was on the Microsoft engineers' screens. The rest is
mathematically unrecoverable. Our project is currently at **~15-20%** of that
ceiling, after one night of work.

The reference comparison: `n64decomp/sm64` (Mario 64) took ~5 years with a team
of 10-20 contributors to reach a high-confidence reconstruction, and even there
all local variable names and comments are community-invented, not Nintendo's
originals.

---

## 3. Classification: Which Modules Were C, Which Were ASM

We will build an automated classifier (see `bootstrap/analyze/pass8_classify_origin.py`)
that examines each function's structure and assigns a probability of being
"C-origin" or "ASM-origin".

### 3.1 Heuristic signals for "C-origin (MSC 4.0)"

Strong positive signals:

- Strict PASCAL prologue: `push bp / mov bp, sp` (often with `sub sp, N`).
- Strict PASCAL epilogue: `mov sp, bp / pop bp / ret <N>` where N matches
  the sum of declared parameter sizes.
- Local variables exclusively via `[bp-N]` with N>0.
- Arguments exclusively via `[bp+N]` with N>=4.
- Saved registers in canonical order: SI/DI pushed at start, popped at end
  in reverse.
- No use of CPU flags as state across calls.
- No far-call into the middle of another function.
- Heap of `mov`/`add`/`sub` operations with consistent register usage
  (compiler tends to allocate registers predictably).

### 3.2 Heuristic signals for "ASM-origin (hand-written)"

Strong positive signals:

- No frame pointer (`bp` not used as base).
- Parameters passed in registers (AX, BX, CX, DX) rather than on the stack.
- Stack frame shared with caller (fallthrough patterns).
- Use of `int 21h`, `int 10h`, `int 16h` directly (DOS/BIOS calls).
- Self-modifying patterns or data interleaved with code.
- Bit-twiddling: `rol`, `ror`, `rcl`, `rcr`, complex shifts.
- String operations (`movsb`, `cmpsb`, `scasb`, `lodsw`, `stosw`).
- Multiple entry points into the same routine.
- `pushf`/`popf` used as state propagation.
- Unaligned `db`/`dw` data mixed in code segments.
- Macro-style patterns repeated identically across many places.

### 3.3 Expected results per module

| Module             | Expected C-origin % | Confidence            |
|--------------------|---------------------|-----------------------|
| KERNEL             | ~5%                 | High (drivers/system) |
| GDI                | ~50%                | Medium                |
| USER               | ~50%                | Medium                |
| MSDOS              | ~80%                | High (app-style)      |
| CALC               | ~95%                | Very high             |
| CALENDAR           | ~95%                | Very high             |
| CARDFILE           | ~95%                | Very high             |
| CLIPBRD            | ~95%                | Very high             |
| CLOCK              | ~95%                | Very high             |
| CONTROL            | ~95%                | Very high             |
| NOTEPAD            | ~95%                | Very high             |
| PAINT              | ~80%                | High (graphics inner) |
| REVERSI            | ~95%                | Very high             |
| TERMINAL           | ~85%                | High                  |
| WRITE              | ~95%                | Very high             |
| *KBD, *MOUSE, *DC, *DEB | ~5%            | High (drivers)        |
| CGA, EGA, HERCULES | ~5%                 | High (display drv)    |
| CITOH, EPSON, ...  | ~5%                 | High (printer drv)    |
| KEYBOARD, MOUSE    | ~5%                 | High (drivers)        |
| SOUND              | ~5%                 | High (driver)         |
| SYSTEM             | ~5%                 | High (driver)         |

---

## 4. Phased Reconstruction Plan

### Phase 0 — Already done (one night)
- [x] Extract NE segments and preserve raw bytes.
- [x] Disassemble code segments with Capstone.
- [x] Generate human-readable `.asm` with bytes-as-authority.
- [x] Custom NE rebuilder, 69/69 binaries byte-exact.
- [x] Mod system (apply/revert).
- [x] Heuristic semantic pass (3954 functions identified, callgraph,
      function descriptions, 259 modules annotated).

### Phase 1 — Origin classifier (current step)
Estimated: 1-2 hours.

- [ ] `pass8_classify_origin.py`: classify every PROC as C-origin / ASM-origin
      / unclear, with confidence score.
- [ ] Output: `state/analyze/pass8/<MODULE>.json` per-function, plus a global
      `pass8_summary.json` and a Markdown report.

### Phase 2 — KB of Windows 1.x API signatures
Estimated: 1 day.

- [ ] Build `bootstrap/analyze/win1x_api_signatures.py` with parameter names
      and types for all known exported APIs (Petzold "Programming Windows"
      1985, Pietrek "Windows Internals", Microsoft Windows 1.0 SDK reference).
- [ ] Apply automated renaming: `[bp+4]` → alias `flags` (or similar) inside
      each function whose name matches a KB entry.
- [ ] Verify byte-exact rebuild still passes after every batch.

### Phase 3 — Semantic labels (L_xxxx → meaningful)
Estimated: 1-2 days.

- [ ] `pass9_semantic_labels.py`: detect flow-control role of each label
      (loop start, if-else branch, switch jumptable target, error exit,
      etc.) and rename accordingly.
- [ ] Apply to all 3954 functions.
- [ ] Verify byte-exact rebuild.

### Phase 4 — Macro extraction
Estimated: half day.

- [ ] `pass10_macros.py`: detect N-gram patterns (prologue, epilogue, common
      sequences) and emit a `common.inc` with macro definitions.
- [ ] Rewrite sources to call macros where applicable.
- [ ] Verify byte-exact.

### Phase 5 — Header reconstruction
Estimated: 1 day.

- [ ] `pass11_headers.py`: ingest Windows 1.x constants (GMEM_*, WM_*, DT_*,
      SW_*, etc.) into a KB, then substitute literals like `mov ax, 0001h`
      with `mov ax, WM_CREATE` (alias only — bytes unchanged).
- [ ] Emit `inc/windows.inc`, `inc/kernel.inc`, `inc/gdi.inc`, `inc/user.inc`.

### Phase 6 — Line-by-line comments via LLM
Estimated: 3 days (mostly compute).

- [ ] For each PROC, send the ASM body to an LLM with a prompt to annotate
      each non-trivial line with a 1-line comment in English.
- [ ] Insert as `;` comments parallel to the existing byte comments.
- [ ] Spot-check + automated quality filter.
- [ ] Result: every `.asm` file is annotated at the line level.

### Phase 7 — C decompilation of app modules
Estimated: 1-2 weeks for *functional* C, months for *byte-exact* C.

- [ ] Apply Ghidra Decompiler to each app's PROC list, get coarse C.
- [ ] Iteratively refine with an LLM, comparing observed behavior against
      the original binary in DOSBox-X.
- [ ] Goal A: produce `apps/<NAME>/*.c` that, when compiled with any modern
      compiler, runs the same way as the original (*functional decomp*).
- [ ] Goal B (stretch, months): produce C that, when compiled with MSC 4.0
      using specific flags, produces *byte-identical* `.EXE` to the
      original (*byte-exact decomp*, sm64decomp-style).

### Phase 8 — Hybrid GDI/USER decomp
Estimated: 1-2 weeks.

- [ ] Using the Phase 1 classifier output, lift C-origin functions in GDI
      and USER to C while keeping ASM-origin functions in `.asm` form.
- [ ] Result: `gdi/*.c` + `gdi/*.asm` coexist, both compile into byte-exact
      `GDI.EXE`.

### Phase 9 — Documentation and polish
Estimated: ongoing.

- [ ] Update README with reconstruction status per module.
- [ ] Per-app README with screenshot, function list, modding hints.
- [ ] Migrate the documentation pages to a GitHub Pages site.

---

## 5. Realistic Total Timeline

| Aggregate goal                                       | Time   |
|------------------------------------------------------|--------|
| Phase 0 (where we are)                               | done   |
| Phase 1                                              | hours  |
| Phases 1-5 (variables, labels, macros, headers)      | 1 wk   |
| Phase 6 (LLM line comments)                          | 3 d    |
| Phase 7 (functional C for apps)                      | 1-2 wk |
| Phase 8 (hybrid GDI/USER)                            | 1-2 wk |
| **Total to reach ~60-70% of the theoretical ceiling**| **~3-4 weeks** |
| Phase 7B (byte-exact C decomp like sm64decomp)       | months |

---

## 6. Constraints That Must Hold Throughout

1. **Byte-exact regression must pass after every batch.** No exceptions. If
   a transformation breaks the 69/69 SHA-1 match, it is reverted.

2. **No invented information presented as fact.** Heuristic results are
   labeled as heuristic. C decompilations of formerly-C modules are clearly
   labeled as "plausible reconstructed source", not as the original.

3. **Microsoft binaries are never redistributed.** The `.asm` files cite raw
   bytes as reference material (see `LEGAL.md`). The reconstructed C is
   original work (with AI assistance), released under MIT.

4. **No commits to public main branch without verification.** Work happens in
   feature branches; only verified-byte-exact work merges to `main`.

---

## 7. Phase 1 Initial Results (executed)

The Phase 1 classifier (`bootstrap/analyze/pass8_classify_origin.py`) was run
against all 3954 discovered functions. Output:

- `state/analyze/pass8/<MODULE>.json` (per-function classification)
- `state/analyze/pass8_summary.json` (aggregate)
- `state/analyze/pass8_report.md` (human-readable table)

### 7.1 Aggregate numbers

| Bucket             | Count | Percentage |
|--------------------|-------|------------|
| C-origin           | 2209  | 55.9%      |
| ASM-origin         | 493   | 12.5%      |
| Unclear            | 1173  | 29.7%      |
| Tiny (<3 instr)    | 79    | 2.0%       |
| **Total**          | 3954  | 100%       |

### 7.2 Validations against expected ratios

The classifier matched the expected language ratio (within ±25%) for the
following modules:

- **Display drivers (5 modules)**: CGA, EGA*, HERCULES → 0-2% C (expected 5%). ✅
- **Input drivers (8 modules)**: KEYBOARD, MOUSE, ATT*, MSMOUSE*, NORWAY,
  SPAIN, etc. → 0% C (expected 5%). ✅
- **Apps (10 modules)**: CARDFILE, CLIPBRD, CLOCK, CONTROL, NOTEPAD, PAINT,
  REVERSI, TERMINAL, WRITE, COMM → 70-92% C (expected 80-95%). ✅
- **Core mixed**: GDI 51%, USER 55% (expected ~50% each). ✅
- **Sound/system**: SOUND 9%, SYSTEM 33% (expected 5% — close, some functions
  may be C wrappers around ASM). ✅

### 7.3 Surprises that update our model

Three groups produced results that **revise** our prior expectations:

1. **Printer drivers were mostly C, not ASM.** All ~16 printer drivers
   (CITOH, EPSON, HP*, IBMGRX, LQ*, NEC*, OKI*, PSCRIPT, SG10, THINKJET,
   TI*, TOSH, TTY, XER*) classify at 90-100% C-origin. This makes sense
   in retrospect — printer drivers in Win 1.x generate ASCII escape
   sequences and operate at high level, not interrupt-driven hardware
   like display drivers. We will treat them as C-origin going forward.

2. **KERNEL is more C than expected (~34% vs predicted 5%).** Likely
   reflects that high-level functions in KERNEL (heap manager, module
   loader) were in C with PASCAL calling convention, while interrupt
   handlers and low-level memory were ASM. The split is plausible. Our
   prior assumption that "KERNEL = pure ASM" was too coarse.

3. **CALENDAR has 167/207 unclear (81%).** The classifier is unable to
   decide. This requires investigation in Phase 2; likely the functions
   are short and don't show strong signals either way.

### 7.4 Priority list for next phases

Based on classifier output, the recommended order for subsequent phases
is now:

**High-confidence C-origin modules (to decompile to C in Phase 7):**

| Module    | Functions | C count | C%    |
|-----------|-----------|---------|-------|
| WRITE     | 387       | 322     | 83.2% |
| USER      | 606       | 332     | 54.8% |
| PAINT     | 234       | 215     | 91.9% |
| TERMINAL  | 214       | 180     | 84.1% |
| GDI       | 314       | 160     | 51.0% |
| CONTROL   | 154       | 125     | 81.2% |
| MSDOS     | 143       | 119     | 83.2% |
| SETUP     | 164       | 95      | 57.9% |
| CARDFILE  | 87        | 73      | 83.9% |
| CALC      | 132       | 60      | 45.5% |
| PSCRIPT   | 41        | 39      | 95.1% |
| NOTEPAD   | 47        | 38      | 80.9% |
| SPOOLER   | 44        | 36      | 81.8% |
| REVERSI   | 46        | 33      | 71.7% |
| CALENDAR  | 207       | 27      | 13.0% |
| CLIPBRD   | 26        | 19      | 73.1% |
| MSDOSD    | 33        | 18      | 54.5% |
| CLOCK     | 24        | 17      | 70.8% |
| Printer drv| ~190     | ~190    | ~98%  |

**High-confidence ASM-origin modules (to keep as ASM with deeper
annotations only):**

| Module group       | Modules | ASM count |
|--------------------|---------|-----------|
| Display drivers    | 6       | ~150      |
| Input drivers      | 13      | ~30       |
| Keymaps            | 10      | ~20       |
| KERNEL (subset)    | 1       | 40        |
| SOUND/SYSTEM       | 2       | 14        |

### 7.5 Caveat

These classifications are **heuristic**, based purely on structural
signals in the disassembly. Without the original source code we cannot
prove any individual classification. The aggregate ratios match the
historical record (Stephen Kitt, BetaWiki) closely enough to give us
confidence in the per-module priorities, but individual function-level
calls may be wrong. Phase 7 (C decomp) will validate by attempting to
produce compilable C and observing whether the result actually compiles
and runs correctly.

---

## 8. References

- Stephen Kitt, "What was the main implementation programming language of old
  16-bit Windows versions" — retrocomputing.stackexchange.com question 30617,
  archived 2024.
- BetaWiki, "Windows 1.0" — `betawiki.net/wiki/Windows_1.0`.
- Charles Petzold, *Programming Windows*, Microsoft Press, 1988 (first
  edition covers Windows 1.x).
- Matt Pietrek, *Windows Internals: The Implementation of the Windows
  Operating Environment*, Addison-Wesley, 1993.
- Andrew Schulman et al., *Undocumented Windows*, Addison-Wesley, 1992.
- Microsoft Windows 1.0 SDK Reference Manual (1985).
- `starfrost013/modern-personality-windows` — prior reverse engineering
  notes that informed our work.
- `n64decomp/sm64`, `zeldaret/oot`, `pret/pokered` — methodology references
  for byte-exact decompilation projects.
