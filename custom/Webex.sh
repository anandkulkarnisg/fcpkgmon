#!/bin/bash
echo -e "Installing the cisco webex fedora linux client for 64 bit rpm."
dnf localinstall -y https://binaries.webex.com/WebexDesktop-CentOS-Official-Package/Webex.rpm
echo -e "Finished successfully running the Webex rpm installation via dnf"
