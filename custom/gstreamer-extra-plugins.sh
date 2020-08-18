#!/usr/bin/bash

dnf config-manager --set-enabled fedora-cisco-openh264
dnf install gstreamer1-plugin-openh264 mozilla-openh264
dnf install gstreamer1-plugins-bad-freeworld
