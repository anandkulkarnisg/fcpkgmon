#!/usr/bin/bash

# Mega Cloud Linux Fedora 31 Client application.
IsInstalled=$(rpm -qa|grep "megasync"|wc -l)
if [ $IsInstalled -eq 0 ]; then
	dnf localinstall -y https://mega.nz/linux/MEGAsync/Fedora_31/x86_64/megasync-Fedora_31.x86_64.rpm
else
	echo -e "Already seems Installed.SKipping.."
fi
exit 0
