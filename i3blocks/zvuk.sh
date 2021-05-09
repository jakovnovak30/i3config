#!/usr/bin/bash

MUTANI=$(amixer sget Master | grep 'Left' | grep -o 'off' )
GLASNOCA=$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))

if [ -z $MUTANI ]
	then
		echo "" $GLASNOCA
	else
		echo "" $GLASNOCA
fi

exit 0
