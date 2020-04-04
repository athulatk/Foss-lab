
#!/bin/bash

if [[ $# -ne 1 ]]
then
    	echo "Enter filename as argument!!"
        exit
fi

sym=0
vow=0
bs=$(grep -o ' ' $1 | wc -l )
char=$(cat $1 | wc -c)
lines=$(cat $1 | wc -l)
while read -n1 c
do
	if [[ $c == *[aAeEiIoOuU]*  ]]
	then
		((vow++))

	elif [[ $c == *['!'@\;\:#\$%^\&*()_+,]*  ]]
	then
		((sym++))
	fi
done < $1
echo "Number of vowels : $vow"
echo "Number of blank spaces : $bs"
echo "Number of characters : $char"
echo "Number of lines : $lines"
echo "Number of symbols : $sym"

