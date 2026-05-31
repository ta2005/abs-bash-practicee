#!/bin/bash

SUFFIX="log"
filename=${1?"Give a Filename"}

if [[ ! $filename =~ ^[0-9]{4}-BACKUP.*\.log$ ]]; then 
    echo "Error: Filename does not match format."
    exit 1 
fi

year="${filename:0:4}"

echo "Year: $year"
echo "Without Extension: ${filename%."$SUFFIX"}"
echo "Data Only: ${filename#"$year"-}"
echo "New Label: ${filename/BACKUP/ARCHIVE}"
