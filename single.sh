#!/usr/bin/env bash

cd "$(dirname "$0")"
rm -rf build && mkdir build && cd build

spin -a ../src/main.pml
gcc -o pan pan.c -DMEMLIM=1000 
cd ..

build/pan

