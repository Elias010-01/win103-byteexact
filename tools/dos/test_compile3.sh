#!/bin/bash
set -e
cd "$(dirname "$0")"

WORK=work
mkdir -p "$WORK"

# Minimal: write a tiny.c, write a build.bat without 2>&1, and run.
cat > "$WORK/tiny.c" <<'EOF'
int answer() { return 42; }
int sum(a, b) int a; int b; { return a + b; }
EOF

# Old DOS COMMAND.COM does NOT support 2>&1. Use only > redirect.
cat > "$WORK/build.bat" <<'EOF'
echo === BAT START === > out.txt
dir cl.exe >> out.txt
echo --- env ---  >> out.txt
set >> out.txt
echo --- compile ---  >> out.txt
cl /c /AS tiny.c > cl.txt
echo CL exited with %ERRORLEVEL%  >> out.txt
echo --- cl.txt --- >> out.txt
type cl.txt >> out.txt
echo --- dir after ---  >> out.txt
dir tiny.* >> out.txt
echo === BAT END === >> out.txt
EOF

# Clean previous outputs
rm -f "$WORK/out.txt" "$WORK/OUT.TXT" "$WORK/cl.txt" "$WORK/CL.TXT" "$WORK/&1" \
      "$WORK"/tiny.obj "$WORK"/TINY.OBJ 2>/dev/null

cat > "$WORK/dosbox.conf" <<EOF
[sdl]
output=surface
autolock=false
[cpu]
core=auto
cycles=max
[dos]
ver=3.30
[autoexec]
mount c $(pwd)/$WORK
c:
call build.bat
exit
EOF

echo "=== Running DOSBox-X ==="
SDL_VIDEODRIVER=dummy timeout 60 dosbox-x \
    -conf "$WORK/dosbox.conf" \
    -silent -nopromptfolder -fastlaunch \
    >/dev/null 2>&1 || true

echo "=== Result files ==="
ls -la "$WORK"/out.txt "$WORK"/OUT.TXT "$WORK"/cl.txt "$WORK"/CL.TXT \
       "$WORK"/tiny.obj "$WORK"/TINY.OBJ 2>/dev/null
echo ""

if [ -f "$WORK/OUT.TXT" ]; then
    echo "=== OUT.TXT content ==="
    cat "$WORK/OUT.TXT"
elif [ -f "$WORK/out.txt" ]; then
    echo "=== out.txt content ==="
    cat "$WORK/out.txt"
else
    echo "No OUT.TXT - build.bat did not run."
fi
