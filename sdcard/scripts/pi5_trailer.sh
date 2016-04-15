# According to the Pi kernel documentation, for Pi2 and Pi3 kernels, a script 
# called mkknlimg, which is found in the kernel's scripts directory, must be 
# run to convert the kernel into a format that can boot successfully on these 
# boards (support for DTB, etc).

set -e

LINUX_VER=$2
KRNLDIR=$BUILD_DIR/linux-$LINUX_VER
MKKNLIMG=${KRNLDIR}/scripts/mkknlimg

echo "Patching zImage..."
mv $BINARIES_DIR/zImage $BINARIES_DIR/zImage.orig
$MKKNLIMG $BINARIES_DIR/zImage.orig $BINARIES_DIR/zImage
