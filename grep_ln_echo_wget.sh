#!/bin/bash

echo "Starting the Linux Commands Script..."

# GREP Command
echo "Running grep command..."
grep root /etc/passwd
echo "Grep command executed."

# SORT Command
echo "Running sort command..."
echo -e "Bhubaneswer\nWelcome\nIndia\nSoftware" > sample.txt
sort sample.txt
echo "Sort command executed. Output displayed above."

# USERADD, GROUPADD, GPASSWD, LN, TAR, GZIP, WGET Commands

# Create a user
echo "Creating a user: tksahu..."
useradd tksahu
cat /etc/passwd
echo "User created."

# Create a group
echo "Creating a group: devops_alchemy..."
groupadd devops_alchemy
cat /etc/group
echo "Group created."

# Add a user to a group
echo "Adding user tulasi to group techclass..."
gpasswd -a tulasi techclass
echo "User added to the group."

# Add multiple users to a group
echo "Adding multiple users to group techclass..."
gpasswd -M ajay,sammar,ram techclass
echo "Multiple users added to the group."

# Create a soft link
echo "Creating a soft link for filea..."
touch filea
ln -s filea softfilea
echo "Soft link created."

# Create a hard link
echo "Creating a hard link for fileb..."
touch fileb
ln fileb backupfileb
echo "Hard link created."

# Create a tar archive
echo "Creating a tar archive for dirx..."
mkdir dirx
tar -cvf dirx.tar dirx
echo "Tar archive created."

# Compress the tar archive using gzip
echo "Compressing the tar archive..."
gzip dirx.tar
echo "Compressed archive created: dirx.tar.gz"

# Unzip the gzip file
echo "Unzipping the compressed file..."
gunzip dirx.tar.gz
echo "File unzipped: dirx.tar"

# Extract the tar archive
echo "Extracting the tar archive..."
tar -xvf dirx.tar
echo "Archive extracted. Directory dirx restored."

# WGET Command
echo "Downloading a file using wget..."
wget https://example.com/sample-file
echo "File downloaded using wget."

echo "All commands executed successfully!"
