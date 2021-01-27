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
if [ $randomShiftCheck -eq $IS_FULL_TIME ]
then
	employeeHour=$((EMPLOYEE_HOUR_FULLTIME))
elif [ $randomShiftCheck -eq $IS_PART_TIME ]
then
	employeeHour=$((EMPLOYEE_HOUR_PARTTIME))
else
	employeeHour=0
fi

#PRINT SALARY
salary=$(($employeeHour*$WAGE_PER_HOUR))
