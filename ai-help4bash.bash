#!/bin/bash

# Function to display help text
show_help() {
    echo "Usage: ${0##*/} [-h|--help] [-f|--force]"
    echo
    echo "This script shows the hard disk where the root/boot of this installation is placed."
    echo "It shows only the hard disk, no partitions."
    echo
    echo "Options:"
    echo "  -h, --help      Display this help text and exit"
    echo "  -f, --force     Force the script to show the hard disk"
    echo
    echo "Note: The script will show the hard disk only if the -f or --force option is used,"
    echo "or if the file 'this_is_a_test_install' is present in the root directory."
    echo
    echo "This script is AI generated."
    echo
    echo "Original user request:"
    echo "Please write a bash shell script with help text. Show it when --help -h -?. Also include this complete user text that generate this file into the help section. Also that this script is AI generated. It should show the hard disk that where the root/boot of this installation is placed. Show only the hard disk no partitions. Show it only if -f or --force is a option or if in the root is the file 'this_is_a_test_install'"
}

# Function to find the root/boot disk
find_root_disk() {
    root_disk=$(df / | tail -1 | awk '{print $1}' | sed 's/[0-9]*$//')
    echo "Root/boot disk: $root_disk"
}

# Check for help option
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

# Check for force option or presence of 'this_is_a_test_install' file
if [[ "$1" == "-f" || "$1" == "--force" || -f /this_is_a_test_install ]]; then
    find_root_disk
else
    echo "Use -f or --force option, or create 'this_is_a_test_install' file in the root directory to show the root/boot disk."
    exit 1
fi
