# for i in {1..20}
# do

#  if [ $((i % 2)) -eq 0 ]; then
#   echo " print $i this are the even number"
#  else
#   echo " odd number "
#  fi  
# done






echo "Enter a number:"
read N

i=1
sum=0

while [ $i -le $N ]
do
    sum=$((sum + i))
    i=$((i + 1))
done

echo "Sum from 1 to $N is: $sum"