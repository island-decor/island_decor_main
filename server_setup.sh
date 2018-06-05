#!/bin/bash

apt-get -y update
apt-get -y upgrade

# Install Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Install Docker Compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
