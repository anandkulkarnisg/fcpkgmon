#!/bin/bash
# todo : implement this later.
# Ref Url  : https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html
# Synopsis : The script simply initializes the installation of vmware workstation pro software and completes the install.
# The url download link needs to be checked. Its a big file package around 0.5GB.

if [ "${pkgMonCache}" = "" ]; then
	export pkgMonCache="/tmp/pkgmon/cache"
fi

export curDir=$(pwd)
export downLoadUrl="https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.5.1-15018445.x86_64.bundle"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
chmod 755 ${pkgMonCache}/${pkgName}

# Execute the package which is a executable binary for installation.
${pkgMonCache}/${pkgName}

# Exit with grace at the end.
echo "Finished installing the vmware workstation pro.Please verify the app manually."
exit 0 
