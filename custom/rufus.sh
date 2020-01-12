#!/bin/bash

#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
	mkdir -p ${pkgMonCache}
fi

curDir=$(pwd)
export downLoadUrl="https://github.com/pbatard/rufus/releases/download/v3.8/rufus-3.8.exe"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cp ${pkgMonCache}/${pkgName} /usr/local/bin/${pkgName}
cd /usr/local/bin;ln -s rufus-3.8.exe rufus
rm -f ${pkgMonCache}/${pkgName}
cd ${curDir}
exit 0
