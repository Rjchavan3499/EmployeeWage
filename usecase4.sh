#!/bin/bash


isFullTime=1
isPartTime=2
empRatePerHr=25
randomCheck=$((RANDOM%3))


case $randomCheck in
   $isFullTime) workingHrs=8 ;;
   $isPartTime) workingHrs=4 ;;
   *) workingHrs=0
esac


salary=$((workingHrs*empRatePerHr))


echo "Working Hours: " $workingHrs
echo "Salary is: " $salary
