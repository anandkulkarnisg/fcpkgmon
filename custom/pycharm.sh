#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
fi

export curDir=$(pwd)
export downLoadUrl="https://download-cf.jetbrains.com/python/pycharm-professional-2019.3.1.tar.gz"
export basePkgName="pycharm"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cd ${pkgMonCache}/
tar -xvzf ${pkgName}

# Install the package in the proper path.
export targetInstallPath="/opt/jetbrains/${basePkgName}"
if [ ! -d ${targetInstallPath} ]; then
	mkdir -p ${targetInstallPath}
fi

pkgFolderName=$(tar -tvf ${pkgMonCache}/${pkgName}|head -1|awk '{print $NF}'|awk -F"/" '{print $1}')
mv ${pkgFolderName} ${targetInstallPath}
echo -e "Package installed to ${targetInstallPath}.Please create menu using menulibre manually.."

# Package cleanup that was downloaded.
rm -f {pkgMonCache}/${pkgName}

# Exit gracefully.
cd $curDir
exit 0
