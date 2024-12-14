#!/bin/bash

# This script demonstrates improved error handling for file processing.

file_to_process="my_file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found." >&2
exit 1
fi

# Use a safer and more efficient way to read file line by line
while IFS= read -r line; do
  echo "Processing line: $line"
done < "$file_to_process"

# Output indicating the end of the process. No need to assign data to a variable that is only used once.
echo "Finished processing."