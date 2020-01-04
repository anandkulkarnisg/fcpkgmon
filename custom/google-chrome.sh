#!/bin/bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
mv google-chrome-stable_current_x86_64.rpm ${pkgMonCache}
rpm -ivvh ${pkgMonCache}/google-chrome-stable_current_x86_64.rpm
