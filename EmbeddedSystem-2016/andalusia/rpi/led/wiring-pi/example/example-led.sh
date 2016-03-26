#!/bin/bash

PIN=18

#Set mode as output
gpio -g mode $PIN output

#ON
gpio -g write 18 1

#OFF
gpio -g write 18 0

