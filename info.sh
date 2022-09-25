#!/bin/bash


clear
echo "
please select:

1.Display system information
2.Display Disk Space
3.Display Home Space Utilization
4.Dispay Used and Free memory
0.Quit 
"

read -p "Enter selection [0-4] > "

if [[ $REPLY =~ ^[0-4]$ ]]; then 
	if [[ $REPLY == 0 ]]; then 
		echo "Program terminated"
		exit 
	fi
	if [[ $REPLY == 1 ]]; then
		echo "Hostname $HOSTNAME"
		uptime
		exit 
	fi
	if [[ $REPLY == 2 ]]; then
		df -h
		exit 
fi
if [[ $REPLY == 3 ]]; then
	if [[ $(id -u) -eq 0 ]]; then
		echo "Home space utilization (all users)"
		du -sch /home/ddavudov/*
	else
		echo "Home space utiliztion ($USER)"
		du -sch $HOME
		fi
		exit
fi
		if [[ $REPLY == 4 ]]; then
		echo "Memory space Free | Used | Swap"
		free -h 
		fi
		exit 
else
		echo "Invalid entry" >&2
		exit 1
fi
	
