#!/bin/bash

player_status=$(playerctl status -p spotify 2> /dev/null)

if [[ $? -eq 0 ]]; then
    metadata="$(playerctl metadata -p spotify --format '{{ artist }} - {{ title }}')"
fi

if [[ $player_status = "Playing" ]]; then
    echo "$metadata" 
elif [[ $player_status = "Paused" ]]; then
    echo "%{F#586e75}--- PAUSED ---"
else
    echo "%{F#586e75}--- NOT CONNECTED ---"
fi
