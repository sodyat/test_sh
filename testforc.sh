#!/bin/bash

#simple counter

report_home_space() {
	local format="%8s%10s%10%s\n"
	local i dir_list total_files total_dirs total_size user_name
	

	if [[ $(id -u) -eq 0 ]]; then
		dir_list=/home/*
		user_name="all users"
	else
		dir_list=$HOME
		user_name=$USER
	fi
	echo "<H2> Home Space Utilization ($user_name) </H2>"
	for i in $dir_list; do
		total_files=$(find $i -type f | wc -l)
		total_dirs=$(find $i -type d | wc -l)
		total_size=$(du -sh $i | cut -f 1)
		echo "<H3>$i</H3>"
		echo "<PRE>"
		printf "$format" "Dirs"  "Files" "Size"
		printf "$format" "---"   "---"  "---"
		printf "$format" $total_dirs $total_files $total_size 
		echo "</PRE>"
	done
	return
}


report_home_space
