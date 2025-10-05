#!/bin/bash
DIR="$1"
SEARCH="$2"
REPLACE="$3"
find "$DIR" -type f -name "*.txt" -exec sed -i "s/${SEARCH}/${REPLACE}/g" {} +
