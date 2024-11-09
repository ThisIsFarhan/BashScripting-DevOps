#!/bin/bash

myfunct(){
	num=$1
	if [[ $((num%2)) -eq 0 ]];
	then
		echo "Even"
	else
		echo "Odd"
	fi
}

myfunct 3
