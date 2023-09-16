#!/bin/bash

# Change to the directory where your WiFi pentesting tools are located.
cd /home/kali/WifiPentesting/testingSomething

# Prompt the user to enter the file path of the captured file (likely the output file from airodump-ng).
echo "Enter the file path of the captured file:"
read FILE

# Prompt the user to enter the password list to be used for the attack.
echo "Enter the password list:"
read PASSWORDLIST

# Use aircrack-ng to attempt to crack the WiFi password using the captured file and the provided password list.
sudo aircrack-ng $FILE -w $PASSWORDLIST
