#!/usr/bin/bash
# Source url : https://jami.net/download-jami-linux/#
sudo dnf config-manager --add-repo https://dl.jami.net/nightly/fedora_33/jami-nightly.repo
sudo dnf install jami
