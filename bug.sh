#!/bin/bash

# This script attempts to process files in a directory,
# but it has a subtle bug related to globbing and word splitting.

# Get the directory path from the user.
dir="$1"

# Check if the directory exists.
if [ ! -d "$dir" ]; then
  echo "Error: Directory '$dir' does not exist." >&2
  exit 1
fi

# Loop through the files in the directory.
for file in "$dir"/*; do
  # Process each file (e.g., print its name)
  echo "Processing: $file"
  # This is where the bug may occur: if the file name
  # contains spaces, it will be treated as multiple arguments
  # by the commands that might be executed here (e.g., grep, sed, etc)
  process_file "$file"
done