#!/bin/bash
# Read the content of the first argument or use the default value
if [ -z $1 ]; then
  file_content="Hello, World!"
else
  file_content=$1
fi

# Alternative syntax using the ':-' operator
# file_content=${1:-"Que me gusta la bash!!!!"}

# Create the dictorories 'foo/dummy' and 'foo/empty'
mkdir -p foo/dummy
mkdir -p foo/empty

# Create the 'file1.txt' and 'file2.txt' files
echo $file_content > foo/dummy/file1.txt
touch foo/dummy/file2.txt

# Fill the 'file2.txt' with the content of 'file1.txt'
cp foo/dummy/file1.txt foo/dummy/file2.txt

# Move the 'file2.txt' to the 'foo/empty' directory
mv foo/dummy/file2.txt foo/empty/

# Check the result
echo "The content of 'file1.txt' is: $(cat foo/dummy/file1.txt)"
echo "The content of 'file2.txt' is: $(cat foo/empty/file2.txt)"
