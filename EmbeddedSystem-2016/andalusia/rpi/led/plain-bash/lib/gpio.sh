#!/bin/bash

# directives
OUT="out"
IN="in"

# Currently developing the tools using rpi 1 mode B+
# run as root
pin=(5 6 13 19 26)
export() {
	for i in "${pin[@]}"; do
		echo $i > /sys/class/gpio/export
	done
}

setDirOut() {
	for i in "${pin[@]}"; do
		echo $OUT > /sys/class/gpio/gpio$i/direction
	done
}

setDirIn() {
	for i in "${pin[@]}"; do
		echo $IN > /sys/class/gpio/gpio$i/direction
	done
}

blinkLed() {
	i=0
	final=201
	firstLed=40
	secondLed=80
	thirdLed=120
	fouthLed=160
	fifthLed=200
	while [ $i -lt $final ]; do
		if [ $i -eq $firstLed ]; then
			echo 1 > /sys/class/gpio/gpio5/value
		elif [ $i -eq $secondLed ]; then
			echo 1 > /sys/class/gpio/gpio6/value
		elif [ $i -eq $thirdLed ]; then
			 echo 1 > /sys/class/gpio/gpio13/value
		elif [ $i -eq $fouthLed ]; then
			 echo 1 > /sys/class/gpio/gpio19/value
		elif [ $i -eq $fifthLed ]; then
			 echo 1 > /sys/class/gpio/gpio26/value
		fi
		i=$[$i+1]
		sleep 0.25
	done
}

reset() {
	for i in "${pin[@]}"; do
		echo out > /sys/class/gpio/gpio$i/direction
	done
}

unexport() {
	for i in "${pin[@]}"; do
		echo $i > /sys/class/gpio/unexport
	done
}