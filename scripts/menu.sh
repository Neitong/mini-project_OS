LOG_FILE="./script.log"

while true; do
    echo "=============================="
    echo "  File & Directory Manager"
    echo "=============================="
    echo "1. List files and directories"
    echo "2. Backup files or directories"
    echo "3. Count files in a directory"
    echo "4. Display disk usage"
    echo "5. Search for a file"
    echo "6. Compress files or directories"
    echo "7. Exit"
    echo "=============================="
    read -p "Choose an option (1-7): " choice

    echo "$(date): User selected option $choice" >> "$LOG_FILE"

    case $choice in
        1) bash scripts/list.sh ;;
        2) bash scripts/backup.sh ;;
        3) bash scripts/count.sh ;;
        4) bash scripts/disk_usage.sh ;;
        5) bash scripts/search.sh ;;
        6) bash scripts/compress.sh ;;
        7) echo "Exiting..."; echo "$(date): Exiting the program" >> "$LOG_FILE"; exit 0 ;;
        *) echo "Invalid option, please try again." | tee -a "$LOG_FILE" ;;
    esac
done