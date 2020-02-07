#!/usr/bin/bash
# Adobe reader for Linux.

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
	echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
	exit 1
else
	. ${customInstallPath}/set.sh
fi

export downLoadUrl="http://ardownload.adobe.com/pub/adobe/reader/unix/9.x/9.5.5/enu/AdbeRdr9.5.5-1_i486linux_enu.rpm"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
dnf install -y libidn1.34-1.34-3.fc31.i686 # yum whatprovides libidn.so.11
rpm -ivvh ${pkgMonCache}/${pkgName}
