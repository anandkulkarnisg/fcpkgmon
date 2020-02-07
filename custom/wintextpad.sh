#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

curDir=$(pwd)
export downLoadUrl="https://www.textpad.com/download/v82/x64/txpeng820-64.zip"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cd ${pkgMonCache}/${pkgName} 
su anand -c "unzip ${pkgMonCache}/${pkgName};chmod 755 setup.exe;./setup.exe"
# cleanup.
rm -f ${pkgMonCache}/${pkgName} setup.exe
cd $curDir
exit 0
