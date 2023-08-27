#! /bin/bash

ext=$1
name=$2
count=1

for file in *.$ext 
do
	if [[ -f $file ]]
	then
		mv $file $name$count.$ext
		count=$((count+1))
	fi
done
