#!/bin/bash


clear 
echo "
Please Select:


1.Display System information
2.Display Disk Space
3.Display Home Space Utilization
0.Quit 
"


read -p "Enter selection [0-3]"

if test $REPLY -ge 0 && $REPLY -eq   ;then  
	if echo $REPLY | grep "^[0-4]$" | test $REPLY -eq 0;then
	echo "program termianted"
	fi
else 	
	echo "Invalid entry" >&2 
	exit 1
fi


