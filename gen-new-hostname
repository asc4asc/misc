#!/usr/bin/env python3

import psutil
import os
import re

def get_active_ethernet_interface():
    net_if_stats = psutil.net_if_stats()
    for interface, stats in net_if_stats.items():
        if stats.isup and stats.speed > 0:
            return interface
    return None

def get_mac_address(interface):
    net_if_addrs = psutil.net_if_addrs()
    if interface in net_if_addrs:
        for addr in net_if_addrs[interface]:
            if addr.family == psutil.AF_LINK:
                return addr.address
    return None

def generate_hostname(mac_address):
    # Remove colons and convert to lowercase
    return "host-" + re.sub(r'[:]', '', mac_address).lower()

def set_hostname(hostname):
    # Set the hostname
    os.system(f"sudo hostnamectl set-hostname {hostname}")
    # Update /etc/hosts
    with open("/etc/hosts", "r") as file:
        hosts = file.readlines()
    with open("/etc/hosts", "w") as file:
        for line in hosts:
            if "127.0.1.1" in line:
                file.write(f"127.0.1.1\t{hostname}\n")
            else:
                file.write(line)

active_interface = get_active_ethernet_interface()
if active_interface:
    mac_address = get_mac_address(active_interface)
    if mac_address:
        hostname = generate_hostname(mac_address)
        set_hostname(hostname)
        print(f"Hostname set to: {hostname}")
    else:
        print("Could not retrieve MAC address.")
else:
    print("No active Ethernet interface found.")
