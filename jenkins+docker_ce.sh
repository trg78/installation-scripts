#!/bin/bash

apt install -y openjdk-8-jdk
java -version


apt install -y gdebi-core
wget https://pkg.jenkins.io/debian-stable/binary/jenkins_2.222.1_all.deb
gdebi ./jenkins_2.222.1_all.deb

apt -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt update

apt -y install docker-ce docker-ce-cli containerd.io

pause 10

docker run hello-world

usermod -a -G docker jenkins
