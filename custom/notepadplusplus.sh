#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
fi

export downLoadUrl="https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v7.8.2/npp.7.8.2.Installer.x64.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
su anand -c "${pkgMonCache}/${pkgName}"
rm -f ${pkgMonCache}/${pkgName}
