#!/bin/sh
exec avr-gcc -g -Wall -Os -ffunction-sections -fdata-sections -mmcu=atmega328p -Wl,--gc-sections -DF_CPU=16000000L "$@"
