#!/bin/bash

# Create file1
touch file1

# Display the files in the current directory
ls

# Create multiple files in a single command
touch file1 file2 file3 file4

# Display the files in the current directory again
ls

# Check the timestamp of file2
stat file2

# Update the access time of file3
touch -a file3

# Update the modification time of file4
touch -m file4

# List all files, including hidden ones
ls -a

# List detailed information of all files
ls -l
