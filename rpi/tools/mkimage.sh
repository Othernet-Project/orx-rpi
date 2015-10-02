#!/bin/bash

set -e


SCRIPTDIR=$(dirname "$0")
LOG=.buildlog
VERSION=$(cat "$SCRIPTDIR/../version")
PLATFORM=$(cat "$SCRIPTDIR/../platform")

# Image file
IMAGE_SIZE=42M
IMAGE_FILE="${PLATFORM}-${VERSION}.img"
IMAGE_UID=1000
IMAGE_GID=1000

# Partitioning
LOOP=/dev/loop0
BOOT_FS=${LOOP}p1

# Misc
OUTPUT=${SCRIPTDIR}/../../buildroot/output/images
CONFS=${SCRIPTDIR}/../rootfs_overlay/opt/orx
TMPDIR=tmp

abort() {
    echo FAILED
    echo $1
    umount $TMPDIR >> $LOG 2>&1 || true
    rm -rf $TMPDIR >> $LOG 2>&1 || true
    losetup -d $LOOP >> $LOG 2>&1 || true    
    rm "$IMAGE_FILE" >> $LOG 2>&1 || true
    exit 1
}

quit() {
    echo ABORT
    echo Clean-up did not finish
    echo Image file written to $IMAGE_FILE
    exit 1
}

if [ $(id -u) -ne 0 ]
then
    echo "This script must be run as root."
    exit 1
fi

echo -n "Creating empty image file..."
qemu-img create $IMAGE_FILE $IMAGE_SIZE > /dev/null \
    || abort "Could not allocate image file"
losetup $LOOP $IMAGE_FILE || abort "Could not set up loop device $LOOP"
parted $LOOP mklabel msdos > /dev/null 2>&1 \
    || abort "Could not create disk label"
parted $LOOP -a cyl mkpart primary fat32 0 $IMAGE_SIZE > /dev/null 2>&1 \
    || abort "Could not crate boot partition"
partprobe $LOOP >> $LOG 2>&1 || abort "Could not read the parititon talbe"
echo DONE

echo -n "Formatting partitions..."
mkfs.vfat -F32 -n OUTERNET $BOOT_FS >> $LOG 2>&1 \
    || abort "Could not format boot partition"
echo DONE

echo -n "Copying rootfs image..."
mkdir $TMPDIR
mount $BOOT_FS $TMPDIR || abort "Could not mount image file"
cp -r $OUTPUT/rpi-firmware/* $TMPDIR || abort "Could not copy firmware files"
rm -rf $TMPDIR/overlays || abort "Could not remove overlays"
cp $OUTPUT/zImage $TMPDIR || abort "Could not copy kernel image"
umount $BOOT_FS || quit
echo DONE

echo -n "Cleaning up..."
rm -rf tmp || quit
losetup -d $LOOP || quit
echo DONE

chown $IMAGE_UID:$IMAGE_GID $IMAGE_FILE >> $LOG 2>&1 || true

echo "Written image file $IMAGE_FILE"
