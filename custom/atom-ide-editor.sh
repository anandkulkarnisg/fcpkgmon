#!/bin/bash
# Install atom IDE.
# Article Source : https://tecadmin.net/install-atom-text-editor-on-fedora/
# Package Source : https://github.com/atom/atom/releases
wget https://github.com/atom/atom/releases/download/v1.42.0/atom.x86_64.rpm -O ${pkgMonCache}/atom.rpm
dnf localinstall -y ${pkgMonCache}/atom.rpm
