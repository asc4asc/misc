#!/bin/bash

# Function to display help text
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "This script shows the hard disk where the boot of this installation is placed."
    echo "It only runs if the file 'this_is_a_test_install' is present in the root directory."
    echo
    echo "Options:"
    echo "  -h, --help, -?    Display this help text and exit"
    echo
    echo "Note: This script is AI generated."
    echo
    echo "Original user request:"
    echo "Please write a bash shell script with help text. Show it when --help -h -?. Also include this complete user text that generate this file into the help section. Also that this script is AI generated. It should show the harddisk that where the boot of this installation is placed. Only if in the root is the file 'this_is_a_test_install'"
}

# Check for help option
if [[ "$1" == "--help" || "$1" == "-h" || "$1" == "-?" ]]; then
    show_help
    exit 0
fi

# Check if the file 'this_is_a_test_install' exists in the root directory
if [[ -f /this_is_a_test_install ]]; then
    # Display the hard disk where the boot of this installation is placed
    boot_disk=$(df /boot | tail -1 | awk '{print $1}')
    echo "The boot of this installation is placed on: $boot_disk"
else
    echo "The file 'this_is_a_test_install' is not present in the root directory."
fi
