
#! /bin/bash

# remove previous versions of docker
 apt-get remove docker docker-engine docker.io containerd runc

# Update the apt package index and install 
# packages to allow apt to use a repository over HTTPS:
 apt-get update \
    &&  apt-get upgrade -y

 apt-get -y install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key
 mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# setup repository 
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null

# install latest version of docker
 apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin


