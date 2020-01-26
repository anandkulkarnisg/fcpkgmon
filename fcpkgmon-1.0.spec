# Author : Anand Kulkarni - 26/01/2020.
# Description : fedora package mon rpm specfile.
# Version : fcpkgmon-1.0 

Summary:Fedora Package Mon is a tool for personalized installation of packages.Its built on top of dnf installer.
Name:fcpkgmon
Version:1.0
Release:1
License:GPL
Group:Application/misc
URL:www.github.com/anandkulkarnisg/fedoraPackageMon
Distribution:Fedora Linux 31
Vendor:Anand Kulkarni
Packager:Anand Kulkarni
BuildArch: noarch

%description
This is RPM Package for fedora custom package management tool.Its a wrapper around the dnf installer.It has additional custom installation script support.

%prep
rm -rf $RPM_BUILD_DIR/fcpkgmon-1.0
tar -xzvf $RPM_BUILD_DIR/fcpkgmon-1.0.tar.gz

%build
cd fcpkgmon-1.0
make clean 

%install
cd fcpkgmon-1.0
make install
mkdir -p %{buildroot}/usr/local/lib %{buildroot}/usr/local/bin %{buildroot}/etc %{buildroot}/opt/fcpkgmon/
cp /usr/local/bin/fcpkgmon %{buildroot}/usr/local/bin
cp /usr/local/lib/fcpkgmonlib.sh %{buildroot}/usr/local/lib
cp /etc/layout.txt %{buildroot}/etc
cp -R /opt/fcpkgmon/custom %{buildroot}/opt/fcpkgmon

%files
/usr/local/bin/fcpkgmon
/etc/layout.txt
/usr/local/lib/fcpkgmonlib.sh
/opt/fcpkgmon/custom/opera-linux-browser.sh
/opt/fcpkgmon/custom/expandrive.sh
/opt/fcpkgmon/custom/dropbox.sh
/opt/fcpkgmon/custom/dotnet-microsoft.sh
/opt/fcpkgmon/custom/docker-ce.sh
/opt/fcpkgmon/custom/devtools.sh
/opt/fcpkgmon/custom/bluejeans.sh
/opt/fcpkgmon/custom/atom-ide-editor.sh
/opt/fcpkgmon/custom/aescrypt.sh
/opt/fcpkgmon/custom/adobe-pdf-reader.sh
/opt/fcpkgmon/custom/spotify.sh
/opt/fcpkgmon/custom/skype.sh
/opt/fcpkgmon/custom/rufus.sh
/opt/fcpkgmon/custom/rstudio.sh
/opt/fcpkgmon/custom/rpmfusion.sh
/opt/fcpkgmon/custom/rarlinux.sh
/opt/fcpkgmon/custom/pycharm.sh
/opt/fcpkgmon/custom/pulseaudio-equalizer.sh
/opt/fcpkgmon/custom/pipcustom.sh
/opt/fcpkgmon/custom/notepadplusplus.sh
/opt/fcpkgmon/custom/mplayer-skins.sh
/opt/fcpkgmon/custom/ide-intellij.sh
/opt/fcpkgmon/custom/ide-clion.sh
/opt/fcpkgmon/custom/gstreamer-extra-plugins.sh
/opt/fcpkgmon/custom/google-chrome.sh
/opt/fcpkgmon/custom/geogebra.sh
/opt/fcpkgmon/custom/flash-plugin.sh
/opt/fcpkgmon/custom/xmms-skins.sh
/opt/fcpkgmon/custom/wintextpad.sh
/opt/fcpkgmon/custom/winrarui.sh
/opt/fcpkgmon/custom/winmerge.sh
/opt/fcpkgmon/custom/vscode-microsoft.sh
/opt/fcpkgmon/custom/vmware-workstation-pro.sh
/opt/fcpkgmon/custom/virtualbox-6.0.sh
/opt/fcpkgmon/custom/sublime-text-editor.sh
/opt/fcpkgmon/custom/steam.sh
