#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Illegal number of parameters."
    exit 1
fi

writefile=$1
writestr=$2

if [ -f "$writefile" ]; then
    rm -rf $writefile
fi

echo $writestr > $writefile

if [ ! -f "$writefile" ]; then
    echo "Not able to open file"
    exit 1
fi

exit 0






