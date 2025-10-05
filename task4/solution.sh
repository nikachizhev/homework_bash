#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo "Использование: $0 <директория>"
  exit 1
fi

DIR="$1"
find "$DIR" -type f -exec chmod 640 {} +
find "$DIR" -type d -exec chmod 750 {} +