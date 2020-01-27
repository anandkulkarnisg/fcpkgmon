#!/usr/bin/bash

# Set up the download requirements here.
export downLoadUrl="https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
rpm -ivvh ${pkgMonCache}/${pkgName}

# Exit with grace.
exit 0
