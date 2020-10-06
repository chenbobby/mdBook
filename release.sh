#!/bin/bash

set -e

echo "Building the mdbook binary."
cargo install --path . --root . --target x86_64-unknown-linux-gnu

COMPRESSED_BINARY_DIR="${HOME}/Documents/mdBook-release/"
COMPRESSED_BINARY_NAME="mdbook.tar.gz"
COMPRESSED_BINARY_PATH="${COMPRESSED_BINARY_DIR}${COMPRESSED_BINARY_NAME}"

# Create destination directory if it does not already exist.
[ -d $COMPRESSED_BINARY_DIR ] || mkdir $COMPRESSED_BINARY_DIR

echo "Compressing mdbook binary and saving to ${COMPRESSED_BINARY_PATH}"
cd bin
tar -czf ${COMPRESSED_BINARY_PATH} mdbook
cd ../
rm -R bin

echo "Completed. You can find the release tarball at ${COMPRESSED_BINARY_PATH}"
