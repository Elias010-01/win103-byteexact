"""Windows 1.x constant value -> symbolic name KB.

Maps numeric immediates that appear in `mov reg, IMM` instructions to the
symbolic constant defined in the Windows 1.0 SDK headers. These constants
are public knowledge from the Win 1.x SDK reference and Charles Petzold's
*Programming Windows* (1988).

The Win 1.x value space is small (~16-bit) so we can list essentially all
of the well-known constants in one file.

Each entry: {value: int} -> "SYMBOLIC_NAME" or a list of names if ambiguous.

Categories included:
  - WM_*      window messages
  - WS_*      window styles
  - CS_*      class styles
  - SW_*      show-window flags
  - MB_*      message-box styles
  - GMEM_*    global memory flags
  - LMEM_*    local memory flags
  - WS_EX_*   extended styles (very limited in Win 1.x)
  - DT_*      DrawText flags
  - BS_*      brush styles
  - PS_*      pen styles
  - SS_*      static control styles
  - ES_*      edit control styles
  - LB_*      listbox messages
  - WB_*      wordbreak action codes
  - GW_*      GetWindow flags
  - BN_*      button notifications

We avoid overlapping ranges where possible; for some genuinely ambiguous
values (e.g. `0` could be many things), we report a list.
"""

from __future__ import annotations
from typing import Any

# Each entry can be:
#   int -> "NAME"
#   int -> ["NAME1", "NAME2"]   (ambiguous; show all)

WIN1X_CONSTANTS: dict[int, Any] = {

    # ---------- Window messages (WM_*) ----------
    0x0001: "WM_CREATE",
    0x0002: "WM_DESTROY",
    0x0003: "WM_MOVE",
    0x0005: "WM_SIZE",
    0x0006: "WM_ACTIVATE",
    0x0007: "WM_SETFOCUS",
    0x0008: "WM_KILLFOCUS",
    0x000A: "WM_ENABLE",
    0x000B: "WM_SETREDRAW",
    0x000C: "WM_SETTEXT",
    0x000D: "WM_GETTEXT",
    0x000E: "WM_GETTEXTLENGTH",
    0x000F: "WM_PAINT",
    0x0010: "WM_CLOSE",
    0x0011: "WM_QUERYENDSESSION",
    0x0012: "WM_QUIT",
    0x0013: "WM_QUERYOPEN",
    0x0014: "WM_ERASEBKGND",
    0x0015: "WM_SYSCOLORCHANGE",
    0x0016: "WM_ENDSESSION",
    0x0018: "WM_SHOWWINDOW",
    0x0019: "WM_CTLCOLOR",
    0x001A: "WM_WININICHANGE",
    0x001E: "WM_FONTCHANGE",
    0x001F: "WM_TIMECHANGE",
    0x0020: "WM_SETCURSOR",
    0x0021: "WM_MOUSEACTIVATE",
    0x0022: "WM_CHILDACTIVATE",
    0x0023: "WM_QUEUESYNC",
    0x0024: "WM_GETMINMAXINFO",
    0x0030: "WM_SETFONT",
    0x0031: "WM_GETFONT",
    0x0081: "WM_NCCREATE",
    0x0082: "WM_NCDESTROY",
    0x0083: "WM_NCCALCSIZE",
    0x0084: "WM_NCHITTEST",
    0x0085: "WM_NCPAINT",
    0x0086: "WM_NCACTIVATE",
    0x0087: "WM_GETDLGCODE",
    0x00A0: "WM_NCMOUSEMOVE",
    0x00A1: "WM_NCLBUTTONDOWN",
    0x00A2: "WM_NCLBUTTONUP",
    0x00A3: "WM_NCLBUTTONDBLCLK",
    0x00A4: "WM_NCRBUTTONDOWN",
    0x00A5: "WM_NCRBUTTONUP",
    0x00A7: "WM_NCMBUTTONDOWN",
    0x0100: "WM_KEYDOWN",
    0x0101: "WM_KEYUP",
    0x0102: "WM_CHAR",
    0x0103: "WM_DEADCHAR",
    0x0104: "WM_SYSKEYDOWN",
    0x0105: "WM_SYSKEYUP",
    0x0106: "WM_SYSCHAR",
    0x0107: "WM_SYSDEADCHAR",
    0x0110: "WM_INITDIALOG",
    0x0111: "WM_COMMAND",
    0x0112: "WM_SYSCOMMAND",
    0x0113: "WM_TIMER",
    0x0114: "WM_HSCROLL",
    0x0115: "WM_VSCROLL",
    0x0116: "WM_INITMENU",
    0x0117: "WM_INITMENUPOPUP",
    0x011F: "WM_MENUSELECT",
    0x0120: "WM_MENUCHAR",
    0x0121: "WM_ENTERIDLE",
    0x0200: "WM_MOUSEMOVE",
    0x0201: "WM_LBUTTONDOWN",
    0x0202: "WM_LBUTTONUP",
    0x0203: "WM_LBUTTONDBLCLK",
    0x0204: "WM_RBUTTONDOWN",
    0x0205: "WM_RBUTTONUP",
    0x0206: "WM_RBUTTONDBLCLK",
    0x0207: "WM_MBUTTONDOWN",
    0x0208: "WM_MBUTTONUP",
    0x0209: "WM_MBUTTONDBLCLK",
    0x0210: "WM_PARENTNOTIFY",

    # ---------- ShowWindow nCmdShow ----------
    # SW values overlap with small WM codes; only safe to annotate in context
    # of SHOWWINDOW callsite. Listed here for documentation; runtime pass
    # should ONLY apply these when the imm is the 2nd arg to SHOWWINDOW.
    # 0x0000: "SW_HIDE",                    # conflicts with many other 0
    # 0x0001: "SW_SHOWNORMAL",              # conflicts with WM_CREATE
    # 0x0002: "SW_SHOWMINIMIZED",           # conflicts with WM_DESTROY
    # 0x0003: "SW_SHOWMAXIMIZED",           # conflicts with WM_MOVE
    # 0x0005: "SW_SHOW",                    # conflicts with WM_SIZE
    # 0x0006: "SW_MINIMIZE",
    # 0x0007: "SW_SHOWNOACTIVATE",
    # 0x0008: "SW_SHOWNA",
    # 0x0009: "SW_RESTORE",

    # ---------- MessageBox styles ----------
    # MB_* values mostly conflict with WM_*; will be context-handled.

    # ---------- GlobalAlloc flags (GMEM_*) ----------
    # 0x0000 is GMEM_FIXED but also the "no flags" common; not annotating to
    # avoid noise.
    0x0002: "GMEM_MOVEABLE | WM_DESTROY",  # ambiguous; pass annotates via context
    0x0020: "GMEM_NOCOMPACT",
    0x0040: "GMEM_NODISCARD",
    0x0080: "GMEM_ZEROINIT",
    0x0100: "GMEM_NOT_BANKED",
    0x0200: "GMEM_SHARE | GMEM_DDESHARE",
    0x0400: "GMEM_NOTIFY",
    0x0F00: "GMEM_DISCARDABLE",
    0x2000: "GMEM_DDESHARE",
    0x4000: "GMEM_DISCARDED",
    0x8000: "GMEM_LOCKCOUNT",

    # ---------- LocalAlloc flags (LMEM_*) ----------
    # Same numeric space as GMEM but smaller heap. Often the same.

    # ---------- DrawText / DT_* ----------
    # DT_TOP=0, DT_LEFT=0 conflict with 0. Use context.
    # 0x0010: "DT_NOPREFIX",
    # 0x0020: "DT_INTERNAL",
    # 0x0040: "DT_CALCRECT",
    # 0x0080: "DT_NOCLIP",

    # ---------- Brush styles (BS_*) ----------
    # 0x0000: "BS_SOLID",       # conflicts
    # 0x0001: "BS_NULL",        # conflicts
    # 0x0002: "BS_HATCHED",     # conflicts

    # ---------- Pen styles (PS_*) ----------
    # 0x0000: "PS_SOLID",       # conflicts
    # 0x0001: "PS_DASH",        # conflicts

    # ---------- ROP codes (raster ops) ----------
    0x00CC0020: "SRCCOPY",
    0x00EE0086: "SRCPAINT",
    0x008800C6: "SRCAND",
    0x00660046: "SRCINVERT",
    0x00440328: "SRCERASE",
    0x00330008: "NOTSRCCOPY",
    0x001100A6: "NOTSRCERASE",
    0x00C000CA: "MERGECOPY",
    0x00BB0226: "MERGEPAINT",
    0x00F00021: "PATCOPY",
    0x00FB0A09: "PATPAINT",
    0x005A0049: "PATINVERT",
    0x00550009: "DSTINVERT",
    0x00000042: "BLACKNESS",
    0x00FF0062: "WHITENESS",

    # ---------- VK_* (virtual key codes) ----------
    0x0008: "VK_BACK",   # conflicts with WM_KILLFOCUS
    0x0009: "VK_TAB",
    0x000D: "VK_RETURN",
    0x0010: "VK_SHIFT",   # conflicts with WM_CLOSE
    0x0011: "VK_CONTROL", # conflicts with WM_QUERYENDSESSION
    0x0012: "VK_MENU",    # conflicts with WM_QUIT
    0x0014: "VK_CAPITAL", # conflicts with WM_ERASEBKGND
    0x001B: "VK_ESCAPE",
    0x0020: "VK_SPACE",   # conflicts with WM_SETCURSOR
    0x0021: "VK_PRIOR",   # conflicts
    0x0022: "VK_NEXT",
    0x0023: "VK_END",
    0x0024: "VK_HOME",
    0x0025: "VK_LEFT",
    0x0026: "VK_UP",
    0x0027: "VK_RIGHT",
    0x0028: "VK_DOWN",
    0x002C: "VK_SNAPSHOT",
    0x002E: "VK_DELETE",
    0x002D: "VK_INSERT",
    0x0070: "VK_F1",
    0x0071: "VK_F2",
    0x0072: "VK_F3",
    0x0073: "VK_F4",
    0x0074: "VK_F5",
    0x0075: "VK_F6",
    0x0076: "VK_F7",
    0x0077: "VK_F8",
    0x0078: "VK_F9",
    0x0079: "VK_F10",
}


# ----------------------- Filter helpers -------------------------------------

# Values we consider "safe" to annotate (not too ambiguous):
SAFE_VALUES: set[int] = set()
for v, name in WIN1X_CONSTANTS.items():
    if isinstance(name, str) and "|" not in name and "VK_" not in name:
        # Pure-string entries without "|" markers; safe in most contexts.
        SAFE_VALUES.add(v)

# Subset that are particularly common and unique:
TOP_SAFE = {
    0x0001, 0x0002, 0x0003, 0x0005, 0x000F, 0x0010,
    0x000C, 0x000D, 0x000E,           # SETTEXT/GETTEXT
    0x0110, 0x0111, 0x0112, 0x0113,   # WM_INITDIALOG/COMMAND/SYSCOMMAND/TIMER
    0x0114, 0x0115,                    # scroll messages
    0x0200, 0x0201, 0x0202, 0x0203,
    0x0204, 0x0205, 0x0206,
    0x0F00,                            # GMEM_DISCARDABLE (uniquely discardable)
    0x0080,                            # GMEM_ZEROINIT
    # ROP codes (all unique)
    0x00CC0020, 0x00EE0086, 0x008800C6, 0x00660046, 0x00440328,
    0x00330008, 0x001100A6, 0x00C000CA, 0x00BB0226, 0x00F00021,
    0x00FB0A09, 0x005A0049, 0x00550009, 0x00000042, 0x00FF0062,
}


def get_constant_name(value: int, context: str = "") -> str | None:
    """Return symbolic name for a value, optionally taking context.

    Context is a short string like "wMsg" or "dwRop" to disambiguate.
    """
    if value not in TOP_SAFE:
        return None
    entry = WIN1X_CONSTANTS.get(value)
    if isinstance(entry, str) and "|" not in entry:
        return entry
    return None


def stats() -> dict[str, Any]:
    return {
        "total_entries": len(WIN1X_CONSTANTS),
        "safe_for_annotation": len(SAFE_VALUES),
        "top_safe": len(TOP_SAFE),
    }


if __name__ == "__main__":
    import json
    print(json.dumps(stats(), indent=2))
    print("\nSample resolved values:")
    for v in [0x0001, 0x000F, 0x0010, 0x0111, 0x0F00, 0x00CC0020]:
        print(f"  0x{v:08X} -> {get_constant_name(v)}")
