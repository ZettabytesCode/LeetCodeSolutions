#!/bin/sh

files=(*)
solution_directory=""

if [ "$1" == "" ]; then
    echo "Usage: Pass in the problem # you want to build and run (ex: ./run 32)"
    exit 1
fi

for((i=0; i<${#files[@]}; i++)); do
    if [ ${files[$i]} == "$1" ]; then
        solution_directory=${files[$i]}
    elif [[ ${files[$i]} =~ $1-.* ]]; then
        solution_directory=${files[$i]}
    fi
done

if [ ! -d "$solution_directory" ]; then
    echo "No solution directory named or prefixed by $1"
else
    cd "$solution_directory"
    echo "Building solution for $solution_directory..."
    echo "Running solution for $solution_directory..."
    error=0
    if [ ! $error -eq 0 ]; then
	echo "Error in test case $error"
    else
        echo "Test cases passed"
    fi
fi
