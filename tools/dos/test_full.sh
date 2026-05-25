#!/bin/bash
# Use CL without /c so it auto-runs LINK with proper CRT startup objects
set -e
cd "$(dirname "$0")"
WORK=work

cat > "$WORK/tiny.c" <<'EOF'
int main()
{
    return 42;
}
EOF

# CL without /c: compile AND link in one step. CL handles all the
# startup-object plumbing for us.
cat > "$WORK/build.bat" <<'EOF'
echo === CL full build === > out.txt
set INCLUDE=C:\
set LIB=C:\
set TMP=C:\
echo Env set. INCLUDE=%INCLUDE% LIB=%LIB% >> out.txt
echo. >> out.txt
echo Step1: invoking CL with stdin from NUL >> out.txt
cl /AS tiny.c < nul > cl.txt
echo Step2: CL returned >> out.txt
type cl.txt >> out.txt
echo. >> out.txt
echo --- Files --- >> out.txt
dir tiny.* >> out.txt
echo === DONE === >> out.txt
EOF

rm -f "$WORK"/tiny.exe "$WORK"/TINY.EXE "$WORK"/TINY.MAP "$WORK"/TINY.OBJ \
      "$WORK"/out.txt "$WORK"/OUT.TXT "$WORK"/cl.txt "$WORK"/CL.TXT 2>/dev/null

bash "./dosbuild.sh" "$WORK" "build.bat"

echo "=== OUT.TXT ==="
cat "$WORK/OUT.TXT" 2>/dev/null
echo ""
echo "=== Files ==="
ls -la "$WORK"/TINY.EXE "$WORK"/TINY.OBJ "$WORK"/TINY.MAP 2>/dev/null
if [ -f "$WORK/TINY.EXE" ]; then
    sz=$(stat -c%s "$WORK/TINY.EXE")
    echo ""
    echo "===> SUCCESS: TINY.EXE = $sz bytes <==="
    xxd "$WORK/TINY.EXE" | head -3
fi
