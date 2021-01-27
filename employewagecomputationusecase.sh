#!/bin/bash -x

echo "...................................Welcome to Employee Wage Computation..................................."

#CONSTANT
IS_PRESENT=1

#CHECK EMPLOYEE IS PRESENT OR ABSENT
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq $IS_PRESENT ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
