#!/bin/bash
LOG_DIR="$1"
ARCHIVE_DIR="$LOG_DIR/archive"
mkdir -p "$ARCHIVE_DIR"
find "$LOG_DIR" -type f -name "*.log" -mtime +7 | while read logfile; do
 filename=$(basename "$logfile") 
 cp "$logfile" "$ARCHIVE_DIR/$filename"
 gzip -f "$ARCHIVE_DIR/$filename"
done