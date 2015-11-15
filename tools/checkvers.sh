#!/bin/bash

SCRIPTDIR=$(dirname $0)
PKGDIR=$SCRIPTDIR/../rpi/package
SRCDIR=$1


mkfilepath() {
    pkgname=$1
    echo "$PKGDIR/$pkgname/${pkgname}.mk"
}


pkgver() {
    pkgname=$1
    echo $(grep VERSION "$(mkfilepath $pkgname)" | head -n1 \
        | cut -f2 -d=)
}

spkgver() {
    path=$1
    echo $(cd "$path" && git log 2> /dev/null | head -n1 | cut -f2 -d' ')
}

findspkg() {
    pkgname=$1
    echo $(ls -d "${SRCDIR%%/}/${pkgname##python-}" 2> /dev/null)
}

patchver() {
    pkgname=$1
    newver=$2
    sed "s/VERSION = \(.\+\)/VERSION = $newver/" -i "$(mkfilepath $pkgname)"
}

isghpkg() {
    pkgname=$1
    grep "github.com" "$(mkfilepath $pkgname)" 2>&1 > /dev/null
}

if [ -z "$SRCDIR" ]
then
    echo "Usage: $0 PATH"
    echo
    echo "    PATH - local source repositories"
    echo
    echo "Make sure source repositories are up to date"
    exit 0
fi


for pkg in $PKGDIR/*
do
    pkgname=$(basename $pkg)
    if ! isghpkg $pkgname
    then
        continue
    fi

    echo -n "Checking $pkgname..."

    version=$(pkgver $pkgname)
    srcpkg=$(findspkg $pkgname)

    if [ -z "$srcpkg" ]
    then
        echo "NOT FOUND"
        continue
    fi
    srcpkgv=$(spkgver $srcpkg)
    if [ -z "$srcpkgv" ]
    then
        echo "UNKNOWN"
        continue
    fi
    if [ "$srcpkgv" == "$version" ]
    then
        echo "MATCH"
        continue
    fi
    patchver "$pkgname" "$srcpkgv"
    echo "UPDATED"
    echo "$pkgname : $version -> $srcpkgv"
done

