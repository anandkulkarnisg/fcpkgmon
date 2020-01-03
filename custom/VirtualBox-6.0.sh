#!/bin/bash

# Article source : https://www.if-not-true-then-false.com/2010/install-virtualbox-with-yum-on-fedora-centos-red-hat-rhel/
export userName="anand"
dnf config-manager --add-repo http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf install -y VirtualBox-6.0
/usr/lib/virtualbox/vboxdrv.sh setup
usermod -a -G vboxusers ${userName} 
