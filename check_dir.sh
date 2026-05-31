#!/bin/bash

if [[ $# != 1 ]]
then 
    echo "[USAGE]: give directory name "
    exit 1
elif [[ -d $1 ]]
then
    echo "Directory \"$1\" already exists"
    exit 0
else
then
    if mkdir $1
    then 
	echo "Success to create directory $1"
	exit 0
    else 
	echo "Failed to create directory $1"
	exit 1
    fi	
fi
