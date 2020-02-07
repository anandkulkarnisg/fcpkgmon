#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

# DownLoad section.
export curDir=$(pwd)
export downLoadUrl="https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cd ${pkgMonCache}/

# Install section.
bash ${pkgMonCache}/${pkgName}

# Exit gracefully.
cd $curDir
exit 0

