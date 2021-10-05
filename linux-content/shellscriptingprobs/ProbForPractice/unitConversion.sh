#!/bin/bash -x

feet=12
inch=42
if [ $feet -eq 12 ]
then
	result=$(($inch / $feet))
else
	result=0
fi
