#!/bin/bash
cd /home/kali/WifiPentesting/testingSomething
echo "enter the file path of captured file "
read FILE
echo "enter the password list"
read PASSWORDLIST
sudo aircrack-ng $FILE -w $PASSWORDLIST

