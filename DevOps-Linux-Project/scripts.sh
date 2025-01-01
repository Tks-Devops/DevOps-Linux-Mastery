#!/bin/bash

# Define log file
LOG_FILE="/var/log/system_monitor.log"

# Ensure the script runs as root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root!" >&2
  exit 1
fi

# Function to log system information
log_system_info() {
  echo "---------------------------------------------------" >> "$LOG_FILE"
  echo "System Monitoring Report - $(date)" >> "$LOG_FILE"
  echo "---------------------------------------------------" >> "$LOG_FILE"
  
  # CPU Usage
  echo "CPU Usage:" >> "$LOG_FILE"
  mpstat | grep -A 5 "%idle" >> "$LOG_FILE"
  echo >> "$LOG_FILE"
  
  # Memory Usage
  echo "Memory Usage:" >> "$LOG_FILE"
  free -h >> "$LOG_FILE"
  echo >> "$LOG_FILE"
  
  # Disk Usage
  echo "Disk Usage:" >> "$LOG_FILE"
  df -h >> "$LOG_FILE"
  echo >> "$LOG_FILE"
  
  # Network Usage
  echo "Network Usage:" >> "$LOG_FILE"
  ifstat -t 1 1 >> "$LOG_FILE"
  echo >> "$LOG_FILE"
}

# Function to send alert if thresholds are exceeded
send_alert() {
  CPU_THRESHOLD=80
  MEM_THRESHOLD=80

  CPU_USAGE=$(mpstat | awk '/all/ {print 100 - $12}')
  MEM_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

  if (( ${CPU_USAGE%.*} > CPU_THRESHOLD )); then
    echo "ALERT: CPU usage exceeded ${CPU_THRESHOLD}% at $(date)" | mail -s "High CPU Alert" admin@example.com
  fi

  if (( MEM_USAGE > MEM_THRESHOLD )); then
    echo "ALERT: Memory usage exceeded ${MEM_THRESHOLD}% at $(date)" | mail -s "High Memory Alert" admin@example.com
  fi
}

# Main script logic
echo "Starting system monitoring..."
log_system_info
send_alert
echo "System monitoring complete. Logs written to $LOG_FILE"
