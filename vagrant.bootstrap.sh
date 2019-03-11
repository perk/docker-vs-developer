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
  docker.io \
  docker-compose \
  curl \
  vim \
  git

usermod -aG docker vagrant

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
