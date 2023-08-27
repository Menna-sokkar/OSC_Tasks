#! /bin/bash

directory=$1
path=$2
count=$(find $path -name $directory | wc -l)

if [[ count -eq 1 ]]
then
	echo File exists $'\n'Contents of file1.txt:
	cat $path/$directory
else
	echo File does not exist
fi
