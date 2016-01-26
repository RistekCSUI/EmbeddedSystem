#!/bin/sh
if [ $# -ne 2 ]; then
    echo "usage: $0 <tty dev> <file>"
    exit 1
else
    exec avrdude -v -patmega328p -carduino -b115200 -D -P"$1" -Uflash:w:"$2":i
fi
