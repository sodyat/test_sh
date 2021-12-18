report_home_space () {
if [[ $(id -u) -eq 0 ]]; then 
cat <<- _EOF_
<h2> home space (all users)</h2>
<pre>$(du -sh /home/*) </pre>
_EOF_
else
cat <<- _EOF_
<h2> home space ($USER)</h2>
<pre> $(du -sch $HOME) </pre>
_EOF_
fi
return 

}



report_home_space 
