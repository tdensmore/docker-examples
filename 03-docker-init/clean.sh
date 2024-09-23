#!/usr/bin/env bash

## declare an array variable
declare -a files=("Dockerfile" ".dockerignore" "compose.yaml" "README.Docker.md")

## now loop through the above array
for file in "${files[@]}"; do
	echo "Removing $file"
	find . -name "$file" -type f -delete -print #&& echo "Removed $dir"
	# or do whatever with individual element of the array
done
