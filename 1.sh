#!/bin/bash

if [[ $# -eq 0 ]]
then
	echo "Argument (filename) is required!!!"
	exit
fi
printf "%s\t%s\t%s\t%s\n" "PERMISSION" "FILE SIZE" "LAST MODIFIED ON" "FILENAME"
for file in "$@"
do
	ls -l -h | grep '\b'$file'\b' | while read perm u ow gpw size month day time1 filename
	do
		printf "%s\t%s\t\t%s %s %s \t\t%s\t\t\t%s\t\t\t\t%s\n" "$perm" "$size" "$month" "$day" "$time1" "$filename"
	done
done
