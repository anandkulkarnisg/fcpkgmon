#!/usr/bin/bash
isSteamInstalled=$(dnf repolist|grep -i "negativo17 - Steam"|wc -l|sed "s/ //g")
if [ $isSteamInstalled -eq 0 ]; then
	dnf config-manager --add-repo=http://negativo17.org/repos/fedora-steam.repo
	dnf install -y steam
fi
