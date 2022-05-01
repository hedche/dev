#!/bin/bash
#This script will be used as an alias to add a visual representation of a standard copy

total=$(du -sb $1 | awk {'print $1'})

absolute1=$(echo "$(cd "$(dirname "$1")"; pwd)/$(basename "$1")")

absolute2=$(echo "$(cd "$(dirname "$2")"; pwd)/$(basename "$2")")

IFS='/' read -r -a lastdir <<< $absolute1

length=$(echo ${#lastdir[@]})
#if [ "${lastdir[$length]}" == ".." ]; then
#	length=$(($length-2))
#	echo $length
#	echo ${lastdir[$length]}
#else	
	((length--))
#fi

if [ -d $1 ]; then
	cp -r $1 $2
	echo "Folder"
else
	cp $1 $2
	echo "File"
fi

current=$(du -sb "$absolute2/${lastdir[$length]}" | awk {'print $1'})
echo $total
echo $current
while [ $current -lt $total ]; do
	sleep 1
	current=$(du -sb $1 | awk {'print $1'})
	echo $current
done
