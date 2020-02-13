#!/bin/bash

# Reference Sources : 
# a.https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-red-hat?view=sql-server-ver15
# b.https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-migrate-restore-database?view=sql-server-ver15 

# Verfy if the installation is invoked properly via base/parent script of fcpkgmon.
if [ ! -f ${customInstallPath}/set.sh ]; then
  echo -e "Invalid invocation. Run via fcpkgmon.Exiting with failure"
  exit 1
else
  . ${customInstallPath}/set.sh
fi

# The actual ms sql installation starts here.
export msSqlRepo="https://packages.microsoft.com/config/rhel/8/mssql-server-2019.repo"
if [ ! -f /etc/yum.repos.d/mssql-server.repo ]; then
	echo -e "Adding the mssql repository to the system."
	dnf config-manager --add-repo=${msSqlRepo}	
else
	echo -e "It seems the repo is alreay present.SKipping repo setup."
fi

# Verify if the package installation exists.If so exit else continue.
rpmInstallStatus=$(rpm -qa|grep "mssql-server"|wc -l)
if [ ! ${rpmInstallStatus} -gt 0 ]; then
	echo -e "It seems mssql-server is not installed.We will attempt to install it."
	echo -e "Updating the repo status."
	dnf check-update 
	echo -e "Kickstarting the installation"
	dnf install -y mssql-server
	/opt/mssql/bin/mssql-conf setup
else
	echo -e "It seems mssql-server is already installed.Skipping install again."
	echo -e "Please verify manually.Exiting with failure code.."
	exit 1
fi

# Kick start/enable the service.
systemctl enable mssql-server
systemctl start mssql-server

# Install the command line mssql tools.
export msSqlCmdToolsRepo="https://packages.microsoft.com/config/rhel/8/prod.repo"
dnf config-manager --add-repo=${msSqlCmdToolsRepo}
dnf check-update
dnf install -y unixODBC-utf16 unixODBC-utf16-devel

# Add the below config to each user .bashrc manually. This is handled by admin manually currently.
# echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
# echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
