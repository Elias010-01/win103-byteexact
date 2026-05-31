from keystone import *

ks = Ks(KS_ARCH_X86, KS_MODE_16)

tests = [
    ('inc bx', b'\x43'),
    ('cmp bl, byte ptr [si+0x31]', bytes([0x3A, 0x5C, 0x31])),
    ('xor byte ptr [bp+di], dh', bytes([0x30, 0x33])),
    ('add byte ptr [bx+si], al', bytes([0x00, 0x00])),
    ('mov ax, bx', bytes([0x89, 0xD8])),
    ('mov ax, [bx+si]', bytes([0x8B, 0x00])),
    ('push word [bp+4]', bytes([0xFF, 0x76, 0x04])),
]

for instr, expected in tests:
    try:
        encoding, count = ks.asm(instr)
        built = bytes(encoding) if encoding else b''
        ok = 'OK' if built == expected else 'DIFF'
        print(f'{instr:40s} -> {built.hex():10s} (expected {expected.hex():10s}) {ok}')
    except KsError as e:
        print(f'{instr:40s} -> ERROR: {e}')
