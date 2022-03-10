while read attr links size owner filename; do
	cat <<- EOF
	Filname: $filename
	size:	 $size
	attr:	 $attr
	links:	 $links 
	owner:	 $owner
	EOF
done < <(ls -l)
