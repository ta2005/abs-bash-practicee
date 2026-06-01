#!/bin/bash

nbr_line=0

while read -r line 
do
    if [[ "$nbr_line" == 0 ]];then
	nbr_line=1
	continue
    fi
    disk_usage=$(echo "$line" | awk '{print $5}')
    disk_usage=${disk_usage%"%"}
    mnt_point=$(echo "$line" | awk '{print $6}')
    if (( disk_usage >= 80 )) ; then
	echo -e "\e[33m[WARNING] Partition $mnt_point is at $disk_usage% capacity!\e[0m"
    fi
done < <(df -h)
