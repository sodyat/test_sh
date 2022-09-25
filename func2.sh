files_creator() {
	file_name=$1/$2
	if [[ ! -e $1 ]]; then 
		echo "Dir is not exist, creating $1"
		mkdir $1 
	elif 
		[[ ! -d $1  ]]; then 
		echo "$1 is not dir, exiting "
		exit 1 
	fi 
	touch $1/$2
}

again="yes"
while [[ $again == "yes" ]]; do 
	read -p "enter dir and file names" dir_name file_name 
	files_creator $dir_name $file_name 
	if [[ -f $full_name ]]; then echo "Created $full_name"; fi
	read -p "again? (yes/no): " again 
done

fix
fix2
fix3
