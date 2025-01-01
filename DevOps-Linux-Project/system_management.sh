#!/bin/bash

# Function: Monitor Disk Usage
monitor_disk_usage() {
    echo "Monitoring Disk Usage..."
    THRESHOLD=80
    USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
    if [ "$USAGE" -gt "$THRESHOLD" ]; then
        echo "ALERT: Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
    else
        echo "Disk usage is within limits. Current usage: $USAGE%"
    fi
    echo
}

# Function: User and Group Management
manage_users_groups() {
    echo "User and Group Management"
    echo "1. Add a User"
    echo "2. Remove a User"
    echo "3. Add a Group"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1)
            read -p "Enter username to add: " username
            sudo adduser "$username"
            echo "User $username added."
            ;;
        2)
            read -p "Enter username to remove: " username
            sudo deluser "$username"
            echo "User $username removed."
            ;;
        3)
            read -p "Enter group name to add: " groupname
            sudo groupadd "$groupname"
            echo "Group $groupname added."
            ;;
        4)
            echo "Exiting User and Group Management."
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
    echo
}

# Function: Log Analysis
analyze_logs() {
    LOG_FILE="logs/app.log"
    if [ ! -f "$LOG_FILE" ]; then
        echo "Log file $LOG_FILE does not exist. Creating a dummy log file for demonstration."
        mkdir -p logs
        echo -e "INFO: Application started\nERROR: Failed to connect to database\nINFO: User logged in\nWARNING: Disk space low" > "$LOG_FILE"
    fi

    echo "Log Analysis"
    echo "1. View the entire log file"
    echo "2. Search for a specific keyword"
    echo "3. View the last 10 lines of the log file"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1)
            echo "Displaying the entire log file:"
            cat "$LOG_FILE"
            ;;
        2)
            read -p "Enter keyword to search: " keyword
            echo "Searching for '$keyword' in the log file:"
            grep "$keyword" "$LOG_FILE"
            ;;
        3)
            echo "Displaying the last 10 lines of the log file:"
            tail -n 10 "$LOG_FILE"
            ;;
        4)
            echo "Exiting Log Analysis."
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
    echo
}

# Main Menu
while true; do
    echo "System Management Script"
    echo "1. Monitor Disk Usage"
    echo "2. User and Group Management"
    echo "3. Log Analysis"
    echo "4. Exit"
    read -p "Choose an option: " main_choice

    case $main_choice in
        1)
            monitor_disk_usage
            ;;
        2)
            manage_users_groups
            ;;
        3)
            analyze_logs
            ;;
        4)
            echo "Exiting System Management Script."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
