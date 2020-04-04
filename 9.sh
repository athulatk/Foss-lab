
#!/bin/bash

if [ $# -eq 0 ]
then
        echo "Arguments missing!!!"
exit
fi

echo "Enter the word to search"
printf "\n"
read word

for file in $@
do
        sed -i '/'$word'/d' $file
done

printf "The lines containing the word '$word' are deleted from the given file\n"

