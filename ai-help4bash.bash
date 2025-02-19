#!/bin/bash

# Function to display help text
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "Show the hard disk where the root/boot of this installation is placed."
    echo
    echo "Options:"
    echo "  -h, --help, -?    Display this help and exit"
    echo
    echo "This script checks if the file 'this_is_a_test_install' exists in the root directory."
    echo "If the file exists, it shows the hard disk where the root/boot of this installation is placed."
    echo
    echo "Note: This script is AI generated."
    echo
    echo "Complete user text that generated this file:"
    echo "Please write a bash shell script with help text. Show it when --help -h -?. Also include this complete user text that generate this file into the help section. Also that this script is AI generated. It should show the hard disk that where the root/boot of this installation is placed. Show only the hard disk no partitions if in the root is the file 'this_is_a_test_install'"
}

# Check for help option
if [[ "$1" == "--help" || "$1" == "-h" || "$1" == "-?" ]]; then
    show_help
    exit 0
fi

# Check if the file 'this_is_a_test_install' exists in the root directory
if [[ -f /this_is_a_test_install ]]; then
    # Get the root/boot disk without partitions
    root_disk=$(df / | awk 'NR==2 {print $1}' | sed 's/[0-9]*$//')
    echo "The hard disk where the root/boot of this installation is placed: $root_disk"
else
    echo "The file 'this_is_a_test_install' does not exist in the root directory."
fi
