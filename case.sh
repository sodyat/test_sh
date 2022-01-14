#! /bin/bash

clear 
echo "
Please select:


1.Display System information 
2.Display Disk Space
3.Display Home Space Utilization 
0.Quit	

"
read -p "Enter Selection [0-3] >"



case $REPLY in 
0)	echo "Program terminated"
	exit 
	;;
1)	echo "Hostname: $HOSTNAME"
	uptime
	;;
2)	if [[ $(id -u) -eq 0 ]]; then 
	echo "Home Space Utilization ($USER)"
	du -sch /home/*
	fi
	;;
*)	echo "Invalid Entry" >&2
	exit 1
	;;
esac	
