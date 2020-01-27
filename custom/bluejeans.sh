#!/usr/bin/bash
# bluejeans installation for video/audio conferences.
wget https://swdl.bluejeans.com/desktop-app/linux/2.0.0/BlueJeans.rpm -O ${pkgMonCache}/BlueJeans.rpm
rpm -ivvh ${pkgMonCache}/BlueJeans.rpm
