#!/bin/bash

grep -rRh -m 1 ^Exec $XDG_CONFIG_DIRS/autostart | sed -e 's/\(-- \)\?%[fFuU]//g' | while read -r line ; do 
   ${line:5} &
done

grep -rRh -m 1 ^Exec $XDG_CONFIG_HOME/autostart | sed -e 's/\(-- \)\?%[fFuU]//g' | while read -r line ; do 
   ${line:5} &
done
