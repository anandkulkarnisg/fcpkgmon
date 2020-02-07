#!/usr/bin/bash

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

wget rpm -ivh https://go.skype.com/skypeforlinux-64.rpm -O ${pkgMonCache}/skypeforlinux-64.rpm
rpm -ivvh ${pkgMonCache}/skypeforlinux-64.rpm
