#!/bin/bash
#Lab 9
#Student name: Thi Kim Anh Huynh
#Student number: 040968024
#Section 310
#Name of the script file: mycalc.sh
#Date: 28/07/2020
#This program does some basic calculation such as addition, subtraction

function add () 
{
	((result = $1 + $2))
	echo "The sum of $1 plus $2 equals $result"
}

function subtract () 
{
	((result = $1 - $2))
	echo "The $1 subtract by $2 is $result"
}

function menu1 ()
{
	choice=n
	while [ $choice != "X" ] && [ $choice != "x" ]
	do
		echo "C) Calculation"
		echo "X) Exit"

	read choice
	if [ $choice = "C" ] || [ $choice = "c" ]
	then
	      	menu2
		choice=x
	elif [ $choice = "X" ] || [ $choice = "x" ]
	then
		echo "Goodbye!"
	else 
		echo "Invalid input!!"
	fi
	done
}

function menu2 ()
{
	echo "Please enter an integer or X to exit: "
	choice=n
	while [ $choice != "X" ] && [ $choice != "x" ]
	do
	read choice
	if [ $choice = "X" ] || [ $choice = "x" ]
	then 
		echo "Goodbye!"
	else 
		menu3 $choice
		choice=x
	fi
	done
}

function menu3 ()
{
	echo "+) Add"
	echo "-) Subtract"
	echo "X) Exit"
	choice=n
	while [ $choice != "X" ] && [ $choice != "x" ]
	do
		read choice
	if [ $choice = "+" ]
	then
		echo "Enter second number: "
		read next
		add $1 $next
	elif [ $choice = "-" ]
	then
		echo "Enter second number: "
		read next
		subtract $1 $next
	fi
	menu1
	choice=x
	done
}

if [ $# -eq 3 ]
then
	if [ $2 = "+" ]
	then
	add $1 $3

	elif [ $2="-" ]
	then
	subtract $1 $3

	else
	echo "Invalid input!!!"
	fi

elif [ $# -eq 0 ]
then
	menu1
else
echo "Invalid input!!!"
fi
