#!/bin/bash

BAT=$(acpi -b | grep -E -o '[0-9]*%')

NEPUNI_SE=$(acpi | grep -o 'Discharging')

if [ -z $NEPUNI_SE ]
	then
		echo " $BAT"
	else
		echo " $BAT"
fi

# Set urgent flag below 5% or use orange below 20%
[ ${BAT%?} -le 5 ] && exit 33
[ ${BAT%?} -le 20 ] && echo "#FF8000"

exit 0
