#!/usr/bin/bash
# AESCrypt is very useful tool for installing and managing encryption text tools. This is backbone of the todo lists rest of personal data encryption.
# todo : Still the gui tool does not register itself. but this is not priority/critical.
# Article url : https://www.aescrypt.com/linux_aes_crypt.html

# Source the package env variables.
. set.sh

curDir=$(PWD)

export downLoadUrl="https://www.aescrypt.com/download/v3/linux/aescrypt-3.14.tgz"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
cd ${pkgMonCache}
tar -xvzf aescrypt-3.14.tgz
cd aescrypt-3.14/src
make
make install


export downLoadUrl="https://www.aescrypt.com/download/v3/linux/AESCrypt-GUI-3.11-Linux-x86_64-Install.gz"
export pkgName=$(basename ${downLoadUrl})
wget ${downLoadUrl} -O ${pkgMonCache}/${pkgName}
cd ${pkgMonCache}/aescrypt-3.14/gui
cp aescrypt-gui /usr/bin
mkdir -p /usr/share/aescrypt;cp SmallLock.png /usr/share/aescrypt/SmallLock.png
cp AESCrypt.desktop /usr/share/applications/
cd $curDir
