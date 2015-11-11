#!/bin/bash

SCRIPTDIR=$(dirname $0)
PKGDIR=$SCRIPTDIR/../rpi/package

pkgname=$1
version=$2

if [ -z "$pkgname" ] || [ -z "$version" ]
then
    echo "$0: ERROR: package name or version not specified"
    exit 1
fi

makefile=$PKGDIR/$pkgname/${pkgname}.mk
sed "s/VERSION = \(.\+\)/VERSION = $version/" -i "$makefile"
