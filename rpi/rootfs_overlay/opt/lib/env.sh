# Common variables

EXT_STORAGE_LABEL=ext_store
DATADIR=/mnt/data
CONTENT_DIR=$DATADIR/downloads/content
FILES_DIR=$DATADIR/downloads/files
IMPORTABLE_CONTENT=import_content
IMPORTABLE_FILES=import_files

INT_STORAGE=/dev/mmcblk0p4

INIT=/etc/init.d
ONDD=$INIT/S90ondd
LIBR=$INIT/S91librarian
LIBRARIAN="python -m librarian.app"

PLATFORM=$(cat /etc/platform)
PLATFORM_FILE=.platform

