#!/bin/bash

# Ensure scripts directory exists
SCRIPT_DIR="./scripts"

if [ ! -d "$SCRIPT_DIR" ]; then
    echo "Error: scripts directory not found!"
    exit 1
fi

# Run the menu
bash "$SCRIPT_DIR/menu.sh"
