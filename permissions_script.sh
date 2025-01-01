#!/bin/bash

echo "Starting the File and Directory Permissions Script..."

# Create sample files and directories
echo "Creating sample files and directories..."
touch file1 file2
mkdir dir1 dir2
echo "Sample files and directories created: file1, file2, dir1, dir2"

# Display current permissions
echo "Displaying current permissions for files and directories:"
ls -l file1 file2 dir1 dir2

# Change permissions using chmod
echo "Changing permissions using chmod..."
chmod 744 file1    # Owner: read/write/execute, Group: read, Others: read
chmod 640 file2    # Owner: read/write, Group: read, Others: no access
chmod -R 755 dir1  # Recursive: Owner: read/write/execute, Group: read/execute, Others: read/execute
chmod 700 dir2     # Owner: full access, Group: no access, Others: no access
echo "Permissions updated."

# Display updated permissions
echo "Updated permissions for files and directories:"
ls -l file1 file2 dir1 dir2

# Change ownership using chown
echo "Changing ownership using chown..."
chown $USER file1  # Change owner to current user
chown $USER: dir1  # Change owner and group to current user
echo "Ownership updated."

# Change group using chgrp
echo "Changing group using chgrp..."
chgrp $USER file2  # Change group to current user
chgrp $USER dir2   # Change group to current user
echo "Group updated."

# Display final permissions, ownership, and group
echo "Final permissions, ownership, and group for files and directories:"
ls -l file1 file2 dir1 dir2

echo "Script execution completed successfully!"
#Meaning of chmod +x:

    chmod: This command changes the permissions of a file or directory.
    +x: This adds the execute (x) permission to the file or directory.

Purpose:

    When a file has the x (execute) permission, it can be run as a program or script.
    For example, if you have a script file like script.sh, running chmod +x script.sh allows you to execute it directly by typing ./script.sh.
