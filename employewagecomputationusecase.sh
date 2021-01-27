#!/bin/bash -x

echo "...................................Welcome to Employee Wage Computation..................................."

#CONSTANT
IS_PRESENT=1
WAGE_PER_HOUR=20

#CHECK EMPLOYEE IS PRESENT OR ABSENT
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq $IS_PRESENT ]
then
	echo "Employee is Present"
	employeeHour=8
else
	echo "Employee is Absent"
	employeeHour=0
fi
salary=$(($employeeHour*$WAGE_PER_HOUR))
echo "Salary =" $salary
