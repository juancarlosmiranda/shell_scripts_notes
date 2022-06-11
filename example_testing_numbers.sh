#!/bin/sh
USUARIO=${1:-`whoami`}
echo $USUARIO \n


#if [`test $USUARIO=$1`];
if [ $USUARIO=$1 ]; then
	echo parametro igual al usuario actual;
else
	echo NO LO ES;
fi

