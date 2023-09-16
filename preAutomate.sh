#!/bin/bash

# Change to the directory where your WiFi pentesting tools are located.
cd /home/kali/WifiPentesting/testingSomething

# Check and disable any RF kill processes that might interfere with WiFi operation.
sudo airmon-ng check rfkill

# Kill processes that can interfere with WiFi operations.
sudo airmon-ng check kill

# Start the monitor mode on the wireless interface (wlan0 in this case).
sudo airmon-ng start wlan0

# Use airodump-ng to scan and list available WiFi networks in the 5GHz band.
sudo airodump-ng --band a wlan0

# Prompt the user to enter the channel number of the target network.
echo "Enter the channel number of the target:"
read CH

# Prompt the user to enter the BSSID (MAC address) of the target network.
echo "Enter the BSSID of the target:"
read BSSID

# Use airodump-ng to capture packets from the target network on the specified channel and save them to a file with a prefix "psk".
sudo airodump-ng -c $CH --bssid $BSSID wlan0 -w psk
