#!/bin/bash

title="system information report for $HOSTNAME" 
current_time=$(date + "%x %r %z")
time_stamp="generated $current_time, by $USER"


report_uptime() {
echo "Function report_uptime executed"
return
}


report_disk_space() {
echo "Function report_disk_space executed"
return 
}


report_home_space () {
echo "Function report_home_sapce executed"
return 
}


cat << _EOF_
<html>
<head>
<title>$title</title>
</head>
<body>
<h1>$title</h1>
<p>$time_stamp</p>
$(report_uptime)
$(report_disk_space)
$(report_home_space)
</body>
</html>
_EOF_
