#!/bin/bash

code_clone(){
	echo "cloning the repo..........."
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements(){
	echo "Installing dependencies................"
	sudo apt-get install docker.io nginx -y 
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	systemctl restart docker
}

deploy(){
	docker built -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}


echo "------------DEPLOYMENT STARTS--------------------------"

if ! code_clone; then
	echo "Code directory already exists!"
	cd django-notes-app
fi

if ! install_requirements; then
	echo "Installation Failed!"
	exit 1
fi

if ! required_restarts; then
	echo "Sytem fault identified"
	exit 1
fi
deploy

echo "---------------DEPLOYMENT DONE"
