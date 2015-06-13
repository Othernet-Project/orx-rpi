#!/bin/sh

set -e

SCRIPTDIR=$(dirname "$0")

# Copy version file
cp "$SCRIPTDIR"/../{version,platform} "$TARGET_DIR/etc/"

# Escape backslashes in /etc/issue so we don't have to ruin the ASCII art
sed -i 's|\\|\\\\|g' "$TARGET_DIR/etc/issue"
