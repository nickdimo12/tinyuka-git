#!/usr/bin/bash

# Check if the directory path with the files to be counted, was entered.
if [ -z "$1" ]; then
    echo -e "Error: The directory path that has the files to be counted, was not entered! \nHow to use: $0 <the absolute directory path>"
    exit 1
fi

path_dir="$1"

# Check if the directory exists.
if [ ! -d "$path_dir" ]; then
    echo "The directory path '$path_dir' is not a valid directory."
    exit 1
fi

# Count regular files in the directory
count_file=$(find "$path_dir" -maxdepth 1 -type f | wc -l)
echo "There are $count_file file(s) in '$path_dir'."
