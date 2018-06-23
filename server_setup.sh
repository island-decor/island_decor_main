#!/bin/bash

apt-get -y update
apt-get -y upgrade

# Install Docker
curl -fsSL get.docker.com -o get-docker.sh
sh get-docker.sh

# Install Docker Compose
# command installs most recent stable release of docker Compose
# taken from: https://stackoverflow.com/a/50730265/9905759
curl -L https://github.com/docker/compose/releases/download/`curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest | awk -F / '{print $NF}'`/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
