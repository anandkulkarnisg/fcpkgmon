# Author : Anand Kulkarni - 26/01/2020.
# Description : fedora package mon rpm specfile.
# Version : fcpkgmon-1.0 

Summary:Fedora Package Mon is a tool for personalized installation of packages.Its built on top of dnf installer.
Name:fcpkgmon
Version:1.0.0
Release:2
License:GPL
Group:Application/misc
URL:www.github.com/anandkulkarnisg/fcpkgmon
Distribution:Fedora Linux 31
Vendor:Anand Kulkarni
Packager:Anand Kulkarni
BuildArch:noarch

%description
This is RPM Package for fedora custom package management tool.Its a wrapper around the dnf installer.It has additional custom installation script support.

%prep
rm -rf $RPM_BUILD_DIR/fcpkgmon
tar -xzvf $RPM_BUILD_DIR/fcpkgmon.tar.gz

%build
cd fcpkgmon
make clean 

%install
cd fcpkgmon
make install
mkdir -p %{buildroot}/usr/local/lib %{buildroot}/usr/local/bin %{buildroot}/etc %{buildroot}/opt/fcpkgmon/
cp /usr/local/bin/fcpkgmon %{buildroot}/usr/local/bin
cp /usr/local/lib/fcpkgmonlib %{buildroot}/usr/local/lib
cp /etc/fcpkgmonList.txt %{buildroot}/etc
cp /etc/fcpkgmon.conf %{buildroot}/etc
cp -R /opt/fcpkgmon/custom %{buildroot}/opt/fcpkgmon

%files -f /tmp/%{name}.spec.fileList.txt
