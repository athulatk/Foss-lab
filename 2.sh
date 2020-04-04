#!/bin/bash

if [[ $# -ne 2 ]]
then
	echo "Comparison requires two arguments!!!"
	exit
fi

dir2=`basename $2`

diff $1 $2 | grep -w "$dir2" | awk -F ": " '{print $2}' >> b.temp

while read each
do
	cp -r "$2/$each" $1

done < b.temp

rm b.temp
