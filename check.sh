####
#!/bin/bash 
#test-file: check file 


FILE=~/.bashrc    

if [[ -e "$FILE" ]]; then 
		if [ -f "$FILE" ]; then
			echo "$FILE  is a  regular file"
		fi
else 
		echo "$FILE does not exist"
		exit 1
fi
exit 
