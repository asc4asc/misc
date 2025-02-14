#!/bin/bash

# Function to get the active Ethernet interface
get_active_ethernet_interface() {
    for interface in $(ls /sys/class/net/); do
        if [[ $(cat /sys/class/net/$interface/operstate) == "up" && $(cat /sys/class/net/$interface/speed 2>/dev/null) -gt 0 ]]; then
            echo $interface
            return
        fi
    done
}

# Function to get the MAC address of an interface
get_mac_address() {
    local interface=$1
    cat /sys/class/net/$interface/address
}

# Function to generate a unique hostname based on the MAC address
generate_hostname() {
    local mac_address=$1
    echo "host-$(echo $mac_address | tr -d ':')"
}

# Function to set the hostname
set_hostname() {
    local hostname=$1
    sudo hostnamectl set-hostname $hostname
    sudo sed -i "s/127.0.1.1.*/127.0.1.1\t$hostname/" /etc/hosts
}

active_interface=$(get_active_ethernet_interface)
if [[ -n $active_interface ]]; then
    mac_address=$(get_mac_address $active_interface)
    hostname=$(generate_hostname $mac_address)
    set_hostname $hostname
    echo "Hostname set to: $hostname"
else
    echo "No active Ethernet interface found."
fi
