#signal processing 
exit_on_signal_SIGINT() {
	echo "script interrupted" 2>&1
	exit 0
}

exit_on_signal_SIGTER() {
	echo "script terminated" 2>&1
	exit 0
}


trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTER SIGTERM


for i in {1..5}; do
	echo "iteration $i of 5"
	sleep 5
done 

