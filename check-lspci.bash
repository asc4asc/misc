#!/bin/bash

# Get the current date and time
timestamp=$(date +"%Y%m%d_%H%M%S")

# Define the output file name with the timestamp
output_file="hardware_check_$timestamp.txt"

# Run lspci and save the output to the file
lspci > "$output_file"

# Check for duplicate files and keep only the oldest one
for file in hardware_check_*.txt; do
    if [ "$file" != "$output_file" ] && cmp -s "$file" "$output_file"; then
        echo "Duplicate found: $file and $output_file"
        if [ "$file" -ot "$output_file" ]; then
            echo "Keeping the oldest file: $file"
            rm "$output_file"
            output_file="$file"
        else
            echo "Keeping the oldest file: $file"
            rm "$file"
        fi
    fi
done

# Print a message indicating where the file has been saved
echo "Hardware check saved to $output_file"
