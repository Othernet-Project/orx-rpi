#!/bin/sh

# Copy the config.txt file
cp $BR2_EXTERNAL/configs/config.txt $BINARIES_DIR/rpi-firmware/

# Blank out the kernel command line
echo '' > $BINARIES_DIR/rpi-firmware/cmdline.txt
