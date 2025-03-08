#!/bin/bash

read -p "Enter the directory to search in: " dir
read -p "Enter the filename or extension (e.g., 'file.txt' or '*.sh'): " name

if [ -d "$dir" ]; then
    echo "Searching for '$name' in '$dir'..."
    find "$dir" -type f -name "$name"
else
    echo "Error: Directory does not exist."
fi
