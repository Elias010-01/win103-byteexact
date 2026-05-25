"""Diagnose remaining pass24 failures: print expected vs actual context
around the divergence so we can spot patterns to fix in pass24 itself.

Run from repo root: python bootstrap/analyze/tools/fail_diag.py
"""
import json
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import capstone

results = json.loads(
    Path('state/analyze/pass24/results.json').read_text())
fails = [x for x in results if not x['match']]
print(f'Total fails: {len(fails)} / {len(results)}')

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
md.detail = False

# Print one sample per (function-name) so we see N distinct failure shapes
seen_names = set()
for f in fails:
    if f['name'] in seen_names:
        continue
    seen_names.add(f['name'])
    exp = bytes.fromhex(f['expected_hex'])
    act = bytes.fromhex(f['actual_hex'])
    n = min(len(exp), len(act))
    div = next((i for i in range(n) if exp[i] != act[i]), n)
    lo, hi = max(0, div - 8), min(len(exp), div + 12)
    print(f"\n{f['module']:10} {f['name']:25} {f['note']}")
    print(f"  exp[{lo:04X}:{hi:04X}]={exp[lo:hi].hex()}")
    print(f"  act[{lo:04X}:{hi:04X}]={act[lo:hi].hex()}")
    # Show capstone disasm of expected covering the divergence
    for ins in md.disasm(exp, 0):
        if ins.address + ins.size <= lo:
            continue
        if ins.address >= hi:
            break
        print(f"    capstone {ins.address:04X} {ins.bytes.hex():<12} "
              f"{ins.mnemonic} {ins.op_str}")
