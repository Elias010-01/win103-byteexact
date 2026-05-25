# `kb/symbols/` — Reference symbols (third-party)

The `*syms.txt` files in this directory are **NOT our work**. They are
mirrored here for the convenience of the analysis pipeline (`pass 21`).
They are reproduced **with attribution and pending explicit upstream
confirmation**.

## Origin

| File | Source |
|---|---|
| `kernelsyms.txt` | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/kerneldebug/kernelsyms.txt |
| `usersyms.txt`   | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/userdebug/usersyms.txt |
| `gdisyms.txt`    | https://github.com/starfrost013/modern-personality-research/blob/main/win1.03/reversing/gdidebug/gdisyms.txt |

The upstream repository is maintained by **Connor Hyde
([@starfrost013](https://github.com/starfrost013))**.

Each file is a textual dump produced by his
[`symread`](https://github.com/starfrost013/symread) tool from
Microsoft's original `.SYM` files of the **debug** build of
Windows 1.03 (KERNEL/USER/GDI).

## Why are they here?

- `bootstrap/analyze/pass21_starfrost_symbols.py` parses these files to
  emit per-module reference tables under
  `docs/analysis/<MODULE>_starfrost_symbols.md`, listing 2017 internal
  function names from the debug build alongside the 520 names that
  also appear in our retail `.DEF` exports.
- Mirroring the files locally avoids each clone hitting GitHub's raw
  endpoint and keeps the pipeline reproducible offline.

## Permission and reuse

- Connor sent us technical feedback by email on 2026-05-25 and pointed
  us to these files explicitly. He authorised use of his `symread` tool;
  redistribution of these specific text dumps **inside another repo is
  pending his explicit confirmation**. If he prefers we remove them
  and have `pass 21` fetch them on demand instead, we will do so.
- The underlying `.SYM` data itself derives from Microsoft Corporation's
  Windows 1.03 binaries. Microsoft retains all rights over those.
  Neither this directory nor the parent repository claims ownership.

If you are Connor and want these files removed, open an issue or ping
Elias and they will be deleted from the index immediately (the pipeline
already supports running without them present locally).

## How to refresh from upstream

```bash
mkdir -p kb/symbols
base="https://raw.githubusercontent.com/starfrost013/modern-personality-research/main/win1.03/reversing"
curl -fsSL "$base/kerneldebug/kernelsyms.txt" -o kb/symbols/kernelsyms.txt
curl -fsSL "$base/userdebug/usersyms.txt"     -o kb/symbols/usersyms.txt
curl -fsSL "$base/gdidebug/gdisyms.txt"       -o kb/symbols/gdisyms.txt
```
