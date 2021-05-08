#!/usr/bin/bash

REZULTAT=$(nmcli g | grep -o "disconnected")

if [ -z $REZULTAT ]
	then 
		echo ""
	else
		echo ""
fi
		
exit 0	
