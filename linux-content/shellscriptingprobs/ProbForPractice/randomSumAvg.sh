#!/bin/bash -x

randomCheck=$((RANDOM%99))

if [$randomCheck -ge 10]
then
	
echo $randomCheck
