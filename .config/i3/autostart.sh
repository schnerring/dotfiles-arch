#!/bin/bash

function autostart() {
    grep -rRh -m 1 ^Exec "${1}/autostart" \
        | sed -e 's/\(-- \)\?%[fFuU]//g' \
        | sed -e 's/"//g' \
        | while read -r line ; do
        
        ${line:5} &

    done
}

autostart $XDG_CONFIG_DIRS
autostart $XDG_CONFIG_HOME
