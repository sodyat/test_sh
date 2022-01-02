DELAY=3 


while true; do 
clear 
cat <<- _EOF_
please select:


1.Display System information
2.Display Disk Space
3.Disk home space Utilization 


_EOF_


read -p "Enter selection [0-3] >" 


if [[ $REPLY =~ ^[0-3]$ ]]; then
if [[ $REPLY == 1 ]]; then 
echo "Hostname: $HOSTNAME"
uptime
sleep $DELAY
continue
fi
if [[ $REPLY == 2 ]]; then 
df -h 
sleep $DELAY
continue
fi
if [[ $REPLY == 2 ]]; then
df -h 
sleep  $DELAY
continue
fi 
if [[ $REPLY == 3 ]]; then 
if [[ $(id -u) -eq 0 ]]; then
echo " Home Space Utilization (All Users)"
du -sch /home/*
elif [[ $REPLY -ne 0 ]]; then 
sudo du -sch /home/* 
exit
else
echo "Home space Utilization ($USER)"
du -sch $HOME
fi 
sleep  $DELAY
continue 
fi
if [[ $REPLY == 0 ]]; then 
break
fi 
if [[ $REPLY == 0 ]]; then 
break
fi
else 
echo "Invalid entry"
fi 
done 
echo "Program terminated"
