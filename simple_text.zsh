#!/bin/zsh

# How to use
# This .zsh script will prompt the user to enter a message, after which it will prompt the user to enter a recipient. The recipient can be a phone number or a known iCloud "buddy" from the phone book.


# Text Message
vared -p 'Message: ' -c M

# Recipient
vared -p 'Recipient: ' -c R

code="tell app \"Messages\" to send \"$M\" to buddy \"$R\""

osascript -e "$code"
