#!/usr/bin/bash
# Install atom IDE.
# Article Source : https://tecadmin.net/install-atom-text-editor-on-fedora/
# Package Source : https://github.com/atom/atom/releases

# setup the envrionment.
source set.sh

export downLoadUrl="https://github.com/atom/atom/releases/download/v1.42.0/atom.x86_64.rpm" 
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/atom.rpm
dnf localinstall -y ${pkgMonCache}/atom.rpm

# Exit with grace.
exit 0
