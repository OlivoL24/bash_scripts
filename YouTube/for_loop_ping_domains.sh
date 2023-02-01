#!/bin/bash

if [[ ! $1 ]]; then
    echo "Error: Missing Parameter: Enter hosts as arguments"
    exit 1
fi

if [[ -f "$1" ]]; then
        while read -r line; do
        echo $line
        done < $1
else
    for arg;
    do
        if ping -q -c 5 -W 1 $arg > /dev/null; then
            echo "$arg is up"
        else
            echo "$arg is down"
        fi
    done
fi

