#!/usr/bin/bash
# Install atom IDE.
# Article Source : https://tecadmin.net/install-atom-text-editor-on-fedora/
# Package Source : https://github.com/atom/atom/releases

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

export downLoadUrl="https://github.com/atom/atom/releases/download/v1.42.0/atom.x86_64.rpm" 
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/atom.rpm
dnf localinstall -y ${pkgMonCache}/atom.rpm

# Exit with grace.
exit 0
