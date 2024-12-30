#!/bin/bash

# Display the current files and directories
echo "Current files and directories:"
ls -a

# Delete individual files
echo "Deleting individual files..."
rm -f "file1" "file2" "file3" "file4" "'file a'" "'file b'"
echo "Deleted files: file1, file2, file3, file4, 'file a', 'file b'"

# Remove a single empty directory
echo "Removing single empty directory: dir1"
rmdir dir1

# Remove nested directories using rmdir -p
echo "Removing nested directories: dir2/dir3/dir4 using rmdir -p"
rmdir -p dir2/dir3/dir4

# Remove directories with verbose output
echo "Removing directories with verbose output: dir2 using rmdir -pv"
rmdir -pv dir2

# Remove remaining files and directories forcefully
echo "Forcefully removing all remaining files and directories..."
rm -rf all dir4 dir5 dir6
echo "Removed: all, dir4, dir5, dir6"

# Display the current files and directories after deletion
echo "Files and directories after deletion:"
ls -a
