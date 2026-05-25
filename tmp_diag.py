"""Compare expected vs actual at the divergence for representative failures."""
import json
import sys
from pathlib import Path

sys.path.insert(0, 'bootstrap/analyze')
import capstone

r = json.loads(Path('state/analyze/pass24/results.json').read_text())
fails = [x for x in r if not x['match']]

# Pick one of each by name
seen = set()
samples = []
for x in fails:
    if x['name'] in seen:
        continue
    seen.add(x['name'])
    samples.append(x)

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_16)
md.detail = False

for s in samples[:10]:
    print(f"=== {s['module']} {s['name']}: {s['note']} ===")
    exp = bytes.fromhex(s['expected_hex'])
    act = bytes.fromhex(s['actual_hex'])
    n = min(len(exp), len(act))
    for i in range(n):
        if exp[i] != act[i]:
            div = i; break
    else:
        div = n
    # Disassemble around the divergence in expected
    lo = max(0, div - 16)
    hi = min(len(exp), div + 16)
    print(f"div@{div}  exp[{lo}:{hi}]={exp[lo:hi].hex()}")
    print(f"div@{div}  act[{lo}:{hi}]={act[lo:hi].hex()}")
    # Walk capstone insns in the expected stream covering this region
    for ins in md.disasm(exp, 0):
        if ins.address + ins.size <= lo:
            continue
        if ins.address >= hi:
            break
        print(f"   exp_capstone {ins.address:04x} {ins.bytes.hex():<10} "
              f"{ins.mnemonic} {ins.op_str}")
    print()
