#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

wget http://li.nux.ro/download/nux/dextop/el7/x86_64/xmms-skins-1.2.10-28.noarch.rpm -O ${pkgMonCache}/xmms-skins-1.2.10-28.noarch.rpm
rpm -ivvh ${pkgMonCache}/xmms-skins-1.2.10-28.noarch.rpm
