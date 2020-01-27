#!/usr/bin/bash
# Article Ref : https://negativo17.org/spotify-client/
dnf config-manager --add-repo=https://negativo17.org/repos/fedora-spotify.repo
dnf install -y spotify-client
