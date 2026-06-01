#!/bin/bash

if [[ $# == 1 ]] && [[ -e $1 ]]  && [[ -d $1 ]]
then
    echo "Give me a valid dir path"
    exit 1
fi

# maybe permsission denied or smth like that 
cd "$1" || exit 1

nbr_file=0

for file  in *
do
    if [[ -f "$file" ]]  
    then 
	case $file in 
	    *.conf | *.vhost ) 
		sed  -i.bak  -e 's/^Listen 80$/Listen 8080/' "$file"
		((nbr_file++))
		;;
	esac
    fi
done
