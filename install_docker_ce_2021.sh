apt update -y && apt upgrade -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 7EA0A9C3F273FCD8
apt update
apt-get install docker-ce docker-ce-cli containerd.io
