
#!/bin/bash

if [[ $# -ne 1 ]]
then
    	echo "Enter filename as argument.."
        exit
fi

printf "%s\n" "Original text file $1 : "
cat $1
printf "\n"
sort -u $1 -o $1
printf "%s\n" "Text file $1 after removing duplicate lines : "
cat $1
printf "\n"
