#!/usr/bin/bash
# Article Ref : https://linuxconfig.org/how-to-install-docker-on-fedora-31
dnf config-manager --add-repo=https://download.docker.com/linux/fedora/docker-ce.repo
dnf install -y docker-ce
#Enable it to start on boot:
systemctl enable docker
#Docker will be installed but not started. To start the docker service, run:
systemctl start docker
#The docker group is created, but no users are added to the group. Add your user to this group to run docker commands without sudo.
usermod -aG docker $(whoami)
usermod -aG docker anand
