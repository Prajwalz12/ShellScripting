#!/bin/bash -x

a=1
b=7
in=`expr $b - $a`

DiceNumber1=$((RANDOM%$in));
DiceNumber2=$((RANDOM%$in));

Result=$(( $DiceNumber1 + $DiceNumber2 ));

