#!/bin/bash
echo -e "Installing the latest zoom - fedora 64 bit rpm version"
dnf localinstall -y https://zoom.us/client/latest/zoom_x86_64.rpm
echo -e "Finished successfully running the dnf installer for zoom clint installation"
exit 0
