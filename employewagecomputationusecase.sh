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

#FUNCTION TO GET WORK HOURS
function getWorkHours()
{
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
	echo $employeeHour
}

#FUNCTION TO CALCULATE WAGE
function calculateWage()
{
	employeeHour=$1
	wage=$(($employeeHour*$WAGE_PER_HOUR))
	echo $wage
}

#GET WORK HOUR FROM FUNCTION AND CALCULATE DAILY WAGE TILL CONDITION SATISFIED
while [[ $totalEmployeeHours -lt $NUMBER_OF_WORKING_HOURS && $totalWorkingDays -lt $NUMBER_OF_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	dailyWage[totalWorkingDays]=$(calculateWage $(getWorkHours))
	totalEmployeeHours=$(($totalEmployeeHours + $(getWorkHours)))
done

#PRINT SALARY FOR A MONTH
salary=$(($(calculateWage $totalEmployeeHours)))
echo "Daily wages: ${dailyWage[@]}"
echo "Total Wage:" $salary

