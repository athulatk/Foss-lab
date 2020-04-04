#!/bin/bash

if [[ $# -ne 2 ]]
then
    	echo "Two arguments are required!!!"
        exit
fi

if cmp -s $1 $2;
then
	printf "%s\n%s\n" "Identical files!!!" "$2 is deleted!!!"
        rm $2

else
	printf "%s %s\n" "$1 and $2 have different contents.."
fi
