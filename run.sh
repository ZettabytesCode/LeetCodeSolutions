#! /bin/sh

if [ ! -d "$1" ]; then
    echo "No solution directory named $1"
else
    echo "Building solution for $1..."
    echo "Running solution for $1..."
    error=0
    if [ $error -eq 0]; then
	echo "Error in test case $error"
    else
        echo "Test cases passed"
    fi
fi
