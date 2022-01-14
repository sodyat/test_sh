#!/bin/bash -x 
#test-file: check file 



dir_name=remD
if [[ -d $dir_name ]]; then
if cd $dir_name; then 
rm *
else
echo "cannot cd to '$dir_name'" >&2
exit 1 
fi
else 
echo "no such directory: '$dir_name'" >&2
exit 1
fi
exit 


