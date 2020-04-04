#!/bin/bash

if [[ $# -ne 2 ]]
then
    	echo "Two arguments are required!!!"
        exit
fi

perm1=$(ls -l | grep $1 | head -c 10)
perm2=$(ls -l | grep $2 | head -c 10)

if [ "$perm1" == "$perm2" ];
then 
	printf "%s\n" "The common permission of both files is $perm1"
else 
	printf "%s\n" "The permission of $1 is $perm1 "
	printf "%s\n" "The permission of $2 is $perm2"
	printf "%s\n" "Both files have different permissions"
fi

