#!/usr/bin/env fish

# Create the root folder for output files
mkdir -p sox-out

# Encoder settings
set bit_depth 16
set channels 1
set sample_rate 44100

# Find all .wav files and save them in an array
set files (find . -name "*.wav")

# Process each file
for file in $files
    # Create the corresponding folder in sox-out
    set out_dir (dirname (string replace -r '^./' '' $file))
    mkdir -p sox-out/$out_dir/logs

    # Process the file and save it in the corresponding folder
    sox --show-progress \
        --guard $file \
        -b $bit_depth \
        sox-out/$out_dir/(basename (string replace -r '\.wav$' '' $file)).wav \
        channels $channels rate $sample_rate \
        2>&1 \
        | tee sox-out/$out_dir/logs/(basename (string replace -r '\.wav$' '' $file)).sox.log
end
