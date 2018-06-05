#!/bin/bash

apt-get -y update
apt-get -y upgrade

# Install Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh
