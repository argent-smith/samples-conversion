#!/usr/bin/env bash

# Create the root folder for output files
mkdir -p sox-out

# Encoder settings
bit_depth=16
channels=1
sample_rate=44100

# Find all .wav files and save them in an array
files=$(find . -name "*.wav")

# Process each file
for file in $files; do
    # Create the corresponding folder in sox-out
    out_dir=$(dirname "${file#./}")
    mkdir -p "sox-out/$out_dir/logs"

    # Process the file and save it in the corresponding folder
    sox --show-progress \
        --guard "$file" \
        -b $bit_depth \
        "sox-out/$out_dir/$(basename "${file%.wav}").wav" \
        channels $channels rate $sample_rate \
        2>&1 \
        | tee "sox-out/$out_dir/logs/$(basename "${file%.wav}").sox.log"
done
