#!/bin/bash

apt-get -y update
apt-get -y upgrade

# Install Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Install Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
