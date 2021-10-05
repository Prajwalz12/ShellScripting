#!/bin/bash -x

read -p "Enter any number:" a
result=1
for ((i=1;i<=a;i++));
do
	result=$(( $result * $i ))

echo $result
done
