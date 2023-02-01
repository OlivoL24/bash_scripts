#!/usr/bin/env bash

# Create a report file for a single shipping container
# Author: Larry Olivo

# if [[ ! $input_file ]]; then
#     echo "Error: Input file not configured"
#     exit 1
# fi

# if [[ ! -e $input_file ]]; then
#     echo "Error: Input file $input_file does not exist"
#     exit 1
# fi

if [[ ! $1 ]]; then
    echo "Error: Missing Parameter: container name"
    exit 1
fi
container="$1"

if [[ $2 ]]; then
    directory="$2"
else
    directory="./reports"
fi

mkdir -p -- "$directory"
if grep -- "$container" shipments.csv > /dev/null
then
    grep -- "$container" shipments.csv > "$directory/${container}_report.csv"
    echo "Wrote Report $directory/${container}_report.csv"
else
    echo "Container $container not found in shipment.csv"
fi