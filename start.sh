#!/bin/bash


# Read the chart names from the file
charts=($(cat array))

for chart in "${charts[@]}"; do
  # Download the chart
  helm pull "$chart" -d docs 
done

