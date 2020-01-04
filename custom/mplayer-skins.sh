#!/bin/bash
# mplayer skins installation.
wget ftp://195.220.108.108/linux/dag/redhat/el7/en/x86_64/dag/RPMS/mplayer-skins-1.9-1.nodist.rf.noarch.rpm -O ${pkgMonCache}/mplayer-skins-1.9-1.nodist.rf.noarch.rpm
rpm -ivvh ${pkgMonCache}/mplayer-skins-1.9-1.nodist.rf.noarch.rpm
