#!/bin/sh

set -e

SCRIPTDIR=$(dirname "$0")

# Copy version file
cp "$SCRIPTDIR"/../version "$TARGET_DIR/etc/"
cp "$SCRIPTDIR"/../platform "$TARGET_DIR/etc/"

# Escape backslashes in /etc/issue so we don't have to ruin the ASCII art
sed -i 's|\\|\\\\|g' "$TARGET_DIR/etc/issue"
