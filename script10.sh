#!/bin/bash

create_directory(){
	mkdir demo
}


if ! create_directory; then
	echo "Directory Already Exists!"
	exit 1
fi

echo "Directory Created!"
