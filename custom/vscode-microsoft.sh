#!/bin/bash
# Ref Url : https://code.visualstudio.com/docs/setup/linux
# Installation script does not have a .repo file at the source url. The repo is manually initialized.

# The repo needs to be setup manually. There is no repo file available on microsoft site.
export repoText="[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc"
export repoFile="/etc/yum.repos.d/vscode.repo"
sh -c 'echo -e ${repoText} > ${repoFile}'

# Run an update.
dnf check-update

# Install the package now.
dnf install -y code
