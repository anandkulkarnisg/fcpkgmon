#!/usr/bin/bash
# SubLime Editor for Linux.
# https://www.sublimetext.com/docs/3/linux_repositories.html#dnf

isRepoInstalled=$(dnf repolist|grep "sublime-text"|wc -l)

if [ $isRepoInstalled -eq 0 ]; then
	rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
	dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
else
	echo -e "Seems the sublime editor repository is already installed.."
fi

isEditorInstalled=$(rpm -qa|grep "sublime-text"|wc -l)
if [ $isEditorInstalled -eq 0 ]; then
	dnf install -y sublime-text
else
	echo -e "sublime editor is already installed.."
fi
