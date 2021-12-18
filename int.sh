#!/bin/bash 

invalid_input () {
	echo "invalid input '$REPLY'" >&2
	exit 1
}


read -p "Enter a single item > "


#empty input
[[ -z $REPLY ]] && invalid_input

(( $(echo  $REPLY | wc -w ) > 1 )) && invalid_input 


if [[ $REPLY =~ ^[-[:alnum:]\._]+$ ]]; then 
	echo "'$REPLY' is a valid filename"
	if [[ -e $REPLY ]]; then
		echo "And file '$REPLY' exists"
else
	echo "however, file '$REPLY' does not exits"
fi 

#input real number ?
if [[ $REPLY =~ ^-?[[:digit:]]*\.[[:digit:]]+$ ]]; then 
	echo "'$REPLY' is a floating point number"
else 
	echo "'$REPLY' is not floating point number"
fi

#input the number ?
if [[ $REPLY =~ ^-?[[:digit:]]+$ ]]; then 
       echo "'$REPLY' is an integer" 
else 
       echo "'$REPLY' is not an integer"
fi

else 

	echo "The string '$REPLY' is not a valid filename"
fi 
	

