#!/bin/zsh

# Introduction
# This zsh script allows the user to query wifi password from the terminal.

# How to use
# This .zsh script will prompt the user to enter a wifi network name. As long as the wifi network's password is already in the computer's system, the password should generate. 

# Wifi Name Input
vared -p 'Please Input Network Name: 
    > ' -c SSID

# Input
 code="security find-generic-password -D \"AirPort network password\" -a \"$SSID\" -g | grep \"The Network Password Is:\""

# Run code
/bin/zsh -i -c $code
