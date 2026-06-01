#!/bin/bash

# Use 'tail -n +2' to start outputting from the 2nd line, instantly solving the header problem!
while read -r fs size used avail use mnt; do
    
    disk_usage=${use%\%}
    
    if (( disk_usage >= 80 )); then
        echo -e "\e[33m[WARNING] Partition $mnt is at $disk_usage% capacity!\e[0m"
    fi

done < <(df -h | tail -n +2)
