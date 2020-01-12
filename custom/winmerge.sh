#!/bin/bash

#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
	mkdir -p ${pkgMonCache}
fi

export downLoadUrl="https://downloads.sourceforge.net/winmerge/WinMerge-2.16.4-x64-Setup.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
su anand -c "${pkgMonCache}/${pkgName}"
rm -f ${pkgMonCache}/${pkgName}
exit 0
