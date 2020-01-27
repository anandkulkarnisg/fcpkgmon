#!/usr/bin/bash

# Set up the download variables here.
export downLoadUrl="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
rpm -ivh ${pkgMonCache}/${pkgName}

# Exit with grace.
exit 0
