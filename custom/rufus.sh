#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

curDir=$(pwd)
export downLoadUrl="https://github.com/pbatard/rufus/releases/download/v3.8/rufus-3.8.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cp ${pkgMonCache}/${pkgName} /usr/local/bin/${pkgName}
cd /usr/local/bin;ln -s rufus-3.8.exe rufus
rm -f ${pkgMonCache}/${pkgName}
cd ${curDir}
exit 0
