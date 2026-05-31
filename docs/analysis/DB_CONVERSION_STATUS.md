# DB to Mnemonic Conversion Status

## Summary

As of v16.1, the project has converted **21,684 db lines** to pure mnemonics while
maintaining byte-exact build (92/92 modules, 50/50 tests pass).

| Metric | Before | After | Delta |
|--------|--------|-------|-------|
| DB lines | 114,431 | 92,959 | -21,472 |
| Mnemonic lines | 443,460 | 464,938 | +21,478 |
| Coverage | 79.5% | 83.3% | +3.8% |

## Conversion Methods Used

### 1. Safe 1-byte conversion (db_convert_safe.py)
- **Lines converted**: 21,635
- **Method**: Capstone sequence disassembly to verify 1-byte instructions in context
- **Speed**: ~3,000 lines/second
- **Safety**: High - only converts verified 1-byte instructions
- **Top files**:
  - WIN100_OVL/seg1.asm: +20,244
  - WINOLDAP/seg1.asm: +1,174
  - WRITE/seg79.asm: +125

### 2. Multi-byte direct (db_convert_multi.py)
- **Lines converted**: 9
- **Method**: Individual NASM testing for multi-byte instructions
- **Result**: Very few multi-byte instructions match NASM exactly

### 3. Syntax adapter (db_convert_syntax.py)
- **Lines converted**: 40
- **Method**: Test multiple NASM syntax variants (remove ptr, fix spacing, etc.)
- **Result**: Limited success - most Capstone syntax doesn't map to NASM exactly

## Why Most DB Lines Remain

The remaining 92,959 db lines are primarily:

1. **Jumps and calls** (~15,000): `jmp`, `je`, `jne`, `call`, `lcall`, `ret`
   - Cannot convert without label definitions
   - NASM chooses different encodings (short vs near) than MASM 4.0

2. **MASM 4.0 encoding differences** (~60,000): `mov`, `add`, `cmp`, `sub`, etc.
   - MASM 4.0 and NASM choose different bytes for same mnemonic
   - Operand size inference differs between assemblers
   - Memory reference encoding differs

3. **Segment overrides and special instructions** (~5,000): `les`, `lds`, segment prefixes
   - NASM handles segment overrides differently

4. **Data decoded as code** (~10,000): Strings, tables, bitmaps that Capstone misidentified
   - These should remain as `db` with semantic comments

5. **Complex x86 instructions** (~3,000): `imul`, `idiv`, `shl`, `shr` with complex operands
   - Rare encoding combinations that NASM doesn't replicate

## Technical Root Cause

The fundamental issue is that **MASM 4.0 (1985)** and **NASM (modern)** are different
assemblers with different encoding heuristics. For the same source mnemonics, they often
produce different bytes. The project prioritizes **byte-exactness** over **mnemonic purity**.

To convert more db lines, we would need:
- A MASM 4.0-compatible assembler, OR
- An exhaustive mapping of MASM 4.0 → NASM syntax for every encoding variation, OR
- Manual inspection and testing of each remaining db line

All three approaches are massive undertakings beyond the scope of automated conversion.

## Files with Most Remaining DB Lines

| File | DB Lines | Notes |
|------|----------|-------|
| WIN100_OVL/seg1.asm | 73,287 | Overlay loader, mostly MASM-encoded instructions |
| WINOLDAP/seg1.asm | 5,554 | Old app compatibility layer |
| WIN100/seg1.asm | 4,436 | WIN100 binary |
| WIN/seg1.asm | 880 | DOS .COM loader |
| WRITE/seg79.asm | 700 | WRITE segment |

## Recommendation for Future Work

1. **Manual conversion**: For each module, a human expert could manually find the
   NASM syntax that reproduces each byte. Estimate: 10-30 minutes per 100 db lines.

2. **MASM 4.0 build path**: Use `bootstrap/puredb_convert.py` to build with MASM 4.0.
   The `--mode=masm` flag already exists in `build_from_source.py`.

3. **C port priority**: Focus on modules with highest C-origin ratio (CALC, PAINT,
   NOTEPAD) that have fewer db lines to convert.

---
*Generated: 2026-05-31*
