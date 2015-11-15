#!/bin/bash

set -e

SITES=$TARGET_DIR/usr/lib/python2.7/site-packages
COLLECT_TO=$SITES/librarian/static

relpath() {
    path=$1
    par=$2
    echo ${path##$par/}
}


# Remove existing statics
rm -rf $COLLECT_TO/*

for d in $SITES/librarian_*/static
do
    echo -e "\e[32mCollecting $d\e[0m"
    for f in $(find "$d" -type f -not \( -name *.css -or -name *.js \))
    do
        reltarget=$(relpath "$f" "$d")
        target=$COLLECT_TO/$reltarget
        mkdir -p $(dirname "$target")
        cp "$f" "$target"
        echo "Collected $reltarget"
    done
done
