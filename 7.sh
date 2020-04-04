
#!/bin/bash

echo "Files with read, write and execute permissions: "
printf "\n"
ls -l | grep -v "total" |
while read perm us own grp size month date time1 filename
do
	pe=$(echo "$perm" | head -c 4)
	if [ "$pe" == "-rwx" ]
	then
		echo "$filename"
	fi
done
