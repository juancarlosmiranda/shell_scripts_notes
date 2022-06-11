#!/bin/bash
set -e
my_selected_option='option_1'
my_number_option=2

echo '$@->'$@
echo '$?->'$?
echo '$0->'$0

file='example_if.sh'
if [ -f $file ]
then
	echo "is a file"
fi

case $my_number_option in
	1)
	echo "1->"
	;;
	2)
	echo "2->"
	;;	
	*)
	echo "Any option->"
	;;	
esac
