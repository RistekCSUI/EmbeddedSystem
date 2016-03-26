#!/bin/bash

url="http://mahasiswa.cs.ui.ac.id/~irvi.firqotul31/wiringPi-78b5c32.tar.gz"

wget $url

tar xfz wiringPi-78b5c32.tar.gz
cd wiringPi-78b5c32
./build
