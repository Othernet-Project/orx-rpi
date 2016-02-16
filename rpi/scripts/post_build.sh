#!/bin/sh

set -e

# Copy version file
cp "$BR2_EXTERNAL/$VERSION_FILE" "$TARGET_DIR/etc/version"
cp "$BR2_EXTERNAL/$PLATFORM_FILE" "$TARGET_DIR/etc/platform"

# Escape backslashes in /etc/issue so we don't have to ruin the ASCII art
sed -i 's|\\|\\\\|g' "$TARGET_DIR/etc/issue"
