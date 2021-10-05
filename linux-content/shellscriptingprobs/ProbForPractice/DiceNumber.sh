#!/bin/bash -x

a=1
b=7
in=`expr $b - $a`

DiceNumber=$((RANDOM%$in));

echo $DiceNumber


