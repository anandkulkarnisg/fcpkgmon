#!/bin/bash
# Ref url  : https://docs.microsoft.com/en-us/dotnet/core/install/linux-package-manager-fedora30
# Synopsis : Installs the dotnet environment for fedora. As of this scripting date latest stable version tested is : fc30.

if [ -f /etc/yum.repos.d/prod.repo ]; then
	echo -e "seems the microsoft repository is already installed.Exiting with error."
	exit 1
fi

# import the rpm signatures. 
rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Install the packages as below.
dnf install -y dotnet-sdk-3.1 aspnetcore-runtime-3.1 dotnet-runtime-3.1

# exit with grace.
exit 0
