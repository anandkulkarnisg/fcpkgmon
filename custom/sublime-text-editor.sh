#!/usr/bin/bash
# SubLime Editor for Linux.
# https://www.sublimetext.com/docs/3/linux_repositories.html#dnf
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf install -y sublime-text
