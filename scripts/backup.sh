#!/bin/bash

read -p "Enter the file or directory to backup: " source
read -p "Enter the backup destination: " backup_dest

if [ ! -e "$source" ]; then
    echo "Error: Source file/directory does not exist."
    exit 1
fi

mkdir -p "$backup_dest"
backup_name="$(basename "$source")_backup_$(date +%Y%m%d%H%M%S)"
cp -r "$source" "$backup_dest/$backup_name"

echo "Backup successful: $backup_dest/$backup_name"
