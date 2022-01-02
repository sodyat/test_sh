echo "
Please select:

1.Display system information
2.Display Disk space
3.Displa Home space utilization 
0.quit 
"


read -p "Enter selection  [0-3] > "

if test $REPLY -eq 0 | test $REPLY -eq 2; then  
if test $REPLY -eq  0; then 
echo "Program terminated"
exit 
fi
if test $REPLY -eq 1; then 
echo "Hostname: $HOSTNAME"
uptime
exit
fi 
if test $REPLY -eq 2; then 
df -h
exit
fi
if test $REPLY -eq 3; then 
if test $(id -u) -eq 0; then
echo "Home space utilization (All users)"
du -sch /home/*
else 
echo "Home space utilization ($USER)"
du -sch $HOME
fi 
exit
fi 
else 
echo "Invalid entry" >&2 
exit 1
fi  
