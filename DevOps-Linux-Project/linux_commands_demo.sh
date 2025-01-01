#!/bin/bash

echo "==========================================="
echo "1. Process Management"
echo "==========================================="

# List running processes
echo "Listing running processes (ps):"
ps -e | head -n 10
echo

# Display system processes in real-time
echo "Displaying real-time system processes (top):"
echo "Press 'q' to exit the top command."
top -b -n 1 | head -n 10
echo

# Example of killing a process (uncomment to use)
# echo "Killing a process (kill):"
# echo "Enter a PID to kill: "
# read pid
# kill $pid
# echo "Process $pid killed (if it existed)."
# echo

# List background jobs
echo "Listing background jobs (jobs):"
jobs
echo

# Run a command in the background
echo "Running 'sleep 10' in the background:"
sleep 10 &
echo "Background job started. Use 'bg' to resume or 'fg' to bring it to the foreground."
echo

echo "==========================================="
echo "2. Networking Commands"
echo "==========================================="

# Check connectivity using ping
echo "Pinging google.com (ping):"
ping -c 4 google.com
echo

# Fetch a webpage using curl
echo "Fetching a webpage using curl:"
curl -I https://www.example.com
echo

# Download a file using wget
echo "Downloading a file using wget:"
wget -q https://www.example.com -O example.html
echo "File downloaded as 'example.html'."
echo

# Display network configuration
echo "Displaying network configuration (ifconfig):"
ifconfig | head -n 10
echo

echo "==========================================="
echo "3. Archiving and Compression"
echo "==========================================="

# Create a tar archive
echo "Creating a tar archive of the current directory:"
tar -cvf project.tar .
echo "Archive created as 'project.tar'."
echo

# Compress the tar archive using gzip
echo "Compressing the archive using gzip:"
gzip project.tar
echo "Archive compressed as 'project.tar.gz'."
echo

# Decompress the archive using gunzip
echo "Decompressing the archive using gunzip:"
gunzip project.tar.gz
echo "Archive decompressed to 'project.tar'."
echo

# Zip a file
echo "Creating a zip file of 'example.html':"
zip example.zip example.html
echo "File zipped as 'example.zip'."
echo

# Unzip a file
echo "Unzipping 'example.zip':"
unzip example.zip
echo "File unzipped."
echo

echo "==========================================="
echo "Script Execution Complete!"
echo "==========================================="
