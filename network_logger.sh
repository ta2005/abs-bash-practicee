#!/bin/bash

check_status()
{
    if [[ $# != 1 ]] ;then
	return 1
    fi
    ping -c 1 -W 2 "$1" > /dev/null 2>&1
    return 
}

for domain 
do 
    if check_status "$domain"
    then
	echo -e "\e[32m[ONLINE]\e[0m $domain"
    else
	echo -e "\e[31m[OFFLINE]\e[0m $domain"
	echo "$(date -Iseconds) - $domain is unreachable" >> ping_errors.log
    fi
done
