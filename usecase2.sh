#!/bin/bash



isPresent=1
randomCheck=$((RANDOM%2))


if [ $isPresent -eq $randomCheck ]
then
   empRatePerHr=30
   workingHrs=8
   salary=$((empRatePerHr*workingHrs))
else
   salary=0
fi

echo "Salary is: " $salary
