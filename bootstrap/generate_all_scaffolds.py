"""Generate C scaffolds for ALL modules that don't have them yet.

Uses pass1b data when available, falls back to label scanning in .asm files.
"""

from __future__ import annotations

import json
import re
from pathlib import Path

REPO = Path(r'C:\Users\Elias\CascadeProjects\modern-personality-agent')
SRC = REPO / "src"
C_DECOMP = REPO / "c_decomp"
PASS1B_DIR = REPO / "state" / "analyze" / "pass1b"

HEADER = """/*
 * {module}.c - Reconstructed C scaffold for Windows 1.x {module}
 *
 * AUTO-GENERATED scaffolding. NOT a real decompilation.
 *
 * Source of truth: src/{module}/seg*.asm (byte-exact with original Microsoft)
 * Functions discovered: {num_funcs}
 */

#include <windows.h>

"""


def extract_functions_from_asm(module: str) -> list[tuple[str, int]]:
    """Extract function labels from .asm files."""
    mod_dir = SRC / module
    funcs = []
    for f in mod_dir.iterdir():
        if f.suffix != ".asm" or ".bak" in f.name or "_real" in f.name:
            continue
        text = f.read_text(encoding="ascii", errors="replace")
        for line in text.splitlines():
            s = line.strip()
            m = re.match(r"^(L_[0-9a-fA-F]+):", s)
            if m and m.group(1) not in [fn for fn, _ in funcs]:
                funcs.append((m.group(1), 0))
            m = re.match(r"^(sub_[0-9a-fA-F]+):", s)
            if m and m.group(1) not in [fn for fn, _ in funcs]:
                funcs.append((m.group(1), int(m.group(1).split("_")[1], 16)))
    return sorted(funcs, key=lambda x: x[1])


def generate_scaffold(module: str) -> str:
    # Try pass1b first
    pass1b_file = PASS1B_DIR / f"{module}.json"
    funcs = []
    if pass1b_file.exists():
        try:
            data = json.loads(pass1b_file.read_text())
            funcs_dict = data.get("functions", {})
            for name, info in funcs_dict.items():
                offset = info.get("offset", 0) if isinstance(info, dict) else 0
                funcs.append((name, offset))
            funcs.sort(key=lambda x: x[1])
        except:
            pass
    
    if not funcs:
        funcs = extract_functions_from_asm(module)
    
    num_funcs = len(funcs)
    out = HEADER.format(module=module, num_funcs=num_funcs)
    
    for name, offset in funcs[:100]:  # Limit to first 100
        out += f"""/* Function: {name} @ offset 0x{offset:04X}
 * TODO: lift from src/{module}/seg*.asm
 */
void FAR PASCAL {name}(void)
{{
    /* ASM stub - not yet converted to C */
}}

"""
    
    if len(funcs) > 100:
        out += f"/* ... {len(funcs) - 100} more functions ... */\n"
    
    return out


def main():
    C_DECOMP.mkdir(parents=True, exist_ok=True)
    
    # Find modules without scaffold
    existing = set()
    if C_DECOMP.exists():
        existing = {d.name for d in C_DECOMP.iterdir() if d.is_dir()}
    
    src_modules = [d.name for d in SRC.iterdir() if d.is_dir()]
    missing = sorted(set(src_modules) - existing)
    
    print(f"Generating scaffolds for {len(missing)} modules...")
    
    for module in missing:
        mod_dir = C_DECOMP / module
        mod_dir.mkdir(exist_ok=True)
        
        scaffold = generate_scaffold(module)
        c_file = mod_dir / f"{module}.c"
        c_file.write_text(scaffold, encoding="utf-8")
        
        readme = mod_dir / "README.md"
        readme.write_text(
            f"# {module} - C Scaffold\n\n"
            f"Auto-generated C scaffolding for {module}.\n"
            f"See {module}.c for function stubs.\n",
            encoding="utf-8",
        )
        print(f"  Generated {module}/")
    
    print(f"\nDone! Generated {len(missing)} scaffolds.")


if __name__ == "__main__":
    main()
