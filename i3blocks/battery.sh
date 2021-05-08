#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9]*%')

PUNI_SE=$(acpi | grep -o 'Charging')

if [ -z $PUNI_SE ]
	then
		echo " $BAT"
	else
		echo " $BAT"
fi

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
