#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

export downLoadUrl="https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.2/npp.7.8.2.Installer.x64.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
su anand -c "${pkgMonCache}/${pkgName}"
rm -f ${pkgMonCache}/${pkgName}
