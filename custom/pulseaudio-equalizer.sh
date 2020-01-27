#!/usr/bin/bash
# Installation of pulse audio equalizer software. fc31 distribution seems to be mising. falling back to fc30 distribution.
dnf install -y ladspa-swh-plugins
rpm -ivh http://download-ib01.fedoraproject.org/pub/fedora-secondary/releases/30/Everything/i386/os/Packages/p/pulseaudio-equalizer-2.7-21.fc29.noarch.rpm
