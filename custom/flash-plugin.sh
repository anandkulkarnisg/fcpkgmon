#!/usr/bin/bash
# Article Ref : https://www.if-not-true-then-false.com/2010/install-adobe-flash-player-10-on-fedora-centos-red-hat-rhel/
# Adobe Repository 64-bit x86_64
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
dnf install -y flash-plugin flash-player-ppapi alsa-plugins-pulseaudio libcurl
