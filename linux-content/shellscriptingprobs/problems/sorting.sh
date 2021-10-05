#!/bin/bash -x

read -p "Enter First Number: " a
read -p "Enter Second Number: " b
read -p "Enter Third Number:" c
result1=$(($a + $b * $c))
result2=$(($a * $b + $c))
result3=$(($c +$a / $b))
result4=$(($a % $b + $c))

declare -a results 
results[a+b*c]="$result1"
results[a*b+c]="$result2"
results[c+a/b]="$result3"
results[a%b+c]="$result4"

echo "All Values" ${results[@]}


echo -n "All values in ascending order: " ${results[@]}


echo -r "All values in descending order: " ${results[@]}
