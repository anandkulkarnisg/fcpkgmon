#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

# Set up the download variables here.
export downLoadUrl="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
rpm -ivh ${pkgMonCache}/${pkgName}

# Exit with grace.
exit 0
