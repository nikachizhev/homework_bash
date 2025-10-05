#!/bin/bash
DIR="$1"
file_count=$(find "$DIR" -type f | wc -l)
dir_count=$(find "$DIR" -type d | wc -l)
dir_count=$((dir_count - 1))
largest_file=$(find "$DIR" -type f -exec du -b {} + | sort -nr | head -n 1)

echo "Files: $file_count"
echo "Dirs: $dir_count"

biggest_size=$(echo "$largest_file" | awk '{print $1}')
biggest_name=$(echo "$largest_file" | cut -d' ' -f2-)
echo "Largest file: $biggest_name ($biggest_size bytes)"