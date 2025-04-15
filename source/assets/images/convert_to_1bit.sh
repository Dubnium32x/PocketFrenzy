#!/bin/bash

INPUT_DIR="extracted_frames"
OUTPUT_DIR="final_intro_frames"

mkdir -p "$OUTPUT_DIR"

i=1
for img in "$INPUT_DIR"/*.png; do
    output="$OUTPUT_DIR/intro$i.png"
    convert "$img" -resize 400x240\! -colors 2 -type bilevel "$output"
    echo "Converted: $output"
    ((i++))
done

