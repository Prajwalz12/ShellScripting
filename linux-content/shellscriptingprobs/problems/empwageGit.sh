#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
max_hrs_in_month=100;
Num_working_days=20;

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkingHrs( ) {

case $empCheck in
        $isFullTime)
                empHrs=8
                ;;
        $isPartTime)
                empHrs=4
                ;;
        *)
        empHrs=0
		;;
	esac
	echo $empHrs
}

while [[ $totalEmpHrs -lt $max_hrs_in_month &&
	 $totalWorkingDays -lt $Num_working_days ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHrs="$( getWorkingHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalSalary=$(($totalEmpHrs*empRatePerHr))
echo ${dailyWage[@]}
