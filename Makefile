clean :
	rm -f /usr/local/bin/fcpkgmon /usr/local/lib/fcpkgmonlib.sh /etc/pkgmonList.txt 
	rm -rf /opt/fcpkgmon/custom
install		:
	cp ./fcpkgmon /usr/local/bin
	cp ./fcpkgmonlib.sh /usr/local/lib
	cp ./pkgmonList.txt /etc
	cp -R ./custom /opt/fcpkgmon
