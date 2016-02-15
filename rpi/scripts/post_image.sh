#!/bin/sh

SOURCE_CFGFILE=$BR2_EXTERNAL/configs/config.txt
CFGFILE=$BINARIES_DIR/rpi-firmware/config.txt

cp $SOURCE_CFGFILE $CFGFILE
