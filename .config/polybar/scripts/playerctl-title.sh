#!/bin/bash

player_status=$(playerctl -p spotify status 2> /dev/null)
if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata --format '{{ artist }} - {{ title }}')"
fi

# Foreground color formatting tags are optional
if [[ $player_status = "Playing" ]]; then
    echo "$metadata" 
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#404552}Paused"
else
    echo "%{F#404552} not connected" # Greyed out icon when stopped
fi
