#!/usr/bin/env python3
"""launch_vanilla_win103.py - Build from semantic source and launch vanilla
Windows 1.03 in DOSBox-X. No mods, no patches. Pure rebuilt binaries."""
from __future__ import annotations

import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "bootstrap"))

import fat12_replace  # noqa: E402

RUNTIME_DIR = ROOT / "runtime"
IMG = RUNTIME_DIR / "win103-built.img"
BAK = IMG.with_suffix(".img.bak")
BUILT = ROOT / "built"
DOSBOX = RUNTIME_DIR / "dosbox-x-win" / "mingw-build" / "mingw-sdl2" / "dosbox-x.exe"

if not BAK.exists():
    print("ERROR: no IMG backup found at", BAK)
    sys.exit(1)

if not BUILT.exists():
    print("ERROR: no built/ directory; run build_from_source.py first")
    sys.exit(1)

# Restore clean IMG
shutil.copy2(BAK, IMG)
print(f"Restored {IMG.name} from backup")

# Only inject files that are actually present in the IMG root dir
# (The boot floppy only contains apps + loader, not .DRV/.FON/system modules)
IMG_FILES = {
    "CALC.EXE", "CALENDAR.EXE", "CARDFILE.EXE", "CLIPBRD.EXE",
    "CLOCK.EXE", "CONTROL.EXE", "MSDOS.EXE", "NOTEPAD.EXE",
    "PAINT.EXE", "REVERSI.EXE", "SPOOLER.EXE", "TERMINAL.EXE",
    "WRITE.EXE", "WIN.COM", "WIN100.BIN", "WIN100.OVL",
    "WINOLDAP.GRB", "WINOLDAP.MOD",
}

injected = 0
skipped = 0
for src in sorted(BUILT.iterdir()):
    if not src.is_file():
        continue
    name = src.name.upper()
    if name not in IMG_FILES:
        continue
    try:
        fat12_replace.replace_file(IMG, name, src.read_bytes(), verbose=False)
        print(f"  [OK] {name}")
        injected += 1
    except ValueError as e:
        print(f"  [SKIP] {name}: {e}")
        skipped += 1
    except Exception as e:
        print(f"  [ERR] {name}: {e}")
        skipped += 1

print(f"\nInjected {injected} files, skipped {skipped}")

# Kill any running DOSBox-X
subprocess.run(["taskkill", "/f", "/im", "dosbox-x.exe"],
               capture_output=True)

# Launch DOSBox-X
conf = RUNTIME_DIR / "dosbox-win103.conf"
if not conf.exists():
    print("WARNING: no dosbox-win103.conf, launching without config")
    cmd = [str(DOSBOX), str(IMG)]
else:
    cmd = [str(DOSBOX), "-conf", str(conf), str(IMG)]

print(f"\nLaunching DOSBox-X...")
subprocess.Popen(cmd, cwd=str(RUNTIME_DIR))
