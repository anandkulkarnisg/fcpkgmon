#!/bin/bash
# R studio for statistical development.
pkgUrl="https://download1.rstudio.org/desktop/fedora28/x86_64/rstudio-1.2.5033-x86_64.rpm"
pkgName=$(basename $pkgUrl)
wget ${pkgUrl} -o $pkgMonCache/$pkgName
rpm -ivh $pkgMonCache/$pkgName

