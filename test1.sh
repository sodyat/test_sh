#read-menu




echo " 
Please Select:

1.Display System Information
2.Display Disk Space 
3.Display Home Space Utilization 
0.Quit 
"


read -p "Enter selection [0-3] > "

if test $REPLY -eq 0; then
echo "Program terminated"
exit
elif test $REPLY -eq 1; then 
echo "Hostname: $HOSTNAME" 
exit 
elif test $REPLY -eq 2; then
echo "Home Space Utilization (All Users)"
du -sch /Users/yat/*
exit
elif test $REPLY -eq 3; then 
echo "Home space utilization ($USER)"
du -sch $HOME
exit
else 
echo "indalid entry" >&2
exit 1
fi 

