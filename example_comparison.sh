#!/bin/sh
user_name=`whoami`
echo "$user_name \n"

parameter_received=${1:-"vacio"}

if [ $user_name = $parameter_received ]; then
	echo "The received parameter is equal to the current user";
else
	echo "The received parameter is not equal to the current user";
fi


case "$parameter_received" in
	"crazzy")
		echo "crazzy";
	;;
	"usuario")
		echo $user_name;
	;;
	"empty")
		echo "empty";
	;;
	*) 
		echo default;
	;;
esac

