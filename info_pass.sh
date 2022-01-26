usage () {
	echo "$PROGNAME:  usage: $PROGNAME [-f file  | -i]"
	return
}

#proccesing parameters of string 



interactive=
filename=


while [[ -n $1 ]]; do 
	case $1 in 
	-f) shift 
       	    filename=$1
    	    ;;
    	-i)  interactive=1
	    ;;
    	-h) usage 
	    exit
            ;;
	*)  usage >&2
    	    exit 1
            ;;
	esac
	shift 
done 	



if [[ -n $interactive ]]; then  
	while true; do
		read -p "Enter name of output file: " filename 
		if [[ -e $filename ]]; then
			read -p "'$filename' exists. Overwrite? [y/n/q] >"
		case $REPLY in 
			Y|y)	break
			        ;;
			Q|q)	echo "Program terminated"
				exit
				;;
			*)	continue
				;;
		esac 
	elif [[ -z $filename ]]; then 
		continue
	else 
		break 
		fi
	done
fi	
			


write_html_page () {
	cat <<- _EOF_
	<HTML> 
		<HEAD>
		<TITLE> $TITLE</TITLE>
		</HEAD>
	<BODY>
	<H1>$TITILE</H1>
	<P>$TIME_STAMP</P>
	$(uptime)
	$(df -h)
	$(du -sch *) 
	</BODY>
	</HTML>
	_EOF_
	return 

}


# output html page 



if [[ -n $filename ]]; then 
	if touch $filename && [[ -f $filename ]]; then
		write_html_page > $filename 
	else 
		echo "$PROGNAME: Cannot write file '$filename'" >&2
	fi
else
	write_html_page
fi 

