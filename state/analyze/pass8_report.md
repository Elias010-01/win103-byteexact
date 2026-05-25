# Pass 8 — Function Origin Classification Report

> Classifies every function in `pass1b` as C-origin or ASM-origin based on
> structural heuristics (prologue, epilogue, BP frame usage, INT calls,
> string ops, bit twiddles, saved registers).

## Aggregate

- Modules analyzed: **69**
- Total functions: **3954**
- Classified as C-origin: **2209** (55.9%)
- Classified as ASM-origin: **493** (12.5%)
- Unclear: **1173**
- Tiny (skipped): **79**

## Per-module breakdown

| Module | Funcs | C count | ASM count | Unclear | C% overall | C% of classified | Expected | Status |
|--------|-------|---------|-----------|---------|-----------|------------------|----------|--------|
| ATTDC | 41 | 0 | 24 | 15 | 0.0% | 0.0% | 5% | ok |
| ATTDEB | 39 | 0 | 22 | 15 | 0.0% | 0.0% | 5% | ok |
| ATTKBD | 6 | 0 | 3 | 3 | 0.0% | 0.0% | 5% | ok |
| ATTMOUSE | 2 | 0 | 2 | 0 | 0.0% | 0.0% | 5% | ok |
| CALC | 132 | 60 | 37 | 28 | 45.5% | 61.9% | 95% | under |
| CALENDAR | 207 | 27 | 13 | 167 | 13.0% | 67.5% | 95% | under |
| CARDFILE | 87 | 73 | 2 | 12 | 83.9% | 97.3% | 95% | ok |
| CGA | 55 | 0 | 27 | 26 | 0.0% | 0.0% | 5% | ok |
| CITOH | 14 | 14 | 0 | 0 | 100.0% | 100.0% | 10% | over |
| CLIPBRD | 26 | 19 | 2 | 5 | 73.1% | 90.5% | 90% | ok |
| CLOCK | 24 | 17 | 2 | 5 | 70.8% | 89.5% | 95% | ok |
| COMM | 43 | 9 | 4 | 28 | 20.9% | 69.2% | 30% | ok |
| CONTROL | 154 | 125 | 6 | 23 | 81.2% | 95.4% | 90% | ok |
| DENMARK | 6 | 0 | 3 | 3 | 0.0% | 0.0% | 5% | ok |
| EGAHIBW | 38 | 0 | 23 | 14 | 0.0% | 0.0% | 5% | ok |
| EGAHIRES | 45 | 1 | 23 | 20 | 2.2% | 4.2% | - | no_expectation |
| EGALORES | 45 | 1 | 23 | 20 | 2.2% | 4.2% | - | no_expectation |
| EGAMONO | 38 | 0 | 23 | 14 | 0.0% | 0.0% | 5% | ok |
| EPSON | 16 | 16 | 0 | 0 | 100.0% | 100.0% | 10% | over |
| EPSONMX | 14 | 14 | 0 | 0 | 100.0% | 100.0% | 10% | over |
| FRANCE | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| FTG | 4 | 0 | 3 | 1 | 0.0% | 0.0% | - | no_expectation |
| GDI | 314 | 160 | 31 | 104 | 51.0% | 83.8% | 50% | ok |
| GENIUS | 42 | 0 | 23 | 17 | 0.0% | 0.0% | - | no_expectation |
| GERMANY | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| HERCULES | 57 | 0 | 28 | 26 | 0.0% | 0.0% | 5% | ok |
| HP7470A | 2 | 1 | 0 | 1 | 50.0% | 100.0% | - | no_expectation |
| HP7475A | 4 | 3 | 0 | 1 | 75.0% | 100.0% | - | no_expectation |
| HP7550A | 2 | 1 | 0 | 1 | 50.0% | 100.0% | - | no_expectation |
| HPLASER | 2 | 2 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| HPLASERP | 2 | 2 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| IBMGRX | 14 | 14 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| ITALY | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| JOYMOUSE | 7 | 2 | 0 | 5 | 28.6% | 100.0% | - | no_expectation |
| KERNEL | 268 | 92 | 40 | 121 | 34.3% | 69.7% | 5% | over |
| LMOUSE | 17 | 0 | 5 | 12 | 0.0% | 0.0% | - | no_expectation |
| LPC | 3 | 1 | 1 | 1 | 33.3% | 50.0% | - | no_expectation |
| LQ1500 | 16 | 16 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| MOUSE | 11 | 0 | 6 | 5 | 0.0% | 0.0% | 5% | ok |
| MSDOS | 143 | 119 | 6 | 18 | 83.2% | 95.2% | - | no_expectation |
| MSDOSD | 33 | 18 | 3 | 12 | 54.5% | 85.7% | 70% | ok |
| MSMOUSE1 | 4 | 0 | 3 | 1 | 0.0% | 0.0% | - | no_expectation |
| MSMOUSE2 | 4 | 0 | 3 | 1 | 0.0% | 0.0% | - | no_expectation |
| NEC3550 | 2 | 2 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| NECP2 | 14 | 14 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| NOMOUSE | 0 | 0 | 0 | 0 | 0.0% | 0.0% | - | no_expectation |
| NORWAY | 6 | 0 | 3 | 3 | 0.0% | 0.0% | - | no_expectation |
| NOTEPAD | 47 | 38 | 3 | 6 | 80.9% | 92.7% | 95% | ok |
| OKI92 | 16 | 15 | 0 | 1 | 93.8% | 100.0% | - | no_expectation |
| PAINT | 234 | 215 | 2 | 17 | 91.9% | 99.1% | 80% | ok |
| PSCRIPT | 41 | 39 | 0 | 2 | 95.1% | 100.0% | - | no_expectation |
| REVERSI | 46 | 33 | 3 | 9 | 71.7% | 91.7% | 95% | ok |
| SETUP | 164 | 95 | 30 | 38 | 57.9% | 76.0% | - | no_expectation |
| SG10 | 16 | 16 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| SOUND | 34 | 3 | 11 | 19 | 8.8% | 21.4% | 5% | ok |
| SPAIN | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| SPOOLER | 44 | 36 | 2 | 6 | 81.8% | 94.7% | 70% | ok |
| SWEDEN | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| SYSTEM | 6 | 2 | 3 | 1 | 33.3% | 40.0% | 5% | over |
| TERMINAL | 214 | 180 | 12 | 21 | 84.1% | 93.8% | 85% | ok |
| THINKJET | 14 | 14 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| TI850 | 14 | 14 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| TOSH | 16 | 15 | 0 | 1 | 93.8% | 100.0% | - | no_expectation |
| TTY | 1 | 1 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
| UK | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| USA | 5 | 0 | 2 | 3 | 0.0% | 0.0% | - | no_expectation |
| USER | 606 | 332 | 16 | 241 | 54.8% | 95.4% | 50% | ok |
| WRITE | 387 | 322 | 3 | 62 | 83.2% | 99.1% | 95% | ok |
| XER4020 | 16 | 16 | 0 | 0 | 100.0% | 100.0% | - | no_expectation |
