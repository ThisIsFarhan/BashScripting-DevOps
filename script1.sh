#!/bin/bash

echo "Date: " `date`

echo -e "\nEnter the path: "
read read_path

echo -e "-------------------------------Contents---------------------------------"
ls $read_path
