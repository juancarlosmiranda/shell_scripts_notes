#!/bin/bash
set -e
my_selected_option='option_1'
my_number_option=2

if [ $my_selected_option = 'option_1' ]
then
	echo "Win!!";
fi

if [ $my_number_option = 1 ]
then
	echo "True number!!";
else
	echo "Else number!!";
fi
