#!/bin/bash

# Add the chart repository
helm repo add "$name" "$repo"

# Update the chart repository index
helm repo update "$name"

# Search for charts in the repository
output=$(helm search repo "$name")

# Extract the chart names from the search output and store them in an array
charts=($(echo "$output" | awk '{print $1}' | grep -v NAME))

# Store the chart names in a file
printf '%s\n' "${charts[@]}" >> array

