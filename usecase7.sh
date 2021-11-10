

#!/bin/bash -x


#Constants
IS_FULL_TIME=1
IS_PART_TIME=2
EMP_RATE_PER_HOUR=25
TOTAL_WORKING_DAYS=5
MAX_HOURS_IN_MONTH=20


#Variables
totalEmpHrs=0
totalWorkingDays=1
totalSalary=0


function getWorkingHours() {
   empCheck=$((RANDOM%3))


   case $empCheck in
      $IS_FULL_TIME) workingHrs=8 ;;
      $IS_PART_TIME) workingHrs=4 ;;
      *) workingHrs=0
   esac
}


while [[ $totalEmpHrs -lt $MAX_HOURS_IN_MONTH
      && $totalWorkingDays -le $TOTAL_WORKING_DAYS ]]
do


   getWorkingHours


   ((totalWorkingDays++))
   totalEmpHrs=$((totalEmpHrs+workingHrs))
done


totalSalary=$((totalEmpHrs*EMP_RATE_PER_HOUR))


echo "Total Working Days: " $totalWorkingDays
echo "Total Working Hours: " $totalEmpHrs
echo "Monthly Salary is: " $totalSalary
