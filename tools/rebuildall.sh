#!/bin/bash

for p in rpi rpi2; do 
    make B=$p rebuild
done
