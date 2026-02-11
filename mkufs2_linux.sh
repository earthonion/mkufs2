#!/bin/bash
# Usage: ./mkufs2.sh <input_dir> [output_file]

set -e

if [ -z "$1" ]; then
    echo "Usage: $0 <input_dir> [output_file]"
    exit 1
fi

INPUT_DIR="$1"
OUTPUT="${2:-download0.dat}"

echo "Using makefs:"
echo "Creating UFS2 image from $INPUT_DIR..."

makefs -t ffs \
        -B le \
        -M 1m \
        -o version=2,bsize=32768,fsize=4096,label=ffpkg \
        "$OUTPUT" "$INPUT_DIR"

echo "----------------------------------------"
echo "Success! Created: $OUTPUT"
ls -lh "$OUTPUT"
