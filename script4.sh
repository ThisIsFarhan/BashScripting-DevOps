#!/bin/bash

<< disclaimer
	This is the demonstration of if-else / elif
disclaimer


read -p "Enter the name: " name
read -p "Enter the age: " age

if [[ $name == "xyz" ]];
then
	echo "Correct Answer"
elif [[ $age -ge 18 ]];
then
	echo "Correct Answer with eligible age"
else
	echo "Not eligible"
fi
