# Pass 9 (Preview) — API Signature Coverage Report

> Read-only analysis: shows how many functions can be improved with the
> Phase 2 KB of Win 1.x API signatures.

## Aggregate

- Modules analyzed: **69**
- Exports we have signatures for (across all modules): **154**
- Inferrable arg slots across the project: **7650**

## Top APIs called across the whole project

These are the API calls that, once we resolve push sequences before each
call site, will yield the most renames in caller functions.

| API | Total calls | Module | Args |
|-----|-------------|--------|------|
| GLOBALUNLOCK | 168 | KERNEL | 1 |
| GLOBALLOCK | 138 | KERNEL | 1 |
| LOCALFREE | 133 | KERNEL | 1 |
| LSTRCPY | 123 | KERNEL | 2 |
| SELECTOBJECT | 114 | GDI | 2 |
| LSTRLEN | 107 | KERNEL | 1 |
| GLOBALFREE | 100 | KERNEL | 1 |
| RELEASEDC | 88 | USER | 2 |
| LOCALALLOC | 86 | KERNEL | 2 |
| GETDC | 80 | USER | 1 |
| GLOBALALLOC | 79 | KERNEL | 2 |
| DELETEDC | 75 | GDI | 1 |
| SENDMESSAGE | 74 | USER | 4 |
| LOCALUNLOCK | 68 | KERNEL | 1 |
| LOADSTRING | 67 | USER | 4 |
| GETDLGITEM | 62 | USER | 2 |
| SETDLGITEMTEXT | 62 | USER | 3 |
| LOCALLOCK | 62 | KERNEL | 1 |
| GETSTOCKOBJECT | 60 | GDI | 1 |
| PATBLT | 59 | GDI | 6 |
| DELETEOBJECT | 57 | GDI | 1 |
| BITBLT | 56 | GDI | 9 |
| OPENFILE | 52 | KERNEL | 3 |
| ENDDIALOG | 51 | USER | 2 |
| MESSAGEBOX | 51 | USER | 4 |
| ANSIUPPER | 47 | KERNEL | 1 |
| LSTRCAT | 44 | KERNEL | 2 |
| TEXTOUT | 43 | GDI | 5 |
| GETCLIENTRECT | 43 | USER | 2 |
| LOCALREALLOC | 40 | KERNEL | 3 |

## Per-module summary

| Module | Exports | With sig | Discovered funcs | API call sites | Inferrable arg slots |
|--------|---------|----------|------------------|----------------|----------------------|
| ATTDC | 17 | 1 | 41 | 0 | 0 |
| ATTDEB | 17 | 1 | 39 | 0 | 0 |
| ATTKBD | 6 | 2 | 6 | 0 | 0 |
| ATTMOUSE | 3 | 0 | 2 | 0 | 0 |
| CALC | 2 | 0 | 132 | 94 | 216 |
| CALENDAR | 13 | 0 | 207 | 201 | 529 |
| CARDFILE | 9 | 0 | 87 | 292 | 650 |
| CGA | 17 | 1 | 55 | 0 | 0 |
| CITOH | 14 | 1 | 14 | 13 | 19 |
| CLIPBRD | 2 | 0 | 26 | 68 | 155 |
| CLOCK | 2 | 0 | 24 | 41 | 91 |
| COMM | 15 | 0 | 43 | 0 | 0 |
| CONTROL | 19 | 0 | 154 | 359 | 917 |
| DENMARK | 6 | 2 | 6 | 0 | 0 |
| EGAHIBW | 17 | 1 | 38 | 0 | 0 |
| EGAHIRES | 17 | 1 | 45 | 0 | 0 |
| EGALORES | 17 | 1 | 45 | 0 | 0 |
| EGAMONO | 17 | 1 | 38 | 0 | 0 |
| EPSON | 14 | 1 | 16 | 13 | 19 |
| EPSONMX | 14 | 1 | 14 | 13 | 19 |
| FRANCE | 6 | 2 | 5 | 0 | 0 |
| FTG | 3 | 0 | 4 | 0 | 0 |
| GDI | 183 | 25 | 314 | 217 | 293 |
| GENIUS | 17 | 1 | 42 | 0 | 0 |
| GERMANY | 6 | 2 | 5 | 0 | 0 |
| HERCULES | 17 | 1 | 57 | 0 | 0 |
| HP7470A | 14 | 1 | 2 | 0 | 0 |
| HP7475A | 14 | 1 | 4 | 0 | 0 |
| HP7550A | 14 | 1 | 2 | 0 | 0 |
| HPLASER | 14 | 1 | 2 | 0 | 0 |
| HPLASERP | 14 | 1 | 2 | 0 | 0 |
| IBMGRX | 14 | 1 | 14 | 13 | 19 |
| ITALY | 6 | 2 | 5 | 0 | 0 |
| JOYMOUSE | 3 | 0 | 7 | 0 | 0 |
| KERNEL | 103 | 42 | 268 | 0 | 0 |
| LMOUSE | 3 | 0 | 17 | 0 | 0 |
| LPC | 3 | 0 | 3 | 0 | 0 |
| LQ1500 | 14 | 1 | 16 | 13 | 19 |
| MOUSE | 3 | 0 | 11 | 0 | 0 |
| MSDOS | 9 | 0 | 143 | 238 | 531 |
| MSDOSD | 2 | 0 | 33 | 8 | 10 |
| MSMOUSE1 | 3 | 0 | 4 | 0 | 0 |
| MSMOUSE2 | 3 | 0 | 4 | 0 | 0 |
| NEC3550 | 14 | 1 | 2 | 4 | 7 |
| NECP2 | 14 | 1 | 14 | 13 | 19 |
| NOMOUSE | 3 | 0 | 0 | 0 | 0 |
| NORWAY | 6 | 2 | 6 | 0 | 0 |
| NOTEPAD | 7 | 0 | 47 | 119 | 286 |
| OKI92 | 14 | 1 | 16 | 14 | 21 |
| PAINT | 15 | 0 | 234 | 527 | 1442 |
| PSCRIPT | 14 | 1 | 41 | 4 | 6 |
| REVERSI | 4 | 0 | 46 | 77 | 192 |
| SETUP | 0 | 0 | 164 | 0 | 0 |
| SG10 | 14 | 1 | 16 | 13 | 19 |
| SOUND | 18 | 0 | 34 | 5 | 6 |
| SPAIN | 6 | 2 | 5 | 0 | 0 |
| SPOOLER | 2 | 0 | 44 | 99 | 215 |
| SWEDEN | 6 | 2 | 5 | 0 | 0 |
| SYSTEM | 6 | 0 | 6 | 0 | 0 |
| TERMINAL | 11 | 0 | 214 | 176 | 388 |
| THINKJET | 14 | 1 | 14 | 13 | 19 |
| TI850 | 14 | 1 | 14 | 13 | 19 |
| TOSH | 14 | 1 | 16 | 14 | 21 |
| TTY | 14 | 1 | 1 | 0 | 0 |
| UK | 6 | 2 | 5 | 0 | 0 |
| USA | 6 | 2 | 5 | 0 | 0 |
| USER | 236 | 38 | 606 | 369 | 703 |
| WRITE | 30 | 0 | 387 | 310 | 779 |
| XER4020 | 14 | 1 | 16 | 14 | 21 |
