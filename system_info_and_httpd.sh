#!/bin/bash

# Switch to root user
echo "Switching to root user..."
sudo su

# Create files
echo "Creating files: file1, file2, file3..."
touch file1 file2 file3
ls -l file1 file2 file3

# Display the hostname
echo "Displaying the hostname of the machine..."
hostname

# Display network information
echo "Displaying network interfaces and IP addresses..."
ifconfig

# Display only the IP address
echo "Displaying only the IP address of the machine..."
hostname -I

# Display the OS version
echo "Displaying the OS version..."
cat /etc/os-rel*

# Install HTTPS support
echo "Installing HTTPS support..."
apt install https -y

# Update and install HTTPD (Apache2)
echo "Updating package list and installing HTTPD..."
apt update
apt install httpd -y

# Start the HTTPD service
echo "Starting the HTTPD service..."
service httpd start

# Check the status of the HTTPD service
echo "Checking the status of the HTTPD service..."
service httpd status

# Remove HTTPD
echo "Removing HTTPD..."
apt remove httpd -y

echo "Script execution completed."
