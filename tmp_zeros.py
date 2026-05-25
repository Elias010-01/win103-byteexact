"""Investigate fails where actual_hex has spurious zeros."""
import json
from pathlib import Path

r = json.loads(Path('state/analyze/pass24/results.json').read_text())
fails = [x for x in r if not x['match']]

for x in fails:
    name = x['name']
    if name not in ('REALIZEOBJECT', 'INDEXWNDPROC', 'FNPHONE',
                     'ENABLE', 'CONTROL'):
        continue
    print(f"=== {x['module']} {name} ({x['note']}) ===")
    exp = bytes.fromhex(x['expected_hex'])
    act = bytes.fromhex(x['actual_hex'])
    n = min(len(exp), len(act))
    for i in range(n):
        if exp[i] != act[i]:
            ctx = max(0, i - 6)
            print(f"  divergence at byte {i}")
            print(f"  exp: {exp[ctx:i+8].hex()}")
            print(f"  act: {act[ctx:i+8].hex()}")
            break
    print()
    if x['module'] in ('ATTDC', 'CARDFILE', 'JOYMOUSE', 'EPSON'):
        # Look at .lst around that offset
        lst = Path(x['lst_path'])
        if lst.exists():
            text = lst.read_text(encoding='ascii', errors='ignore')
            target = f'{i:04X}'.lower()
            for line in text.lower().splitlines():
                if line.strip().startswith(target[:2]) and target[2] in line[:8]:
                    print(f'   LST: {line[:100]}')
                    break
