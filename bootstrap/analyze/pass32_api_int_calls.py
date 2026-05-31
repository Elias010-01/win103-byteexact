"""Pass 32: Document API and interrupt calls for C port preparation.

Scans all .asm files for:
  - int 21h (DOS services)
  - int 2Fh (DOS multiplex)
  - int 10h (BIOS video)
  - int 13h (BIOS disk)
  - int 16h (BIOS keyboard)
  - int 1Ah (BIOS time)
  - call far KERNEL.* / USER.* / GDI.* (Windows API)
  - call near (internal calls)

Output:
  state/analyze/pass32/<MODULE>.json per-module API call inventory
  state/analyze/pass32_summary.md human-readable report
"""

from __future__ import annotations

import json
import re
from pathlib import Path
from collections import Counter, defaultdict

REPO = Path(__file__).resolve().parents[2]
SRC = REPO / "src"
OUT_DIR = REPO / "state" / "analyze" / "pass32"
OUT_DIR.mkdir(parents=True, exist_ok=True)

# DOS INT 21h function names
INT21_FUNCS = {
    0x00: "Terminate program",
    0x01: "Character input with echo",
    0x02: "Character output",
    0x05: "Printer output",
    0x06: "Direct console I/O",
    0x07: "Unfiltered character input",
    0x08: "Character input without echo",
    0x09: "Display string",
    0x0A: "Buffered keyboard input",
    0x0B: "Check keyboard status",
    0x0C: "Flush buffer and read keyboard",
    0x0D: "Disk reset",
    0x0E: "Select disk",
    0x0F: "Open file (FCB)",
    0x10: "Close file (FCB)",
    0x11: "Find first file (FCB)",
    0x12: "Find next file (FCB)",
    0x13: "Delete file (FCB)",
    0x14: "Sequential read (FCB)",
    0x15: "Sequential write (FCB)",
    0x16: "Create file (FCB)",
    0x17: "Rename file (FCB)",
    0x19: "Get current disk",
    0x1A: "Set DTA",
    0x1B: "Get default drive data",
    0x21: "Random read (FCB)",
    0x22: "Random write (FCB)",
    0x23: "Get file size (FCB)",
    0x24: "Set relative record (FCB)",
    0x25: "Set interrupt vector",
    0x26: "Create PSP",
    0x27: "Random block read (FCB)",
    0x28: "Random block write (FCB)",
    0x29: "Parse filename (FCB)",
    0x2A: "Get date",
    0x2B: "Set date",
    0x2C: "Get time",
    0x2D: "Set time",
    0x2E: "Set verify flag",
    0x2F: "Get DTA",
    0x30: "Get DOS version",
    0x31: "Terminate and stay resident",
    0x33: "Get/Set Ctrl-Break",
    0x35: "Get interrupt vector",
    0x36: "Get disk free space",
    0x38: "Get country info",
    0x39: "Create directory",
    0x3A: "Remove directory",
    0x3B: "Change directory",
    0x3C: "Create file (handle)",
    0x3D: "Open file (handle)",
    0x3E: "Close file (handle)",
    0x3F: "Read file (handle)",
    0x40: "Write file (handle)",
    0x41: "Delete file",
    0x42: "Seek file (handle)",
    0x43: "Get/Set file attributes",
    0x44: "IOCTL",
    0x45: "Duplicate handle",
    0x46: "Redirect handle",
    0x47: "Get current directory",
    0x48: "Allocate memory",
    0x49: "Free memory",
    0x4A: "Resize memory block",
    0x4B: "Execute program",
    0x4C: "Terminate with return code",
    0x4D: "Get return code",
    0x4E: "Find first file",
    0x4F: "Find next file",
    0x50: "Set PSP",
    0x51: "Get PSP",
    0x52: "Get DOS internal pointers",
    0x54: "Get verify flag",
    0x55: "Create child PSP",
    0x56: "Rename file",
    0x57: "Get/Set file date/time",
    0x58: "Get/Set memory allocation strategy",
    0x59: "Get extended error code",
    0x5A: "Create temporary file",
    0x5B: "Create new file",
    0x5C: "Lock/Unlock file region",
    0x5D: "Critical error sharing",
    0x5E: "Network functions",
    0x5F: "Network redirection",
    0x60: "Truename",
    0x62: "Get PSP address",
    0x63: "Get lead byte table",
    0x65: "Get extended country info",
    0x66: "Get/Set code page",
    0x67: "Set handle count",
    0x68: "Commit file",
    0x6C: "Extended open file",
}

# DOS INT 2Fh multiplex functions
INT2F_FUNCS = {
    0x01: "PRINT spooler",
    0x06: "ASSIGN",
    0x08: "DRIVER.SYS",
    0x10: "SHARE",
    0x11: "Network redirector",
    0x12: "DOS internal (internal DOS services)",
    0x13: "DOS internal (file sharing)",
    0x14: "NLSFUNC",
    0x15: "GRAPHICS",
    0x16: "Windows/386 support",
    0x17: "Clipboard",
    0x18: "Network redirector (new)",
    0x40: "WIN386 startup",
    0x43: "XMS driver",
    0x48: "DOSKEY",
    0x4A: "HIMEM",
    0x52: "DoubleSpace",
    0x15: "MSCDEX",
    0xAD: "DOS extenders",
    0xAE: "ANSI.SYS",
    0xB0: "GRAFTABL",
    0xB1: "APPEND",
    0xBA: "Code page switching",
    0xC0: "Windows 3.x enhanced mode",
    0xE0: "Norton Guides",
}


def parse_hex_byte(s: str) -> int | None:
    s = s.strip().lower()
    if s.endswith("h"):
        s = s[:-1]
        if s.startswith("0"):
            s = s[1:]
    try:
        return int(s, 16)
    except ValueError:
        return None


def extract_bytes_from_comment(line: str) -> list[int]:
    """Extract raw bytes from comment like '; 00 00' or '; E9 BE 01'."""
    if ";" not in line:
        return []
    comment = line.split(";", 1)[1].strip()
    # Match hex bytes (2 chars each)
    hex_pattern = re.compile(r"[0-9A-Fa-f]{2}")
    matches = hex_pattern.findall(comment)
    return [int(m, 16) for m in matches]


def scan_file(seg_path: Path) -> dict:
    """Scan a single .asm file for API and interrupt calls."""
    text = seg_path.read_text(encoding="ascii", errors="replace")
    lines = text.splitlines()
    
    results = {
        "file": str(seg_path.relative_to(REPO)),
        "int21_calls": [],
        "int2f_calls": [],
        "int_other": [],
        "windows_api_calls": [],
        "internal_calls": [],
    }
    
    for i, line in enumerate(lines):
        s = line.strip()
        if not s or s.startswith(";"):
            continue
        
        # Check for interrupt instructions
        # Look for int 21h, int 2Fh, etc. in the raw bytes or instruction
        bytes_in_comment = extract_bytes_from_comment(line)
        
        # Check for int instruction (CD xx)
        if len(bytes_in_comment) >= 2 and bytes_in_comment[0] == 0xCD:
            int_num = bytes_in_comment[1]
            call_info = {
                "line": i + 1,
                "raw": line.strip(),
                "int_num": f"0x{int_num:02X}",
            }
            if int_num == 0x21:
                # Try to determine AH value from previous mov ah, xx
                ah_val = None
                for j in range(max(0, i - 10), i):
                    prev = lines[j].strip()
                    # Match mov ah, 0xXX or mov ah, XXh
                    m = re.search(r"mov\s+ah\s*,\s*0x([0-9a-fA-F]+)", prev, re.I)
                    if m:
                        ah_val = int(m.group(1), 16)
                        break
                    m = re.search(r"mov\s+ah\s*,\s*([0-9a-fA-F]+)h", prev, re.I)
                    if m:
                        ah_val = int(m.group(1), 16)
                        break
                func_name = INT21_FUNCS.get(ah_val, f"AH=0x{ah_val:02X}") if ah_val is not None else "AH unknown"
                call_info["ah"] = f"0x{ah_val:02X}" if ah_val is not None else "unknown"
                call_info["func"] = func_name
                results["int21_calls"].append(call_info)
            elif int_num == 0x2F:
                func_name = INT2F_FUNCS.get(0, f"INT 2Fh AX unknown")
                call_info["func"] = func_name
                results["int2f_calls"].append(call_info)
            else:
                call_info["func"] = f"BIOS/Unknown interrupt"
                results["int_other"].append(call_info)
        
        # Check for Windows API calls (call far KERNEL.*, USER.*, GDI.*)
        m = re.search(r"call\s+far\s+(KERNEL|USER|GDI)\.(\w+)", s, re.I)
        if m:
            results["windows_api_calls"].append({
                "line": i + 1,
                "raw": s,
                "module": m.group(1).upper(),
                "api": m.group(2).upper(),
            })
        
        # Also check for db lines that encode call far
        if s.startswith("db "):
            # Look for 9A xx xx xx xx pattern (call far ptr)
            if len(bytes_in_comment) >= 5 and bytes_in_comment[0] == 0x9A:
                # Far call, try to resolve from fixup comment
                m = re.search(r"\[FIXUP\]", s, re.I)
                if m:
                    results["windows_api_calls"].append({
                        "line": i + 1,
                        "raw": s,
                        "module": "UNKNOWN",
                        "api": "FIXUP",
                        "note": "Far call via fixup",
                    })
        
        # Check for internal near calls (E8 xx xx or call L_XXXX)
        m = re.search(r"call\s+(L_[0-9a-fA-F]+)", s, re.I)
        if m:
            results["internal_calls"].append({
                "line": i + 1,
                "raw": s,
                "target": m.group(1),
            })
        # Also detect E8 in db lines
        if s.startswith("db ") and len(bytes_in_comment) >= 3 and bytes_in_comment[0] == 0xE8:
            offset = bytes_in_comment[1] | (bytes_in_comment[2] << 8)
            if offset > 0x8000:
                offset -= 0x10000
            target_off = i + 3 + offset  # approximate
            results["internal_calls"].append({
                "line": i + 1,
                "raw": s,
                "target": f"offset_0x{target_off:04X}",
                "note": "Near call via db",
            })
    
    return results


def main():
    files = []
    for f in SRC.rglob("*.asm"):
        if ".bak" in f.name or "_real" in f.name or ".c2" in f.name:
            continue
        files.append(f)
    
    print(f"Processing {len(files)} files...")
    
    all_results = {}
    global_stats = Counter()
    api_counter = Counter()
    int21_counter = Counter()
    
    for i, f in enumerate(files):
        result = scan_file(f)
        module = f.parent.name
        if module not in all_results:
            all_results[module] = []
        all_results[module].append(result)
        
        # Count stats
        for call in result["int21_calls"]:
            global_stats["int21"] += 1
            int21_counter[call.get("func", "unknown")] += 1
        for call in result["int2f_calls"]:
            global_stats["int2f"] += 1
        for call in result["int_other"]:
            global_stats["int_other"] += 1
        for call in result["windows_api_calls"]:
            global_stats["windows_api"] += 1
            api_counter[call.get("api", "unknown")] += 1
        for call in result["internal_calls"]:
            global_stats["internal"] += 1
        
        if (i + 1) % 50 == 0:
            print(f"  [{i+1}/{len(files)}] done")
    
    # Write per-module JSON
    for module, results in all_results.items():
        out_file = OUT_DIR / f"{module}.json"
        out_file.write_text(json.dumps(results, indent=2), encoding="utf-8")
    
    # Write summary
    total_calls = sum(global_stats.values())
    summary = f"""# Pass 32: API and Interrupt Call Summary

Total calls detected: {total_calls}

| Category | Count |
|----------|-------|
| DOS INT 21h | {global_stats['int21']} |
| DOS INT 2Fh | {global_stats['int2f']} |
| Other interrupts | {global_stats['int_other']} |
| Windows API (far calls) | {global_stats['windows_api']} |
| Internal near calls | {global_stats['internal']} |

## Top Windows API calls

| API | Count |
|-----|-------|
"""
    
    for api, count in api_counter.most_common(50):
        summary += f"| {api} | {count} |\n"
    
    summary += """
## Top INT 21h functions

| Function | Count |
|----------|-------|
"""
    
    for func, count in int21_counter.most_common(30):
        summary += f"| {func} | {count} |\n"
    
    summary += """
## Per-module breakdown

| Module | INT 21h | INT 2Fh | Other INT | Win API | Internal |
|--------|---------|---------|-----------|---------|----------|
"""
    
    for module in sorted(all_results.keys()):
        mod_results = all_results[module]
        mod_int21 = sum(len(r["int21_calls"]) for r in mod_results)
        mod_int2f = sum(len(r["int2f_calls"]) for r in mod_results)
        mod_other = sum(len(r["int_other"]) for r in mod_results)
        mod_api = sum(len(r["windows_api_calls"]) for r in mod_results)
        mod_int = sum(len(r["internal_calls"]) for r in mod_results)
        summary += f"| {module} | {mod_int21} | {mod_int2f} | {mod_other} | {mod_api} | {mod_int} |\n"
    
    summary_file = OUT_DIR / "summary.md"
    summary_file.write_text(summary, encoding="utf-8")
    
    # Write global JSON
    global_json = {
        "total_calls": total_calls,
        "categories": dict(global_stats),
        "top_apis": dict(api_counter.most_common(100)),
        "top_int21": dict(int21_counter.most_common(50)),
        "modules": list(all_results.keys()),
    }
    (OUT_DIR / "global.json").write_text(json.dumps(global_json, indent=2), encoding="utf-8")
    
    print(f"\nDone! Found {total_calls} calls across {len(all_results)} modules.")
    print(f"  INT 21h: {global_stats['int21']}")
    print(f"  INT 2Fh: {global_stats['int2f']}")
    print(f"  Other INT: {global_stats['int_other']}")
    print(f"  Windows API: {global_stats['windows_api']}")
    print(f"  Internal calls: {global_stats['internal']}")


if __name__ == "__main__":
    main()
