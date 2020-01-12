#!/bin/bash

#!/bin/bash

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
	mkdir -p ${pkgMonCache}
fi

curDir=$(pwd)
export downLoadUrl="https://www.rarlab.com/rar/rarlinux-x64-5.8.0.tar.gz"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}
cd ${pkgMonCache};tar -xvzf ${pkgName};cd rar;make;make install
rm -f ${pkgMonCache}/${pkgName}
rm -rf rar
cd ${curDir}
exit 0
