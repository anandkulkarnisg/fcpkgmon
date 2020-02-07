#!/usr/bin/bash
# bluejeans installation for video/audio conferences.

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

wget https://swdl.bluejeans.com/desktop-app/linux/2.0.0/BlueJeans.rpm -O ${pkgMonCache}/BlueJeans.rpm
rpm -ivvh ${pkgMonCache}/BlueJeans.rpm
