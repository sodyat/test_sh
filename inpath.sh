#!/bin/bash
inpath - checks if the path to the program is valid 
or checks access in the catalog from PATH list 



in_path()
{

#get  command and path, try to find command. Return 0, if command find and being executable file; 1 - if not.



cmd=$1
ourpath=$2
result=1
oldIFS=$IFS
IFS=":"

for directory in "$ourpath"
do
  if [ -x $directory/$cmd ] ; then 
	result=0 #if we are here, command found 
  fi
done


IFS=$oldIFS
return $result 
}


checkForCmdInPath() {
var=$1


if [ "$var" != "" ] ; then 
  if [ "${var:0:1}" = "/" ]; then
     if [ ! -x $var ]; then 
	    return 1
     fi
elif ! in_path $var "$PATH"; then 
       return 2
  fi 
fi 
}



if [ $# -ne 1 ] ; then
	echo "Usage: $0 command" >&2
	exit 1
fi

checkForCmdInPath "$1"
case $? in
	0) echo "$1 found in PATH" ;;
	1) echo "$1 not found or not executable" ;;
	2) echo "$1 not found in PATH" ;;
esac 
exit 0

