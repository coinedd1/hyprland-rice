#!/bin/bash

# Check if nm-connection-editor is already running
if pgrep -x "nm-connection-editor" > /dev/null
then
    # If it is, close it
    killall nm-connection-editor
else
    # If not, launch it. Hyprland will make it float based on the window rule.
    nm-connection-editor
fi