"""Windows 1.x API call signatures (structured parameter information).

Complements `windows_api_kb.py` (which has prose descriptions). This module
provides machine-readable parameter information that downstream passes
(variable renaming, header reconstruction) can use to substitute generic
`[bp+N]` references with semantic aliases like `arg_lpszDest`.

Source: Charles Petzold *Programming Windows* (1988), Microsoft Win 1.0
SDK reference, public NE export tables. No proprietary source is copied;
we describe the published API surface that any Win 1.x developer had.

PASCAL FAR calling convention reminder (Win 1.x):

    +--------+
    | arg N  |  <- first-declared (highest [bp+N])
    +--------+
    | ...    |
    +--------+
    | arg 1  |  <- last-declared (lowest [bp+N], typically [bp+6])
    +--------+
    | ret seg|  <- [bp+4]
    +--------+
    | ret off|  <- [bp+2]
    +--------+
    | save BP|  <- [bp+0]
    +--------+

Callee cleans the stack via `retf <total_arg_size>`.
The total arg size is the sum of all parameter sizes in bytes.

Type sizes (Win 1.x, 16-bit medium model):
    BYTE   = 1     WORD  = 2    DWORD = 4
    BOOL   = 2     HANDLE= 2    HWND  = 2
    HDC    = 2     HMENU = 2    HFONT = 2
    HBRUSH = 2     HPEN  = 2    HBITMAP=2
    HRGN   = 2     HICON = 2    HCURSOR=2
    LPSTR  = 4     LPVOID= 4    FARPROC=4
    LPRECT = 4     LPPOINT=4    LPMSG  = 4
    WPARAM = 2     LPARAM= 4
"""

from __future__ import annotations
from typing import Any

# ----------------------- Type size table -------------------------------------

TYPE_SIZE: dict[str, int] = {
    "BYTE": 1,
    "WORD": 2,
    "DWORD": 4,
    "INT": 2,
    "UINT": 2,
    "BOOL": 2,
    "SHORT": 2,
    "LONG": 4,
    "ULONG": 4,
    "HANDLE": 2,
    "HWND": 2,
    "HDC": 2,
    "HMENU": 2,
    "HFONT": 2,
    "HBRUSH": 2,
    "HPEN": 2,
    "HBITMAP": 2,
    "HRGN": 2,
    "HICON": 2,
    "HCURSOR": 2,
    "HINSTANCE": 2,
    "HMODULE": 2,
    "HGLOBAL": 2,
    "HLOCAL": 2,
    "HACCEL": 2,
    "HFILE": 2,
    "ATOM": 2,
    "WPARAM": 2,
    "LPARAM": 4,
    "LRESULT": 4,
    "LPSTR": 4,
    "LPCSTR": 4,
    "LPVOID": 4,
    "LPCVOID": 4,
    "LPRECT": 4,
    "LPPOINT": 4,
    "LPSIZE": 4,
    "LPMSG": 4,
    "LPWORD": 4,
    "LPDWORD": 4,
    "LPHANDLE": 4,
    "FARPROC": 4,
    "WNDPROC": 4,
    "PSTR": 2,
    "PVOID": 2,
}


def type_size(t: str) -> int:
    """Return size in bytes for a Win 1.x type. Defaults to 2 (WORD) if unknown."""
    return TYPE_SIZE.get(t.upper(), 2)


# ----------------------- API signatures --------------------------------------

# Format: API_NAME -> dict with:
#   "module"    : str       - exporting module (KERNEL, USER, GDI)
#   "ordinal"   : int | None
#   "return"    : str       - return type
#   "convention": str       - "PASCAL_FAR" (default for Win 1.x exports)
#   "params"    : list[dict] with "name" and "type" keys, in *declaration order*
#                 (first-declared at index 0)

# Helper to autocompute total size from params
def _total_size(params: list[dict]) -> int:
    return sum(type_size(p["type"]) for p in params)


SIGNATURES: dict[str, dict[str, Any]] = {

    # ============================================================== KERNEL ===
    # ---- Memory: global heap ----
    "GLOBALALLOC": {
        "module": "KERNEL", "ordinal": 15, "return": "HANDLE",
        "params": [
            {"name": "wFlags",  "type": "WORD"},
            {"name": "dwBytes", "type": "DWORD"},
        ],
    },
    "GLOBALREALLOC": {
        "module": "KERNEL", "ordinal": 16, "return": "HANDLE",
        "params": [
            {"name": "hMem",    "type": "HANDLE"},
            {"name": "dwBytes", "type": "DWORD"},
            {"name": "wFlags",  "type": "WORD"},
        ],
    },
    "GLOBALFREE": {
        "module": "KERNEL", "ordinal": 17, "return": "HANDLE",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "GLOBALLOCK": {
        "module": "KERNEL", "ordinal": 18, "return": "LPVOID",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "GLOBALUNLOCK": {
        "module": "KERNEL", "ordinal": 19, "return": "BOOL",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "GLOBALSIZE": {
        "module": "KERNEL", "ordinal": 20, "return": "DWORD",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "GLOBALHANDLE": {
        "module": "KERNEL", "ordinal": 21, "return": "DWORD",
        "params": [{"name": "wSeg", "type": "WORD"}],
    },
    "GLOBALFLAGS": {
        "module": "KERNEL", "ordinal": 22, "return": "WORD",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "GLOBALCOMPACT": {
        "module": "KERNEL", "ordinal": 25, "return": "DWORD",
        "params": [{"name": "dwMinFree", "type": "DWORD"}],
    },

    # ---- Memory: local heap ----
    "LOCALALLOC": {
        "module": "KERNEL", "ordinal": 5, "return": "HANDLE",
        "params": [
            {"name": "wFlags",  "type": "WORD"},
            {"name": "wBytes",  "type": "WORD"},
        ],
    },
    "LOCALREALLOC": {
        "module": "KERNEL", "ordinal": 6, "return": "HANDLE",
        "params": [
            {"name": "hMem",    "type": "HANDLE"},
            {"name": "wBytes",  "type": "WORD"},
            {"name": "wFlags",  "type": "WORD"},
        ],
    },
    "LOCALFREE": {
        "module": "KERNEL", "ordinal": 7, "return": "HANDLE",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "LOCALLOCK": {
        "module": "KERNEL", "ordinal": 8, "return": "PSTR",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "LOCALUNLOCK": {
        "module": "KERNEL", "ordinal": 9, "return": "BOOL",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "LOCALSIZE": {
        "module": "KERNEL", "ordinal": 10, "return": "WORD",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "LOCALHANDLE": {
        "module": "KERNEL", "ordinal": 11, "return": "HANDLE",
        "params": [{"name": "wAddr", "type": "WORD"}],
    },
    "LOCALFLAGS": {
        "module": "KERNEL", "ordinal": 12, "return": "WORD",
        "params": [{"name": "hMem", "type": "HANDLE"}],
    },
    "LOCALINIT": {
        "module": "KERNEL", "ordinal": 4, "return": "BOOL",
        "params": [
            {"name": "wSegment", "type": "WORD"},
            {"name": "wStart",   "type": "WORD"},
            {"name": "wEnd",     "type": "WORD"},
        ],
    },

    # ---- Strings ----
    "LSTRCPY": {
        "module": "KERNEL", "ordinal": 88, "return": "LPSTR",
        "params": [
            {"name": "lpszDest", "type": "LPSTR"},
            {"name": "lpszSrc",  "type": "LPSTR"},
        ],
    },
    "LSTRCAT": {
        "module": "KERNEL", "ordinal": 89, "return": "LPSTR",
        "params": [
            {"name": "lpszDest", "type": "LPSTR"},
            {"name": "lpszSrc",  "type": "LPSTR"},
        ],
    },
    "LSTRLEN": {
        "module": "KERNEL", "ordinal": 90, "return": "INT",
        "params": [{"name": "lpsz", "type": "LPSTR"}],
    },
    "LSTRCMP": {
        "module": "KERNEL", "ordinal": 91, "return": "INT",
        "params": [
            {"name": "lpsz1", "type": "LPSTR"},
            {"name": "lpsz2", "type": "LPSTR"},
        ],
    },
    "ANSITOOEM": {
        "module": "KERNEL", "ordinal": 5, "return": "INT",
        "params": [
            {"name": "lpszSrc",  "type": "LPSTR"},
            {"name": "lpszDest", "type": "LPSTR"},
        ],
    },
    "OEMTOANSI": {
        "module": "KERNEL", "ordinal": 6, "return": "INT",
        "params": [
            {"name": "lpszSrc",  "type": "LPSTR"},
            {"name": "lpszDest", "type": "LPSTR"},
        ],
    },
    "ANSIUPPER": {
        "module": "KERNEL", "return": "LPSTR",
        "params": [{"name": "lpsz", "type": "LPSTR"}],
    },
    "ANSILOWER": {
        "module": "KERNEL", "return": "LPSTR",
        "params": [{"name": "lpsz", "type": "LPSTR"}],
    },

    # ---- Module / version / task ----
    "GETVERSION": {
        "module": "KERNEL", "ordinal": 3, "return": "DWORD",
        "params": [],
    },
    "GETMODULEHANDLE": {
        "module": "KERNEL", "return": "HANDLE",
        "params": [{"name": "lpszModule", "type": "LPSTR"}],
    },
    "GETMODULEFILENAME": {
        "module": "KERNEL", "return": "INT",
        "params": [
            {"name": "hModule", "type": "HANDLE"},
            {"name": "lpszFile", "type": "LPSTR"},
            {"name": "cbMax",   "type": "INT"},
        ],
    },
    "GETMODULEUSAGE": {
        "module": "KERNEL", "return": "INT",
        "params": [{"name": "hModule", "type": "HANDLE"}],
    },
    "GETPROCADDRESS": {
        "module": "KERNEL", "return": "FARPROC",
        "params": [
            {"name": "hModule",   "type": "HANDLE"},
            {"name": "lpszProc",  "type": "LPSTR"},
        ],
    },
    "MAKEPROCINSTANCE": {
        "module": "KERNEL", "return": "FARPROC",
        "params": [
            {"name": "lpProc",    "type": "FARPROC"},
            {"name": "hInstance", "type": "HANDLE"},
        ],
    },
    "FREEPROCINSTANCE": {
        "module": "KERNEL", "return": "VOID",
        "params": [{"name": "lpProc", "type": "FARPROC"}],
    },
    "LOADMODULE": {
        "module": "KERNEL", "return": "HANDLE",
        "params": [
            {"name": "lpszModule", "type": "LPSTR"},
            {"name": "lpParams",   "type": "LPVOID"},
        ],
    },
    "LOADLIBRARY": {
        "module": "KERNEL", "return": "HANDLE",
        "params": [{"name": "lpszLibFile", "type": "LPSTR"}],
    },
    "FREELIBRARY": {
        "module": "KERNEL", "return": "VOID",
        "params": [{"name": "hLibModule", "type": "HANDLE"}],
    },
    "WINEXEC": {
        "module": "KERNEL", "return": "HANDLE",
        "params": [
            {"name": "lpszCmdLine", "type": "LPSTR"},
            {"name": "wCmdShow",    "type": "WORD"},
        ],
    },
    "YIELD": {
        "module": "KERNEL", "ordinal": 29, "return": "VOID",
        "params": [],
    },
    "EXITWINDOWS": {
        "module": "KERNEL", "return": "BOOL",
        "params": [
            {"name": "dwReserved", "type": "DWORD"},
            {"name": "wReturnCode","type": "WORD"},
        ],
    },

    # ---- File I/O ----
    "_LOPEN": {
        "module": "KERNEL", "return": "HFILE",
        "params": [
            {"name": "lpszPath",  "type": "LPSTR"},
            {"name": "wReadWrite","type": "INT"},
        ],
    },
    "_LCREAT": {
        "module": "KERNEL", "return": "HFILE",
        "params": [
            {"name": "lpszPath", "type": "LPSTR"},
            {"name": "wAttribute","type": "INT"},
        ],
    },
    "_LCLOSE": {
        "module": "KERNEL", "return": "HFILE",
        "params": [{"name": "hFile", "type": "HFILE"}],
    },
    "_LREAD": {
        "module": "KERNEL", "return": "WORD",
        "params": [
            {"name": "hFile",    "type": "HFILE"},
            {"name": "lpBuffer", "type": "LPVOID"},
            {"name": "wBytes",   "type": "WORD"},
        ],
    },
    "_LWRITE": {
        "module": "KERNEL", "return": "WORD",
        "params": [
            {"name": "hFile",    "type": "HFILE"},
            {"name": "lpBuffer", "type": "LPCVOID"},
            {"name": "wBytes",   "type": "WORD"},
        ],
    },
    "_LLSEEK": {
        "module": "KERNEL", "return": "LONG",
        "params": [
            {"name": "hFile",   "type": "HFILE"},
            {"name": "lOffset", "type": "LONG"},
            {"name": "iOrigin", "type": "INT"},
        ],
    },
    "OPENFILE": {
        "module": "KERNEL", "return": "HFILE",
        "params": [
            {"name": "lpszFileName", "type": "LPSTR"},
            {"name": "lpReOpenBuff", "type": "LPVOID"},
            {"name": "wStyle",       "type": "WORD"},
        ],
    },

    # ============================================================== USER =====
    # ---- Window creation / lifecycle ----
    "CREATEWINDOW": {
        "module": "USER", "return": "HWND",
        "params": [
            {"name": "lpszClassName", "type": "LPSTR"},
            {"name": "lpszWindowName","type": "LPSTR"},
            {"name": "dwStyle",       "type": "DWORD"},
            {"name": "x",             "type": "INT"},
            {"name": "y",             "type": "INT"},
            {"name": "nWidth",        "type": "INT"},
            {"name": "nHeight",       "type": "INT"},
            {"name": "hWndParent",    "type": "HWND"},
            {"name": "hMenu",         "type": "HMENU"},
            {"name": "hInstance",     "type": "HANDLE"},
            {"name": "lpParam",       "type": "LPVOID"},
        ],
    },
    "DESTROYWINDOW": {
        "module": "USER", "return": "BOOL",
        "params": [{"name": "hWnd", "type": "HWND"}],
    },
    "SHOWWINDOW": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hWnd",    "type": "HWND"},
            {"name": "nCmdShow","type": "INT"},
        ],
    },
    "UPDATEWINDOW": {
        "module": "USER", "return": "BOOL",
        "params": [{"name": "hWnd", "type": "HWND"}],
    },
    "MOVEWINDOW": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hWnd",    "type": "HWND"},
            {"name": "x",       "type": "INT"},
            {"name": "y",       "type": "INT"},
            {"name": "nWidth",  "type": "INT"},
            {"name": "nHeight", "type": "INT"},
            {"name": "bRepaint","type": "BOOL"},
        ],
    },
    "SETWINDOWTEXT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hWnd",     "type": "HWND"},
            {"name": "lpszText", "type": "LPSTR"},
        ],
    },
    "GETWINDOWTEXT": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hWnd",     "type": "HWND"},
            {"name": "lpszText", "type": "LPSTR"},
            {"name": "cbMax",    "type": "INT"},
        ],
    },
    "GETWINDOWRECT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "lpRect", "type": "LPRECT"},
        ],
    },
    "GETCLIENTRECT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "lpRect", "type": "LPRECT"},
        ],
    },
    "INVALIDATERECT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hWnd",    "type": "HWND"},
            {"name": "lpRect",  "type": "LPRECT"},
            {"name": "bErase",  "type": "BOOL"},
        ],
    },
    "VALIDATERECT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "lpRect", "type": "LPRECT"},
        ],
    },

    # ---- Messages ----
    "SENDMESSAGE": {
        "module": "USER", "return": "LRESULT",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "wMsg",   "type": "WORD"},
            {"name": "wParam", "type": "WPARAM"},
            {"name": "lParam", "type": "LPARAM"},
        ],
    },
    "POSTMESSAGE": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "wMsg",   "type": "WORD"},
            {"name": "wParam", "type": "WPARAM"},
            {"name": "lParam", "type": "LPARAM"},
        ],
    },
    "DEFWINDOWPROC": {
        "module": "USER", "return": "LRESULT",
        "params": [
            {"name": "hWnd",   "type": "HWND"},
            {"name": "wMsg",   "type": "WORD"},
            {"name": "wParam", "type": "WPARAM"},
            {"name": "lParam", "type": "LPARAM"},
        ],
    },
    "GETMESSAGE": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "lpMsg",       "type": "LPMSG"},
            {"name": "hWnd",        "type": "HWND"},
            {"name": "wMsgFilterMin","type": "WORD"},
            {"name": "wMsgFilterMax","type": "WORD"},
        ],
    },
    "TRANSLATEMESSAGE": {
        "module": "USER", "return": "BOOL",
        "params": [{"name": "lpMsg", "type": "LPMSG"}],
    },
    "DISPATCHMESSAGE": {
        "module": "USER", "return": "LRESULT",
        "params": [{"name": "lpMsg", "type": "LPMSG"}],
    },
    "PEEKMESSAGE": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "lpMsg",       "type": "LPMSG"},
            {"name": "hWnd",        "type": "HWND"},
            {"name": "wMsgFilterMin","type": "WORD"},
            {"name": "wMsgFilterMax","type": "WORD"},
            {"name": "wRemoveMsg",  "type": "WORD"},
        ],
    },

    # ---- DC management ----
    "GETDC": {
        "module": "USER", "return": "HDC",
        "params": [{"name": "hWnd", "type": "HWND"}],
    },
    "RELEASEDC": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hWnd", "type": "HWND"},
            {"name": "hDC",  "type": "HDC"},
        ],
    },
    "BEGINPAINT": {
        "module": "USER", "return": "HDC",
        "params": [
            {"name": "hWnd",        "type": "HWND"},
            {"name": "lpPaintStruct","type": "LPVOID"},
        ],
    },
    "ENDPAINT": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hWnd",        "type": "HWND"},
            {"name": "lpPaintStruct","type": "LPVOID"},
        ],
    },

    # ---- Dialogs ----
    "DIALOGBOX": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hInstance",     "type": "HANDLE"},
            {"name": "lpszTemplate",  "type": "LPSTR"},
            {"name": "hWndOwner",     "type": "HWND"},
            {"name": "lpDialogFunc",  "type": "FARPROC"},
        ],
    },
    "ENDDIALOG": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hDlg",   "type": "HWND"},
            {"name": "nResult","type": "INT"},
        ],
    },
    "GETDLGITEM": {
        "module": "USER", "return": "HWND",
        "params": [
            {"name": "hDlg",     "type": "HWND"},
            {"name": "nIDItem",  "type": "INT"},
        ],
    },
    "SETDLGITEMTEXT": {
        "module": "USER", "return": "VOID",
        "params": [
            {"name": "hDlg",    "type": "HWND"},
            {"name": "nIDItem", "type": "INT"},
            {"name": "lpszText","type": "LPSTR"},
        ],
    },
    "GETDLGITEMTEXT": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hDlg",     "type": "HWND"},
            {"name": "nIDItem",  "type": "INT"},
            {"name": "lpszText", "type": "LPSTR"},
            {"name": "cbMax",    "type": "INT"},
        ],
    },
    "SENDDLGITEMMESSAGE": {
        "module": "USER", "return": "LRESULT",
        "params": [
            {"name": "hDlg",     "type": "HWND"},
            {"name": "nIDItem",  "type": "INT"},
            {"name": "wMsg",     "type": "WORD"},
            {"name": "wParam",   "type": "WPARAM"},
            {"name": "lParam",   "type": "LPARAM"},
        ],
    },
    "MESSAGEBOX": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hWndOwner","type": "HWND"},
            {"name": "lpszText", "type": "LPSTR"},
            {"name": "lpszTitle","type": "LPSTR"},
            {"name": "wStyle",   "type": "WORD"},
        ],
    },

    # ---- Menus ----
    "LOADMENU": {
        "module": "USER", "return": "HMENU",
        "params": [
            {"name": "hInstance",   "type": "HANDLE"},
            {"name": "lpszMenuName","type": "LPSTR"},
        ],
    },
    "CREATEMENU": {
        "module": "USER", "return": "HMENU",
        "params": [],
    },
    "APPENDMENU": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hMenu",    "type": "HMENU"},
            {"name": "wFlags",   "type": "WORD"},
            {"name": "wIDNewItem","type": "WORD"},
            {"name": "lpNewItem","type": "LPSTR"},
        ],
    },
    "ENABLEMENUITEM": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hMenu", "type": "HMENU"},
            {"name": "wIDItem","type": "WORD"},
            {"name": "wEnable","type": "WORD"},
        ],
    },
    "CHECKMENUITEM": {
        "module": "USER", "return": "BOOL",
        "params": [
            {"name": "hMenu",  "type": "HMENU"},
            {"name": "wIDItem","type": "WORD"},
            {"name": "wCheck", "type": "WORD"},
        ],
    },

    # ---- Resources ----
    "LOADSTRING": {
        "module": "USER", "return": "INT",
        "params": [
            {"name": "hInstance","type": "HANDLE"},
            {"name": "wID",      "type": "WORD"},
            {"name": "lpBuffer", "type": "LPSTR"},
            {"name": "cbBuffer", "type": "INT"},
        ],
    },
    "LOADICON": {
        "module": "USER", "return": "HICON",
        "params": [
            {"name": "hInstance", "type": "HANDLE"},
            {"name": "lpszIcon",  "type": "LPSTR"},
        ],
    },
    "LOADCURSOR": {
        "module": "USER", "return": "HCURSOR",
        "params": [
            {"name": "hInstance",  "type": "HANDLE"},
            {"name": "lpszCursor", "type": "LPSTR"},
        ],
    },

    # ============================================================== GDI ======
    # ---- DC / device ----
    "CREATEDC": {
        "module": "GDI", "return": "HDC",
        "params": [
            {"name": "lpszDriver",   "type": "LPSTR"},
            {"name": "lpszDevice",   "type": "LPSTR"},
            {"name": "lpszOutput",   "type": "LPSTR"},
            {"name": "lpInitData",   "type": "LPVOID"},
        ],
    },
    "DELETEDC": {
        "module": "GDI", "return": "BOOL",
        "params": [{"name": "hDC", "type": "HDC"}],
    },
    "CREATECOMPATIBLEDC": {
        "module": "GDI", "return": "HDC",
        "params": [{"name": "hDC", "type": "HDC"}],
    },
    "GETDEVICECAPS": {
        "module": "GDI", "return": "INT",
        "params": [
            {"name": "hDC",  "type": "HDC"},
            {"name": "iCap", "type": "INT"},
        ],
    },

    # ---- Drawing primitives ----
    "MOVETO": {
        "module": "GDI", "return": "DWORD",
        "params": [
            {"name": "hDC", "type": "HDC"},
            {"name": "x",   "type": "INT"},
            {"name": "y",   "type": "INT"},
        ],
    },
    "LINETO": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC", "type": "HDC"},
            {"name": "x",   "type": "INT"},
            {"name": "y",   "type": "INT"},
        ],
    },
    "RECTANGLE": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",  "type": "HDC"},
            {"name": "left", "type": "INT"},
            {"name": "top",  "type": "INT"},
            {"name": "right","type": "INT"},
            {"name": "bottom","type":"INT"},
        ],
    },
    "ELLIPSE": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",   "type": "HDC"},
            {"name": "left",  "type": "INT"},
            {"name": "top",   "type": "INT"},
            {"name": "right", "type": "INT"},
            {"name": "bottom","type": "INT"},
        ],
    },
    "PATBLT": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",      "type": "HDC"},
            {"name": "x",        "type": "INT"},
            {"name": "y",        "type": "INT"},
            {"name": "nWidth",   "type": "INT"},
            {"name": "nHeight",  "type": "INT"},
            {"name": "dwRop",    "type": "DWORD"},
        ],
    },
    "BITBLT": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDCDest","type": "HDC"},
            {"name": "x",      "type": "INT"},
            {"name": "y",      "type": "INT"},
            {"name": "nWidth", "type": "INT"},
            {"name": "nHeight","type": "INT"},
            {"name": "hDCSrc", "type": "HDC"},
            {"name": "xSrc",   "type": "INT"},
            {"name": "ySrc",   "type": "INT"},
            {"name": "dwRop",  "type": "DWORD"},
        ],
    },
    "STRETCHBLT": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDCDest",  "type": "HDC"},
            {"name": "xDest",    "type": "INT"},
            {"name": "yDest",    "type": "INT"},
            {"name": "wDest",    "type": "INT"},
            {"name": "hDest",    "type": "INT"},
            {"name": "hDCSrc",   "type": "HDC"},
            {"name": "xSrc",     "type": "INT"},
            {"name": "ySrc",     "type": "INT"},
            {"name": "wSrc",     "type": "INT"},
            {"name": "hSrc",     "type": "INT"},
            {"name": "dwRop",    "type": "DWORD"},
        ],
    },

    # ---- Text ----
    "TEXTOUT": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",      "type": "HDC"},
            {"name": "x",        "type": "INT"},
            {"name": "y",        "type": "INT"},
            {"name": "lpszStr",  "type": "LPSTR"},
            {"name": "cbStr",    "type": "INT"},
        ],
    },
    "SETTEXTCOLOR": {
        "module": "GDI", "return": "DWORD",
        "params": [
            {"name": "hDC",     "type": "HDC"},
            {"name": "clrText", "type": "DWORD"},
        ],
    },
    "SETBKCOLOR": {
        "module": "GDI", "return": "DWORD",
        "params": [
            {"name": "hDC",   "type": "HDC"},
            {"name": "clrBk", "type": "DWORD"},
        ],
    },
    "SETBKMODE": {
        "module": "GDI", "return": "INT",
        "params": [
            {"name": "hDC",   "type": "HDC"},
            {"name": "iMode", "type": "INT"},
        ],
    },

    # ---- Objects ----
    "CREATEPEN": {
        "module": "GDI", "return": "HPEN",
        "params": [
            {"name": "iStyle", "type": "INT"},
            {"name": "iWidth", "type": "INT"},
            {"name": "clrPen", "type": "DWORD"},
        ],
    },
    "CREATESOLIDBRUSH": {
        "module": "GDI", "return": "HBRUSH",
        "params": [{"name": "clr", "type": "DWORD"}],
    },
    "CREATEFONT": {
        "module": "GDI", "return": "HFONT",
        "params": [
            {"name": "nHeight",      "type": "INT"},
            {"name": "nWidth",       "type": "INT"},
            {"name": "nEscapement",  "type": "INT"},
            {"name": "nOrientation", "type": "INT"},
            {"name": "nWeight",      "type": "INT"},
            {"name": "bItalic",      "type": "BOOL"},
            {"name": "bUnderline",   "type": "BOOL"},
            {"name": "bStrikeOut",   "type": "BOOL"},
            {"name": "iCharSet",     "type": "INT"},
            {"name": "iOutPrecis",   "type": "INT"},
            {"name": "iClipPrecis",  "type": "INT"},
            {"name": "iQuality",     "type": "INT"},
            {"name": "iPitchAndFamily","type": "INT"},
            {"name": "lpszFace",     "type": "LPSTR"},
        ],
    },
    "SELECTOBJECT": {
        "module": "GDI", "return": "HANDLE",
        "params": [
            {"name": "hDC",   "type": "HDC"},
            {"name": "hObj",  "type": "HANDLE"},
        ],
    },
    "DELETEOBJECT": {
        "module": "GDI", "return": "BOOL",
        "params": [{"name": "hObj", "type": "HANDLE"}],
    },
    "GETSTOCKOBJECT": {
        "module": "GDI", "return": "HANDLE",
        "params": [{"name": "iObject", "type": "INT"}],
    },

    # ---- Bitmaps ----
    "CREATEBITMAP": {
        "module": "GDI", "return": "HBITMAP",
        "params": [
            {"name": "nWidth",   "type": "INT"},
            {"name": "nHeight",  "type": "INT"},
            {"name": "nPlanes",  "type": "WORD"},
            {"name": "nBitCount","type": "WORD"},
            {"name": "lpBits",   "type": "LPVOID"},
        ],
    },
    "LOADBITMAP": {
        "module": "GDI", "return": "HBITMAP",
        "params": [
            {"name": "hInstance",  "type": "HANDLE"},
            {"name": "lpszBitmap", "type": "LPSTR"},
        ],
    },

    # ---- Coords / regions ----
    "DPTOLP": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",      "type": "HDC"},
            {"name": "lpPoints", "type": "LPPOINT"},
            {"name": "nCount",   "type": "INT"},
        ],
    },
    "LPTODP": {
        "module": "GDI", "return": "BOOL",
        "params": [
            {"name": "hDC",      "type": "HDC"},
            {"name": "lpPoints", "type": "LPPOINT"},
            {"name": "nCount",   "type": "INT"},
        ],
    },
    "SETMAPMODE": {
        "module": "GDI", "return": "INT",
        "params": [
            {"name": "hDC",   "type": "HDC"},
            {"name": "iMode", "type": "INT"},
        ],
    },
}


# ----------------------- Auto-compute totals --------------------------------

def populate_totals() -> None:
    """Fill in params_total_size and params_with_offsets for each signature."""
    for name, sig in SIGNATURES.items():
        params = sig.get("params", [])
        total = _total_size(params)
        sig["params_total_size"] = total

        # Compute BP offsets for FAR PASCAL: first-declared at highest offset
        # Frame layout: [bp+0]=saved BP, [bp+2]=ret off, [bp+4]=ret seg,
        # then args, with LAST-declared at [bp+6], FIRST-declared at top.
        offsets: list[dict[str, Any]] = []
        cur_offset = 6 + total  # initial offset for first param's HIGHEST byte
        for p in params:
            sz = type_size(p["type"])
            cur_offset -= sz
            offsets.append({
                "name": p["name"],
                "type": p["type"],
                "size": sz,
                "bp_offset": cur_offset,
            })
        sig["params_with_offsets"] = offsets


populate_totals()


# ----------------------- Helpers --------------------------------------------

def get_signature(api_name: str) -> dict[str, Any] | None:
    """Return signature dict for an API, normalized to upper case. Returns None
    if not in the KB."""
    return SIGNATURES.get(api_name.upper())


def get_param_at_offset(api_name: str, bp_offset: int) -> dict[str, Any] | None:
    """Given an API name and a [bp+N] offset, return the matching param info."""
    sig = get_signature(api_name)
    if not sig:
        return None
    for p in sig.get("params_with_offsets", []):
        if p["bp_offset"] == bp_offset:
            return p
        # arg spans multiple words (DWORD/LPSTR = 4 bytes)
        if p["bp_offset"] <= bp_offset < p["bp_offset"] + p["size"]:
            return p
    return None


def stats() -> dict[str, Any]:
    """Quick stats about the KB."""
    by_module: dict[str, int] = {}
    total_params = 0
    for name, sig in SIGNATURES.items():
        m = sig.get("module", "?")
        by_module[m] = by_module.get(m, 0) + 1
        total_params += len(sig.get("params", []))
    return {
        "total_apis": len(SIGNATURES),
        "by_module": by_module,
        "total_params_described": total_params,
    }


if __name__ == "__main__":
    import json
    print(json.dumps(stats(), indent=2))
    # Spot-check a few well-known signatures
    for name in ["LSTRCPY", "GLOBALALLOC", "CREATEWINDOW", "SENDMESSAGE", "BITBLT"]:
        sig = get_signature(name)
        if sig:
            print(f"\n{name}:")
            print(f"  module={sig['module']} return={sig['return']} total_arg_size={sig['params_total_size']}")
            for p in sig.get("params_with_offsets", []):
                print(f"    [bp+{p['bp_offset']:3d}] {p['name']:20s} {p['type']:10s} ({p['size']}B)")
