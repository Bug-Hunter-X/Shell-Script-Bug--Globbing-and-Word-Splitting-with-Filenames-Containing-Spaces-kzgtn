#!/bin/bash

# This script demonstrates the correct way to process files in a directory,
# handling filenames with spaces safely.

dir="$1"

if [ ! -d "$dir" ]; then
  echo "Error: Directory '$dir' does not exist." >&2
  exit 1
fi

# Use an array to store the files, preventing word splitting
files=("$(find "$dir" -maxdepth 1 -type f)")

# Loop through the files in the array
for file in "${files[@]}"; do
  echo "Processing: $file"
  process_file "$file" #Properly quoted
done

#Placeholder function
process_file(){
  echo "Processing file: $1"
}