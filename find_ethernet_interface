import psutil

def get_active_ethernet_interface():
    # Get network interface stats
    net_if_stats = psutil.net_if_stats()
    
    # Iterate through interfaces to find the active one
    for interface, stats in net_if_stats.items():
        if stats.isup and stats.speed > 0:  # Check if the interface is up and has a speed greater than 0
            return interface
    return None

active_interface = get_active_ethernet_interface()
if active_interface:
    print(f"Active Ethernet interface: {active_interface}")
else:
    print("No active Ethernet interface found.")
