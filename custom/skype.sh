#!/bin/bash
wget rpm -ivh https://go.skype.com/skypeforlinux-64.rpm -o ${pkgMonCache}/skypeforlinux-64.rpm
rpm -ivvh ${pkgMonCache}/skypeforlinux-64.rpm
