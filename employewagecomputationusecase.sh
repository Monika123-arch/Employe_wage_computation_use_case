#!/bin/bash -x

echo "...................................Welcome to Employee Wage Computation..................................."

#CONSTANT
WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4

#CHECK EMPLOYEE IS PRESENT OR ABSENT
randomShiftCheck=$((RANDOM%3))


case $randomShiftCheck in

	$IS_FULL_TIME )
		employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
		;;
	$IS_PART_TIME )
		employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
		;;
	* )
		employeeHour=0
		;;
esac

#PRINT SALARY
salary=$(($employeeHour*$WAGE_PER_HOUR))
