#!/bin/bash
wget https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm
mv nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm ${pkgMonCache}
rpm -ivvh ${pkgMonCache}/nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm
