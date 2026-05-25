# c_decomp/ — C scaffolds for Windows 1.x modules

This directory contains AUTO-GENERATED C scaffolding for the application
modules of Windows 1.03 (CALC, CARDFILE, NOTEPAD, PAINT, REVERSI, WRITE,
TERMINAL, etc.), generated from the byte-exact `.asm` sources in `src/`.

**Status**: scaffolding only. Function bodies are placeholders (`TODO`).
These files are documentation in C form, intended as a starting point
for future hand-lift work.

## Statistics

- Modules scaffolded: **13**
- Total functions documented: **1745**
- Total API call sites cataloged: **4104**

## Modules

| Module | Functions | API Calls | Scaffold |
|--------|-----------|-----------|----------|
| CALC | 132 | 138 | `c_decomp/CALC/CALC.c` |
| CALENDAR | 207 | 306 | `c_decomp/CALENDAR/CALENDAR.c` |
| CARDFILE | 87 | 429 | `c_decomp/CARDFILE/CARDFILE.c` |
| CLIPBRD | 26 | 114 | `c_decomp/CLIPBRD/CLIPBRD.c` |
| CLOCK | 24 | 62 | `c_decomp/CLOCK/CLOCK.c` |
| CONTROL | 154 | 516 | `c_decomp/CONTROL/CONTROL.c` |
| NOTEPAD | 47 | 181 | `c_decomp/NOTEPAD/NOTEPAD.c` |
| PAINT | 234 | 841 | `c_decomp/PAINT/PAINT.c` |
| REVERSI | 46 | 110 | `c_decomp/REVERSI/REVERSI.c` |
| TERMINAL | 214 | 326 | `c_decomp/TERMINAL/TERMINAL.c` |
| WRITE | 387 | 543 | `c_decomp/WRITE/WRITE.c` |
| MSDOS | 143 | 390 | `c_decomp/MSDOS/MSDOS.c` |
| SPOOLER | 44 | 148 | `c_decomp/SPOOLER/SPOOLER.c` |

## What this is NOT

- This is not a working C source tree. The `.c` files will not compile.
- This is not a real decompilation. Function bodies are `TODO` stubs.
- The signatures shown are inferred from heuristics (pass 8 classifier
  + win1x_api_signatures KB); they may be wrong for individual functions.

## What this IS

- A complete enumeration of every function in each module with its
  classification (likely-C vs likely-ASM origin), API call surface, and
  pointer to the byte-exact source.
- A template for incremental, byte-exact-validatable C lifting (the
  long-term goal, modeled after `sm64decomp`, `oot`, `pokered`).
- A documentation artifact that makes the entire project navigable from
  a C-programmer's perspective rather than only from an assembly one.

## How this was generated

Run `python bootstrap/analyze/pass20_c_scaffold.py` from the repo root.
