#!/bin/bash

sudo -H -u vagrant -i echo "export LANGUAGE=en_US.UTF-8" >> /etc/bash.bashrc
sudo -H -u vagrant -i echo "export LANG=en_US.UTF-8" >> /etc/bash.bashrc
sudo -H -u vagrant -i echo "export LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc

locale-gen en_US.UTF-8
update-locale LANG=en_US.UTF-8
update-locale LC_ALL=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get install --yes \
  curl \
  vim \
  git

# Install Docker
# https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04
apt-get install --yes \
  apt-transport-https \
  ca-certificates curl \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

apt-get update
apt-get install --yes \
  docker-ce

usermod -aG docker vagrant

# Install docker-compose
# https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
curl -L https://github.com/docker/compose/releases/download/1.23.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

echo
echo
echo 'Aby zalogować się na maszynę, wpisz:'
echo '$ vagrant ssh'
echo
echo 'Następnie, aby sprawdzić, czy Twoja instalacja Dockera działa, wpisz:'
echo '$ docker run hello-world'
echo
echo 'Repozytorium z hosta zamontowane jest na maszynie wirtualnej do katalogu /docker'
echo
echo 'Udanej zabawy!'
