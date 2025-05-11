#!/usr/bin/bash

# Check if the name of the file to be checked for, was entered.
if [ -z "$1" ];  then
        echo -e "Error: the name of file to be checked for, was not entered! \nHow to use: $0 <the name of the file to check for>"
        exit 1
fi

filename="$1"

# Check if the file does exist.
if [ -f "$filename" ]; then
        echo "The file with the filename: '$filename', exist."
else
        echo "The file with the filename: '$filename' does not exist."
fi

