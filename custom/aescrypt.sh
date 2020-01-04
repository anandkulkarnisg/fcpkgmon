#!/bin/bash
# AESCrypt is very useful tool for installing and managing encryption text tools. This is backbone of the todo lists rest of personal data encryption.
# todo : Still the gui tool does not register itself. but this is not priority/critical.
# Article url : https://www.aescrypt.com/linux_aes_crypt.html
curDir=$(PWD)
wget https://www.aescrypt.com/download/v3/linux/aescrypt-3.14.tgz
mv aescrypt-3.14.tgz ${pkgMonCache}
cd ${pkgMonCache}
tar -xvzf aescrypt-3.14.tgz
cd aescrypt-3.14/src
make
make install

wget https://www.aescrypt.com/download/v3/linux/AESCrypt-GUI-3.11-Linux-x86_64-Install.gz
mv AESCrypt-GUI-3.11-Linux-x86_64-Install.gz ${pkgMonCache}/
cd ${pkgMonCache}/aescrypt-3.14/gui
cp aescrypt-gui /usr/bin
mkdir -p /usr/share/aescrypt;cp SmallLock.png /usr/share/aescrypt/SmallLock.png
cp AESCrypt.desktop /usr/share/applications/
cd $curDir
