#!/bin/bash

# Create "file a" and add content
echo -e "Hello\nWelcome to devops alchemy" > "file a"

# List the files in the current directory
ls

# Display the content of "file a"
cat "file a"

# Create "file b" and add content
echo "Subscribe my youtube channel" > "file b"

# List the files in the current directory
ls

# Update "file b" with additional content
echo "Thankyou" >> "file b"

# Display the content of "file b"
cat "file b"

#vi file a
Hello
Welcome to devops alchemy
:wq

#ls
o/p:-file a

#cat file a
Output:- Welcome to devops alchemy

#nano file b
Subscribe my youtube channel
Ctrl+x
Press capital Y –enter

#ls
Output:- file b

#nano file b (if you want to edit/update)
Thankyou
Ctrl+o
Ctrl+x

#cat file b
