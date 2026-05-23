#!/bin/bash

# I will start with simple scripts 
# expects one arguments from the use and prints it

if [[ $# != 1 ]] 
then
    echo "expected one argument got $#"
    exit 1
fi

USER_INPUT=$1

echo "Script name $0"
echo "Number of Arguments: $#"
echo "Processing the input: \"$USER_INPUT\""
