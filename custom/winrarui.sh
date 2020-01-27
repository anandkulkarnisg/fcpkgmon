#!/usr/bin/bash

#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
	mkdir -p ${pkgMonCache}
fi

curDir=$(pwd)
export downLoadUrl="https://www.rarlab.com/rar/winrar-x64-580.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
su anand -c "${pkgMonCache}/${pkgName}"
cd ${curDir}
exit 0
