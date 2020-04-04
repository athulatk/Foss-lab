
#!/bin/bash

if [[ $# -ne 1 ]]
then
    	echo "Enter filename  as argument"
        exit
fi

ni=`wc -l $1 | cut -d " " -f 1`
p=1

while [ $p -le $ni ]
do
    line=`sed -n "$p p" $1`
    cc=`echo $line | wc -c | cut -d " " -f 1`
    while [ $cc -ge 40 ]
    do
        e=`echo $line | cut -c 41-`
        line=`echo $line | cut -c 1-40`
        echo "$line \\"
        line=$e
        cc=`echo $e | wc -c | cut -d " " -f 1`
    done
echo "$line"
p=`expr $p + 1`
done
