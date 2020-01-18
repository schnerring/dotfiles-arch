#!/bin/bash

grep -rh Exec $XDG_CONFIG_DIRS/autostart | while read -r line ; do 
   ${line:5} &
done

grep -rh Exec $XDG_CONFIG_HOME/autostart | while read -r line ; do 
   ${line:5} &
done
