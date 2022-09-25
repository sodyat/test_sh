while true
do
echo "enter your name:" 
read  name 
echo "enter your age:"
read age



if 	[[  -z $name ]]
then 
	echo "bye"; exit

elif	[[ $age -eq  0 ]]
then
echo	echo "bye"; exit 
elif [[ $age  -le 16 ]]
then
	echo "$name, your group is child"
elif [[ $age -ge 17 && $age -le 25 ]]
then
	echo "$name, your group  is youth"
elif [[ $age -gt 25 ]]
then 
	echo "$name, your group is adult"
fi
done





