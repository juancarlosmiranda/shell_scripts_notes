#!/bin/bash
FILE_LIST=`ls -d *`
# list file in folder
for a_file in $FILE_LIST ; do
	echo "$a_file --> ";
done
