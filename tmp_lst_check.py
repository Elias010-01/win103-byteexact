import sys, json
sys.path.insert(0, 'bootstrap/analyze')
import pass24_batch_masm_verify as p
from pathlib import Path

lst = Path('tools/dos/work/batch/ATTDC_BI.LST')
stream = p._lst_byte_stream(lst, 'BITBLT')
print('stream length:', len(stream))

r = json.loads(open('state/analyze/pass24/results.json').read())
b = [x for x in r if x['module']=='ATTDC' and x['name']=='BITBLT'][0]
exp = bytes.fromhex(b['expected_hex'])
act = bytes.fromhex(b['actual_hex'])
print('exp == stream?', exp == stream)
print('act == stream?', act == stream)
n = min(len(exp), len(stream))
for i in range(n):
    if exp[i] != stream[i]:
        print(f'EXP vs STREAM diverge at {i}: exp[{exp[i]:02X}] stream[{stream[i]:02X}]')
        print(f'   stream[{max(0,i-4)}:{i+8}] = {stream[max(0,i-4):i+8].hex()}')
        print(f'   exp   [{max(0,i-4)}:{i+8}] = {exp[max(0,i-4):i+8].hex()}')
        break
else:
    print(f'IDENTICAL up to {n} bytes')
