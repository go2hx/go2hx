#!/bin/bash

# List of files to delete
files=(

)

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "File not found: $file"
    fi
done