#!/bin/bash

# Create file1 and add initial content
cat > file1 << EOF
What is this
How are you
EOF

# Display the files in the current directory
ls

# Display the content of file1
cat file1

# Create file2 and add content
cat > file2 << EOF
Namaste
EOF

# Display the files in the current directory
ls

# Append content to file1
cat >> file1 << EOF
Thankyou
EOF

# Display the content of file1
cat file1

# Concatenate file1 and file2 into a new file 'all'
cat file1 file2 > all

# Display the content of the concatenated file
cat all

