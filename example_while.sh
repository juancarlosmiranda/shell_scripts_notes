#!/bin/bash
set -e
LAST_NUMBER=10
COUNTER_INDEX=1
while [ $COUNTER_INDEX -le $LAST_NUMBER ]
do
	echo $COUNTER_INDEX
	COUNTER_INDEX=`expr $COUNTER_INDEX + 1`
done