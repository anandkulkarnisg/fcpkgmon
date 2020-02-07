#!/usr/bin/bash
# R studio for statistical development.

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

pkgUrl="https://download1.rstudio.org/desktop/fedora28/x86_64/rstudio-1.2.5033-x86_64.rpm"
pkgName=$(basename $pkgUrl)
wget ${pkgUrl} -O $pkgMonCache/$pkgName
rpm -ivh $pkgMonCache/$pkgName
exit 0
