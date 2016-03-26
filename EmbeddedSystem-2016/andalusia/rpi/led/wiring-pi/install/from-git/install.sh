#!/bin/bash

sudo apt-get install git-core
sudo apt-get update && sudo apt-get ugrade
git clone git://git.drogon.net/wiringPi
cd wiringPI
git pull origin
./build
