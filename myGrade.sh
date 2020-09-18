#!/bin/bash
#Author: Thi Kim Anh Huynh
#Date: 26/07/2020
#This is a calculator to calculate your final grade and final letter for a course

read -p "Enter Assignment mark (0 - 40): " assignment
read -p "Enter Test 1 mark (0 - 15): " test1
read -p "Enter Test 2 mark (0 - 15): " test2
read -p "Enter Final exam mark (0 - 30): " final

((total = $assignment + $test1 + $test2 + $final))


if [ $total -le 100 ] && [ $total -ge 90 ]
then
echo "Your final numeric grade is $total, and your final letter grade is A+"
elif [ $total -le 89 ] && [ $total -ge 85 ]
then
echo "Your final numeric grade is $total, and your final letter grade is A";
elif [ $total -le 84 ] && [ $total -ge 80 ]
then
echo "Your final numeric grade is $total, and your final letter grade is A-";
elif [ $total -le 79 ] && [ $total -ge 77 ]
then
echo "Your final numeric grade is $total, and your final letter grade is B+";
elif [ $total -le 76 ] && [ $total -ge 73 ] 
then
echo "Your final numeric grade is $total, and your final letter grade is B";
elif [ $total -le 72 ] && [ $total -ge 70 ]
then
echo "Your final numeric grade is $total, and your final letter grade is B-";
elif [ $total -le 69 ] && [ $total -ge 67 ]
then
echo "Your final numeric grade is $total, and your final letter grade is C+";
elif [ $total -le 66 ] && [ $total -ge 63 ]
then
echo "Your final numeric grade is $total, and your final letter grade is C";
elif [ $total -le 62 ] && [ $total -ge 60 ]
then
echo "Your final numeric grade is $total, and your final letter grade is C-";
elif [ $total -le 59 ] && [ $total -ge 57 ]
then
echo "Your final numeric grade is $total, and your final letter grade is D+";
elif [ $total -le 56 ] && [ $total -ge 53 ]
then
echo "Your final numeric grade is $total, and your final letter grade is D";
elif [ $total -le 52 ] && [ $total -ge 50 ]
then
echo "Your final numeric grade is $total, and your final letter grade is D-";
else
echo "Your final numeric grade is $total, and your final letter grade is F";
fi
