while read attr links owner group size date time filename; do
	cat <<- EOF
		filename: $filename
		size:	  $size
		owner:	  $owner
		group:	  $group
		modified: $date $time
		links:	  $links
		attributes: $attr 
	EOF
done < <(ls -l)	
	

