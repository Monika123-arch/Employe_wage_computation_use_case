#!/bin/bash -x

echo "...................................Welcome to Employee Wage Computation..................................."

#CONSTANT
WAGE_PER_HOUR=20
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_HOUR_FULLTIME=8
EMPLOYEE_HOUR_PARTTIME=4
NUMBER_OF_WORKING_DAYS=20
NUMBER_OF_WORKING_HOURS=100

#VARIABLE
totalSalary=0
totalEmployeeHours=0
totalWorkingDays=0

#CALCULATE DAILY WAGE TILL CONDITION SATISFIED
while [[ $totalEmployeeHours -le $NUMBER_OF_WORKING_HOURS &&
			$totalWorkingDays -le $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
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
	totalEmployeeHours=$(($totalEmployeeHours + $employeeHour))
done

#PRINT SALARY FOR A MONTH
salary=$(($totalEmployeeHours * $WAGE_PER_HOUR))
