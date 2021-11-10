x#!/bin/bash


isFullTime=1
isPartTime=2
empRatePerHr=25
randomCheck=$((RANDOM%3))


if [ $isFullTime -eq $randomCheck ]
then
   workingHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
   workingHrs=4
else
   workingHrs=0
fi


salary=$((workingHrs*empRatePerHr))


echo "Working Hours: " $workingHrs
echo "Salary is: " $salary
