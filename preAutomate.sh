#!/bin/bash
cd /home/kali/WifiPentesting/testingSomething
sudo airmon-ng check rfkillsudo
sudo airmon-ng check kill
sudo airmon-ng start wlan0 
sudo airodump-ng --band a wlan0
echo "enter the channel number of target"
read CH
echo "enter the bssid of target"
read BSSID
sudo airodump-ng -c $CH --bssid $BSSID wlan0 -w psk
