# Library of shell functions for working with storage units

source /opt/lib/env.sh

# checklabel(device)
#
# Check storage device label for external storage label
#
checklabel() {
    device=$1
    blkid $device | cut -d' ' -f2 | grep -i "\"$EXT_STORAGE_LABEL\"" \
        > /dev/null 2>&1
}

# check_mounted(device)
#
# Check if device is mounted
#
check_mounted() {
    device=$1
    cat /proc/mounts | grep ^$device > /dev/null 2>&1
}

# check_mounted_ext(device)
#
# Check if device is already mounted as external storage
#
check_mounted_ext() {
    device=$1
    cat /proc/mounts | grep ^$device > /dev/null 2>&1 \
        grep $DATADIR > /dev/null 2>&1
}

# check_importable_content(mountpoint)
#
# Check whether storage contains importable content
#
check_importable_content() {
    mountpoint=$1
    [ -d "$mountpoint/$IMPORTABLE_CONTENT" ] && return 0 || return 1
}

# check_importable_files(mountpoint)
#
# Check whether storage contains importable files
#
check_importable_files() {
    mountpoint=$1
    [ -d "$mountpoint/$IMPORTABLE_FILES" ] && return 0 || return 1
}

# used(mountpoint)
#
# Check whether the storage was previously used on another platform
#
used() {
    mountpoint=$1
    [ -f "$moutnpoint/$PLATFORM_FILE" ] && return 0 || return 1
}

# thisplatform(mountpoint)
#
# Check if external storage device mounted at $mountpoint was prepared for the 
# correct platform.
#
thisplatform() {
    mountpoint=$1
    [ $(cat "$mountpoint/$PLATFORM_FILE") = $PLATFORM ] && return 0 || return 1
}

# remount(device)
#
# Remount the data directory using device
#
remount() {
    device=$1
    /bin/umount $device || return 1
    /bin/umount $INT_STORAGE || return 1
    /bin/mount $device $DATADIR || return 1
    return 0
}

# prepstorage(device, mountpoint)
#
# Prepare external storage for use
#
prepstorage() {
    device=$1
    mountpoint=$2

    if used $mountpoint
    then
        # This device has been used previously, so we need to make sure it was 
        # used on this platform

        if thisplatform $mountpoint
        then
            # It was used on this platform, so just remount it
            remount $device || return 1
        else
            # It was used on another platform so we can't do anything with it
            return 1
        fi
    else
        # It was never used on this platform, so first prepare it
        cp -ra $DATADIR/* $mountpoint
        cp /etc/platform $mountpoint/$PLATFORM_FILE
        remount $device
    fi
}

# import_content($mountpoint)
#
# Import content from import directory on the device
#
import_content() {
    mountpoint=$1
    mkdir -p $CONTENT_DIR
    for z in "$mountpoint/$IMPORTABLE_CONTENT"/*.zip 
    do
        install -m644 $z $CONTENT_DIR/$(basename $z)
    done
}

# import_files($mountpoint)
#
# Import files from import directory on the device
#
import_files() {
    mountpoint=$1
    mkdir -p $FILES_DIR
    for f in $(find "$mountpoint/$IMPORTABLE_FILES"/*)
    do
        path=${f#$mountpoint/$IMPORTABLE_FILES/}
        if [ -d "$f" ]
        then
            mkdir -p "$FILES_DIR/$path"
        else
            install -m644 "$f" "$path"
        fi
    done
}
