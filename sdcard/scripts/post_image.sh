#!/bin/sh

# Copy the config.txt file
cp $BR2_EXTERNAL/configs/config.txt $BINARIES_DIR/rpi-firmware/

# Copy the post-install script
cp $BR2_EXTERNAL/pkg/post_install $BINARIES_DIR || true
