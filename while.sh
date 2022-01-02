#while-count output sequence of numbers 

count=0 


while [ $count -le 5 ]; do 
echo  $count 
count=$((count + 1))
done 
echo "Finished"

