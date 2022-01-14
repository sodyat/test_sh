#!/bin/bash

clear 
echo "

Please select:

A.Display systemm information
B.Display disk space
C.Display Home space utilization 
Q.Quit 
"

read -p "Enter selectio [A, B, C or Q] > "


case $REPLY in

q|Q) echo "Program terminated"
exit 
;;

a|A) echo "Hostname: $HOSTNAME"
uptime
;;

b|B) df -h
;;

c|C) if [[ $(id -u) -eq 0 ]]; then
echo "Home Space Utilzation (All users)"
du -sch /home/*

else
echo "Home Space Utiliztion $(USER)"
du -sch $HOME
fi 
;;


*) echo "Invalid entry" >&2
exit 1
;;


esac
