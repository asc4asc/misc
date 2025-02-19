#!/bin/bash

# Function to display help text
show_help() {
    echo "Usage: $0 [OPTION]"
    echo "This script checks if the file 'this_is_a_test_install' exists in the root directory."
    echo "If the file exists, it shows the hard disk where the boot device is placed."
    echo
    echo "Options:"
    echo "  -h, --help, -?    Display this help and exit"
    echo
    echo "Note: This script is AI generated."
    echo
    echo "Original user request:"
    echo "Please write a bash shell script with help text. Show it when --help -h -?. Also include this complete user text that generate this file into the help section. Also that this script is AI generated. It should show the harddisk that where the bootdevice is placed. Only if in the root is the file 'this_is_a_test_install'"
}

# Check for help option
if [[ "$1" == "--help" || "$1" == "-h" || "$1" == "-?" ]]; then
    show_help
    exit 0
fi

# Check if the file 'this_is_a_test_install' exists in the root directory
if [[ -f /this_is_a_test_install ]]; then
    # Display the hard disk where the boot device is placed
    boot_device=$(lsblk -o NAME,MOUNTPOINT | grep " /boot" | awk '{print $1}')
    echo "The boot device is located on the hard disk: $boot_device"
else
    echo "The file 'this_is_a_test_install' does not exist in the root directory."
fi
