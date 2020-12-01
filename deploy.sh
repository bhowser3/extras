#!/bin/bash
clear
echo "___  ____ _  _ . ____
|__] |___ |\ | ' [__ 
|__] |___ | \|   ___]"
echo "___  ____ ___  _    ____ _   _ _  _ ____ _  _ ___
|  \ |___ |__] |    |  |  \_/  |\/| |___ |\ |  | 
|__/ |___ |    |___ |__|   |   |  | |___ | \|  | "
echo "____ ____ ____ _ ___  ___
[__  |    |__/ | |__]  | 
___] |___ |  \ | |     | "
echo ""
echo "Welcome!"

read -p "Enter the name of the Docker image to deploy: " image

read -p "Enter the port to expose in the container: " exposedPort

read -p "Enter number of containers to create: " containers

read -p "Enter port number of the first container for local machine: " port

for ((c=1; c<=$containers; c++))
do
    docker run -p $port:$exposedPort -d $image
    #echo $port
    ((port++))
done