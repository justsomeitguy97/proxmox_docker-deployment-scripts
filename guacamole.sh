#!/bin/bash

sleep 2

echo "Updating system..."
sleep 1
sudo apt-get update -y

sleep 2

echo "Upgrading system..."
sleep 1
sudo apt-get upgrade -y

sleep 2

echo "Installing Docker..."
sleep 1
sudo apt-get install docker.io -y

sleep 2

cd ..

sleep 2

mkdir Docker

sleep 2

sudo docker run \
  -p 8080:8080 \
  -v /path/to/config:/config \
  jwetzell/guacamole

sleep 1

echo "Done, your Apache Guacamole instance is ready!"