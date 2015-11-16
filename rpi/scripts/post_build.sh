#!/bin/sh

set -e

# Copy version file
cp "$BR2_EXTERNAL/version" "$TARGET_DIR/etc/"
cp "$BR2_EXTERNAL/platform" "$TARGET_DIR/etc/"

# Escape backslashes in /etc/issue so we don't have to ruin the ASCII art
sed -i 's|\\|\\\\|g' "$TARGET_DIR/etc/issue"
