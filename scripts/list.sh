#!/bin/bash

read -p "Enter the directory path: " dir

if [ -d "$dir" ]; then
    echo "Listing files and directories in: $dir"
    ls -lah "$dir"
else
    echo "Error: Directory does not exist."
fi
