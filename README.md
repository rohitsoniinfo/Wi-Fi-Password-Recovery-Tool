# HandshakeHunter

## Overview
WiFi Attack and Password Recovery Project
This project is designed for educational purposes to demonstrate the vulnerabilities of WiFi networks and the importance of securing them. It involves conducting a WiFi attack and recovering a password using specific hardware and software tools. Please note that this project should only be used in controlled environments with proper authorization.

## Requirements

To successfully complete this project, you will need the following:

- A WiFi card that supports monitor mode and packet injection.
- A Linux machine, preferably Kali Linux, or any other Linux distribution.

## Tools Used

The primary tool used for this project is Aircrack-ng, a powerful suite of tools for WiFi analysis and password recovery.

## Project Steps

Follow these steps to conduct the WiFi attack and recover a password:

1. **Initial Setup**

   - Ensure you have a compatible WiFi card inserted into your Linux machine.
   - Set up your Linux machine with the necessary drivers and software. Kali Linux is recommended for this project.

2. **Pre-Automation**

   - Run the "preAutomate.sh" script using the following command:
     ```
     ./preAutomate.sh
     ```
   - The script will assist you in identifying the target WiFi network.
   - Note down the channel number (under "ch") and BSSID (under "bssid") for the target network. This information is essential for capturing the handshake.

3. **Capture Handshake**

   - Once you have identified the target and captured the handshake, use CTRL+C to exit the "preAutomate.sh" script.

4. **Deauthenticate Devices**

   - Run the "postAutomate.sh" script using the following command:
     ```
     ./postAutomate.sh
     ```
   - This script sends deauthentication packets to devices connected to the target WiFi network, temporarily forcing them to disconnect.

5. **Password Recovery**

   - Run the "attack.sh" script using the following command:
     ```
     ./attack.sh
     ```
   - The script launches the attack to crack the WiFi password using the captured handshake and other techniques.
   - Be patient, as the time required for this step may vary depending on the complexity of the password.

6. **Password Recovery**

   - After successfully running the "attack.sh" script, you should have the WiFi password.

## Important Note

This project is intended for educational purposes only. Unauthorized access to computer networks is illegal and unethical. Ensure that you have proper authorization before attempting any WiFi attacks. Respect privacy and adhere to legal and ethical guidelines.

## Happy Hacking! :)
