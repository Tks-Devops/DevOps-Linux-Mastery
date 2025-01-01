#!/bin/bash

# Display hostname
echo "Hostname:"
hostname

# Display IP address
echo "IP Address (ifconfig):"
ifconfig

# Display IP address (hostname -I)
echo "IP Address (hostname -I):"
hostname -I

# Display OS version
echo "Operating System Version:"
cat /etc/os-release

# Check network connectivity
echo "Pinging Google DNS (8.8.8.8):"
ping -c 4 8.8.8.8

# Display routing table
echo "Routing Table:"
route -n

# Check DNS resolution
echo "Resolving www.google.com:"
nslookup www.google.com

# Display active network connections
echo "Active Network Connections:"
netstat -tuln

# Display open ports using ss
echo "Open Ports (ss command):"
ss -tuln

# Trace route to a domain
echo "Traceroute to www.google.com:"
traceroute www.google.com

# Display ARP table
echo "ARP Table:"
arp -a

# Test a specific port (e.g., HTTP on port 80)
echo "Testing Port 80 on www.google.com:"
nc -zv www.google.com 80

# Check network interfaces
echo "Network Interfaces:"
ip addr show

# Display IP routing table
echo "IP Routing Table:"
ip route show

# Test HTTP connection using curl
echo "HTTP Test (curl www.google.com):"
curl -I www.google.com

# Download a file using wget
echo "Downloading a file using wget:"
wget -q --spider https://www.google.com && echo "wget test successful" || echo "wget test failed"

# Check DNS records using dig
echo "DNS Records for www.google.com:"
dig www.google.com

# Display network statistics
echo "Network Statistics:"
ifstat
