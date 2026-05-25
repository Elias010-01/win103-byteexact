#!/bin/bash
cd "$(dirname "$0")"
for i in 1 2 3 4 5 6 7 8; do
    echo "=== MSC disk0$i ==="
    mdir -i disk0$i.img -b :: 2>/dev/null | head -25
    echo ""
done
