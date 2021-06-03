echo "Enter space seperated a, b and c"
read a b c
cnt=0
declare -A res
res['a+b*c']=$(($a+$b*$c))
res['c+a/b']=$(($c+$a/$b))
res['a*b+c']=$(($a*$b+$c))
res['a%b+c']=$(($a%$b+$c))
echo "Results of computation =${res[*]}"
names=("${!res[@]}")
for i  in "${names[@]}"; do
    arr[cnt]=${res[$i]}
    ((cnt++))
done
temp=0
for (( i=0;i<4;i++ ))
do
   for (( j=$i+1;j<4;j++ ))
   do
      if [ "${arr[$i]}" -gt "${arr[$j]}" ]
       then
           temp=${arr[$i]}
           arr[$i]=${arr[$j]}
           arr[$j]=$temp
       fi
    done
done
echo "Array in Ascending order= ${arr[@]}"
