#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
  echo "Usage: ./gencsv.sh <start_index> <end_index>"
  exit 1
fi

start=$1
end=$2
output="inputFile"

# Generate the file with index and random numbers
> $output
for (( i=$start; i<=$end; i++ )); do
  echo "$i, $(( RANDOM % 1000 ))" >> $output
done

echo "Generated $output with indices from $start to $end."

