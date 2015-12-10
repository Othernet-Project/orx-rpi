#!/bin/sh

SOURCE_CFGFILE=$BR2_EXTERNAL/configs/config.txt
CFGFILE=$BINARIES_DIR/rpi-firmware/config.txt

cp $SOURCE_CFGFILE $CFGFILE

cat <<EOF
**********************************
*                                *
*   KERNEL IMAGE CREATED, RUN:   *
*                                *
*        sudo make image         *
*        sudo make sdcard        *
*                                *
*              or                *
*                                *
*       sudo make gzimage        *
*                                *
**********************************
EOF
