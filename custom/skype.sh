#!/usr/bin/bash
wget rpm -ivh https://go.skype.com/skypeforlinux-64.rpm -O ${pkgMonCache}/skypeforlinux-64.rpm
rpm -ivvh ${pkgMonCache}/skypeforlinux-64.rpm
