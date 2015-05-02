#!/bin/sh
if [ $# -ne 2 ]; then
    echo "usage: $0 <object file> <output>"
    exit 1
else
    exec objcopy -O ihex -R .eeprom "$1" "$2"
fi
