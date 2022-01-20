file_info () {
	#file_info: function for output information
	if [[ -e $1 ]]; then 
		echo -e "\nFile type"
		file $1
		echo -e "\nFile status"
		stat $1
	else 
		echo "$FUNCNAME: usage: $FUNCNAME file" >&2
		return 1
	fi
}


file_info 
