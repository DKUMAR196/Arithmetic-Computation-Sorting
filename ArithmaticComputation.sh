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
for arr_ref in "${names[@]}"; do
    arr[cnt]=${res[$arr_ref]}
    ((cnt++))
done

echo "values in array arr = ${arr[@]}"
