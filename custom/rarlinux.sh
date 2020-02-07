#!/usr/bin/bash

#!/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

curDir=$(pwd)
export downLoadUrl="https://www.rarlab.com/rar/rarlinux-x64-5.8.0.tar.gz"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cd ${pkgMonCache};tar -xvzf ${pkgName};cd rar;make;make install
rm -f ${pkgMonCache}/${pkgName}
rm -rf rar
cd ${curDir}
exit 0
