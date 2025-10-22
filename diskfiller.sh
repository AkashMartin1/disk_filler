#!/bin/bash

# Directory where files will be created
OUTPUT_DIR="./random_files"
mkdir -p "$OUTPUT_DIR"

# Infinite loop
while true; do
    # Generate a random filename using date and random number
    FILENAME="$OUTPUT_DIR/file_$(date ++%s%N)_$RANDOM.bin"

    # File size set to 1 GB
    FILESIZE="1G"

    # Generate random data (1 GB) using /dev/urandom
    head -c "$FILESIZE" /dev/urandom > "$FILENAME"

    echo "Created $FILENAME ($FILESIZE)"

    # Sleep for 1 second
    sleep 2
done
