#!/bin/bash

# Check if package installation is needed first.
isVivaldiBrowserInstalled=$(dnf repolist|grep -i "vivaldi"|wc -l|sed "s/ //g")
isVivaldiStablePkgInstalled=$(rpm -qa|grep -i "vivaldi-stable"|wc -l|sed "s/ //g")

# If only then install the repo definition and package.
if [ $isVivaldiBrowserInstalled -eq 0 ]; then
	  dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
else
  echo -e "vivaldi dnf repo already configured!"
fi

if [ $isVivaldiStablePkgInstalled -eq 0 ]; then
	dnf install -y vivaldi-stable
else
  echo -e "vivaldi-stable already installed."
fi

exit 0
