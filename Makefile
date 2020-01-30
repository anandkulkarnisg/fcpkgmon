clean :
	rm -f /usr/local/bin/fcpkgmon /usr/local/lib/fcpkgmonlib.sh /etc/pkgmonList.txt /etc/fcpkgmon.conf 
	rm -rf /opt/fcpkgmon/custom
install		:
	cp ./fcpkgmon /usr/local/bin
	cp ./fcpkgmon.conf /etc
	cp ./fcpkgmonlib.sh /usr/local/lib
	cp ./pkgmonList.txt /etc
	cp -R ./custom /opt/fcpkgmon
