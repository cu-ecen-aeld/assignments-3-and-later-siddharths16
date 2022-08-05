#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Illegal agruments"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]; then
    echo "$filedir is not directory!"
    exit 1
fi

numFiles=$(find $filesdir -type f | wc -l)
numMatch=$(grep -r "$searchstr" $filesdir | wc -l)

echo "The number of files are $numFiles and the number of matching lines are $numMatch"
