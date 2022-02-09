if [[ $# -eq 0 ]];then
	echo "no arguments supplied"
	exit 1 
elif [[ -z "$1" ]];then
	echo "wrong arguments(empty simbol)"
	exit 1
elif [[ -n "$1" ]];then
	echo "wrong arguments(symbol)"
	exit 1
elif (( $1 < 0 ));then
       echo "first argument is negative"
       exit 1
elif (( $2 < 0 ));then 
 	echo "second argument is negative"
	exit 1	
elif (( $3 < 0 ));then 
	echo "third argument is negative"
	exit 1
else
	echo "succes"
fi



PROGNAME=$(basename $0)
usage () {
	cat <<- EOF
	Usage: $PROGNAME PRINCIPAL INTEREST MONTHS
	where:
	Principal is the amount of the loan
	Interest is the ARP as a number (7% = 0.07)
	Months is the length of the loan's term.
EOF
}





if (($# != 3)); then
	usage 
	exit 1
fi

principal=$1
interest=$2
months=$3
err=0


bc <<- EOF
	scale = 10
	i = $interest / 12
	p = $principal 
	n = $months
	a = p * ((i * ((1 + i) ^ n)) / (((1 + i) ^ n) -1))
	print a, "\n"
EOF

