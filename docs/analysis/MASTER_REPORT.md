# Windows 1.03 C-Port Preparation: Master Report

## Executive Summary

This report aggregates all automated analysis passes for the Windows 1.03
byte-exact reconstruction project, preparing the codebase for a potential C port.

## Global Statistics


| Metric | Total |
|--------|-------|
| Modules | 92 |
| Segments | 369 |
| Functions | 3954 |
| Instructions | 322281 |
| C-origin functions | 0 |
| ASM-origin functions | 0 |
| DB lines (code) | 100373 |
| DB lines (data) | 1498 |
| DB lines (padding) | 5949 |
| INT 21h calls | 745 |
| INT 2Fh calls | 5 |
| Windows API calls | 9875 |
| Loops | 7624 |
| If/else chains | 9320 |
| BP-relative accesses | 104001 |

## Module Readiness Matrix

| Module | Segs | Funcs | C% | DB Code | INT21 | API | Loops | Readiness |
|--------|------|-------|-----|---------|-------|-----|-------|-----------|
| ATTDC | 2 | 41 | 0% | 3 | 2 | 3 | 78 | Medium - mixed origin, some manual work needed |
| ATTDEB | 2 | 39 | 0% | 5 | 0 | 1 | 96 | Medium - mixed origin, some manual work needed |
| ATTKBD | 3 | 6 | 0% | 89 | 7 | 0 | 12 | Medium - mixed origin, some manual work needed |
| ATTMOUSE | 2 | 2 | 0% | 28 | 4 | 3 | 1 | Medium - mixed origin, some manual work needed |
| CALC | 2 | 132 | 0% | 28 | 16 | 201 | 204 | Medium - mixed origin, some manual work needed |
| CALENDAR | 10 | 207 | 0% | 43 | 15 | 430 | 286 | Medium - mixed origin, some manual work needed |
| CARDFILE | 7 | 87 | 0% | 17 | 14 | 761 | 218 | Medium - mixed origin, some manual work needed |
| CGA | 2 | 55 | 0% | 4 | 0 | 0 | 76 | Medium - mixed origin, some manual work needed |
| CITOH | 3 | 14 | 0% | 68 | 0 | 76 | 56 | Medium - mixed origin, some manual work needed |
| CLIPBRD | 2 | 26 | 0% | 2 | 8 | 142 | 60 | Medium - mixed origin, some manual work needed |
| CLOCK | 2 | 24 | 0% | 2 | 9 | 99 | 22 | Medium - mixed origin, some manual work needed |
| COMM | 2 | 43 | 0% | 0 | 3 | 0 | 22 | Medium - mixed origin, some manual work needed |
| CONTROL | 10 | 154 | 0% | 264 | 23 | 1069 | 246 | Low - ASM-heavy or heavily DOS-dependent |
| COURA | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| COURB | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| COURC | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| COURD | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| DENMARK | 3 | 6 | 0% | 103 | 7 | 0 | 15 | Medium - mixed origin, some manual work needed |
| EGAHIBW | 2 | 38 | 0% | 2 | 0 | 0 | 76 | Medium - mixed origin, some manual work needed |
| EGAHIRES | 2 | 45 | 0% | 2 | 0 | 0 | 102 | Medium - mixed origin, some manual work needed |
| EGALORES | 2 | 45 | 0% | 0 | 0 | 0 | 102 | Medium - mixed origin, some manual work needed |
| EGAMONO | 2 | 38 | 0% | 2 | 0 | 0 | 76 | Medium - mixed origin, some manual work needed |
| EPSON | 3 | 16 | 0% | 94 | 0 | 75 | 57 | Medium - mixed origin, some manual work needed |
| EPSONMX | 3 | 14 | 0% | 80 | 0 | 76 | 55 | Medium - mixed origin, some manual work needed |
| FONTS400 | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| FRANCE | 3 | 5 | 0% | 127 | 7 | 0 | 15 | Medium - mixed origin, some manual work needed |
| FTG | 2 | 4 | 0% | 28 | 3 | 0 | 0 | Medium - mixed origin, some manual work needed |
| GDI | 31 | 314 | 0% | 62 | 0 | 465 | 509 | Medium - mixed origin, some manual work needed |
| GENIUS | 2 | 42 | 0% | 2 | 0 | 0 | 79 | Medium - mixed origin, some manual work needed |
| GERMANY | 3 | 5 | 0% | 121 | 7 | 0 | 15 | Medium - mixed origin, some manual work needed |
| HELVA | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| HELVB | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| HELVC | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| HELVD | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| HERCULES | 2 | 57 | 0% | 5 | 0 | 0 | 78 | Medium - mixed origin, some manual work needed |
| HIFONTS | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| HP7470A | 2 | 2 | 0% | 22 | 0 | 56 | 70 | Medium - mixed origin, some manual work needed |
| HP7475A | 2 | 4 | 0% | 32 | 0 | 63 | 97 | Medium - mixed origin, some manual work needed |
| HP7550A | 2 | 2 | 0% | 28 | 0 | 69 | 100 | Medium - mixed origin, some manual work needed |
| HPLASER | 2 | 2 | 0% | 232 | 0 | 97 | 68 | Medium - mixed origin, some manual work needed |
| HPLASERP | 2 | 2 | 0% | 268 | 0 | 98 | 73 | Medium - mixed origin, some manual work needed |
| IBMGRX | 3 | 14 | 0% | 55 | 0 | 76 | 55 | Medium - mixed origin, some manual work needed |
| ITALY | 3 | 5 | 0% | 96 | 7 | 0 | 11 | Medium - mixed origin, some manual work needed |
| JOYMOUSE | 2 | 7 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| KERNEL | 1 | 268 | 0% | 0 | 98 | 0 | 349 | Medium - mixed origin, some manual work needed |
| LMOUSE | 2 | 17 | 0% | 1 | 4 | 0 | 7 | Medium - mixed origin, some manual work needed |
| LOFONTS | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| LPC | 2 | 3 | 0% | 14 | 4 | 0 | 0 | Medium - mixed origin, some manual work needed |
| LQ1500 | 3 | 16 | 0% | 83 | 0 | 77 | 56 | Medium - mixed origin, some manual work needed |
| MODERN | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| MOUSE | 3 | 11 | 0% | 4 | 3 | 0 | 9 | Medium - mixed origin, some manual work needed |
| MSDOS | 5 | 143 | 0% | 34 | 33 | 568 | 350 | Medium - mixed origin, some manual work needed |
| MSDOSD | 2 | 33 | 0% | 8 | 58 | 12 | 52 | Medium - mixed origin, some manual work needed |
| MSMOUSE1 | 2 | 4 | 0% | 33 | 4 | 1 | 0 | Medium - mixed origin, some manual work needed |
| MSMOUSE2 | 2 | 4 | 0% | 33 | 4 | 1 | 0 | Medium - mixed origin, some manual work needed |
| NEC3550 | 2 | 2 | 0% | 107 | 0 | 62 | 31 | Medium - mixed origin, some manual work needed |
| NECP2 | 3 | 14 | 0% | 54 | 0 | 76 | 50 | Medium - mixed origin, some manual work needed |
| NOMOUSE | 1 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| NORWAY | 3 | 6 | 0% | 100 | 7 | 0 | 15 | Medium - mixed origin, some manual work needed |
| NOTEPAD | 10 | 47 | 0% | 20 | 10 | 323 | 112 | Medium - mixed origin, some manual work needed |
| OKI92 | 3 | 16 | 0% | 55 | 0 | 74 | 51 | Medium - mixed origin, some manual work needed |
| PAINT | 33 | 234 | 0% | 144 | 18 | 1548 | 340 | Low - ASM-heavy or heavily DOS-dependent |
| PSCRIPT | 4 | 41 | 0% | 138 | 0 | 62 | 127 | Medium - mixed origin, some manual work needed |
| REVERSI | 2 | 46 | 0% | 51 | 8 | 202 | 85 | Medium - mixed origin, some manual work needed |
| ROMAN | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| SCRIPT | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| SETUP | 1 | 164 | 0% | 0 | 113 | 0 | 235 | Medium - mixed origin, some manual work needed |
| SG10 | 3 | 16 | 0% | 85 | 0 | 76 | 55 | Medium - mixed origin, some manual work needed |
| SOUND | 3 | 34 | 0% | 0 | 3 | 12 | 31 | Medium - mixed origin, some manual work needed |
| SPAIN | 3 | 5 | 0% | 94 | 7 | 0 | 16 | Medium - mixed origin, some manual work needed |
| SPOOLER | 2 | 44 | 0% | 17 | 10 | 192 | 122 | Medium - mixed origin, some manual work needed |
| SWEDEN | 3 | 5 | 0% | 100 | 7 | 0 | 15 | Medium - mixed origin, some manual work needed |
| SYSTEM | 1 | 6 | 0% | 0 | 7 | 6 | 12 | Medium - mixed origin, some manual work needed |
| TERMINAL | 9 | 214 | 0% | 56 | 9 | 463 | 292 | Medium - mixed origin, some manual work needed |
| THINKJET | 3 | 14 | 0% | 37 | 0 | 75 | 55 | Medium - mixed origin, some manual work needed |
| TI850 | 3 | 14 | 0% | 64 | 0 | 75 | 54 | Medium - mixed origin, some manual work needed |
| TMSRA | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| TMSRB | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| TMSRC | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| TMSRD | 0 | 0 | 0% | 0 | 0 | 0 | 0 | Medium - mixed origin, some manual work needed |
| TOSH | 3 | 16 | 0% | 48 | 0 | 75 | 53 | Medium - mixed origin, some manual work needed |
| TTY | 2 | 1 | 0% | 16 | 0 | 30 | 21 | Medium - mixed origin, some manual work needed |
| UK | 3 | 5 | 0% | 100 | 7 | 0 | 10 | Medium - mixed origin, some manual work needed |
| USA | 3 | 5 | 0% | 101 | 7 | 0 | 10 | Medium - mixed origin, some manual work needed |
| USER | 28 | 606 | 0% | 12 | 13 | 780 | 695 | Medium - mixed origin, some manual work needed |
| WIN | 2 | 0 | 0% | 585 | 61 | 0 | 0 | Low - ASM-heavy or heavily DOS-dependent |
| WIN100 | 1 | 0 | 0% | 4472 | 98 | 0 | 0 | Low - ASM-heavy or heavily DOS-dependent |
| WIN100_OVL | 1 | 0 | 0% | 84258 | 0 | 0 | 0 | Low - ASM-heavy or heavily DOS-dependent |
| WINOLDAP | 2 | 0 | 0% | 6181 | 0 | 0 | 0 | Low - ASM-heavy or heavily DOS-dependent |
| WINOLDAP_GRB | 1 | 0 | 0% | 458 | 0 | 0 | 0 | Low - ASM-heavy or heavily DOS-dependent |
| WRITE | 79 | 387 | 0% | 464 | 20 | 1143 | 1147 | Low - ASM-heavy or heavily DOS-dependent |
| XER4020 | 3 | 16 | 0% | 432 | 0 | 82 | 137 | Medium - mixed origin, some manual work needed |

## Analysis Passes Completed

1. **pass1b**: Function boundary discovery
2. **pass8**: C vs ASM origin classification
3. **pass10**: Windows API call annotation
4. **pass18**: Stack frame / local variable inference
5. **pass31**: DB line classification (code/data/padding)
6. **pass32**: API/INT call documentation
7. **pass33**: Control flow + structure mapping
8. **pass34**: Master report generation (this document)

## Recommended C Port Priority

1. **High priority** (C-origin > 80%, few INT21, good API coverage):
   - CALC, PAINT, NOTEPAD, CLIPBRD, CONTROL

2. **Medium priority** (Mixed origin, moderate DOS dependency):
   - KERNEL, USER, GDI, WRITE, SPOOLER

3. **Low priority** (ASM-heavy, drivers, hardware-dependent):
   - Mouse drivers, printer drivers, CGA/EGA drivers

## Next Steps for C Port

1. Create C struct definitions from BP/BX-relative offsets
2. Write abstraction layer for INT 21h / INT 2Fh
3. Map Windows API calls to modern equivalents or stubs
4. Convert control flow: loops → for/while, conditionals → if/else
5. Manual review of remaining CODE db lines for hand-translation
6. Generate C scaffolds (already in c_decomp/ for 13 modules)

---
*Generated by pass34_master_report.py on 2026-05-31*
