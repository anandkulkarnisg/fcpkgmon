#!/usr/bin/bash
# mplayer skins installation.

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

wget ftp://195.220.108.108/linux/dag/redhat/el7/en/x86_64/dag/RPMS/mplayer-skins-1.9-1.nodist.rf.noarch.rpm -O ${pkgMonCache}/mplayer-skins-1.9-1.nodist.rf.noarch.rpm
rpm -ivvh ${pkgMonCache}/mplayer-skins-1.9-1.nodist.rf.noarch.rpm
