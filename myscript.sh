#!/bin/bash
#Author: Anh Huynh
#Name of the script file: myscript.sh
#Date: 28/07/2020
#This is a prorgam tool for user to create, delete account, change group, login shell, etc. by promting information like usename, group name, etc., and the program will implement their choice.

choice=n

while [ $choice != "Q" ] && [ $choice != "q" ]
do
echo "Choose one of the following options: " 
echo "A to Create a user account"
echo "B to Delete a user account"
echo "C to Change Supplementary Group for a user account"
echo "D to Change Initial Group for a user account"
echo "E to Change default login shell for a user account"
echo "F to change account expiration date for a user account"
echo "Q to Quit"
read -p "What would you like to do? " choice

echo "You have entered $choice ";
sleep 3

if [[ $choice = "A" ]] || [[ $choice = "a" ]]
then
read -p "Enter Username: " username
read -p "Enter User's home directory: " directory
read -p "Enter Default login shell: " shell
sudo useradd -d $directory -s $shell -m $username

elif [[ $choice = "B" ]] || [[ $choice = "b" ]]
then
read -p "Enter Username you want to delete: " deleteusername
sudo userdel -r $deleteusername

elif [[ $choice = "C" ]] || [[ $choice = "c" ]]
then
read -p "Enter Username: " username
read -p "Enter supplementary group: " groupname
sudo usermod -G $groupname $username

elif [[ $choice = "D" ]] || [[ $choice = "d" ]]
then
read -p "Enter Username: " username
read -p "Enter initial group: " group
sudo usermod -g $group $username

elif [[ $choice = "E" ]] || [[ $choice = "e" ]]
then
read -p "Enter Username: " username
read -p "Enter shell: " shell
sudo usermod -s $shell $username

elif [[ $choice = "F" ]] || [[ $choice = "f" ]]
then
read -p "Enter Username: " username
read -p "Enter expiration date (YYYY-MM-DD): " expiredate
sudo usermod -e $expiredate $username

elif [[ $choice = "Q" ]] || [[ $choice = "q" ]]
then
echo "END";

else	
echo "INVALID OPTION! PLEASE RE-ENTER: ";
fi

done
