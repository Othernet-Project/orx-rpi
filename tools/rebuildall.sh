#!/bin/bash

for p in rpi rpi2; do 
    make B=$p clean-build
    make B=$p
    sudo make B=$p image
    make B=$p zipimage
    make B=$p update
done
