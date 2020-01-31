clean :
	rm -f /usr/local/bin/fcpkgmon /usr/local/lib/fcpkgmonlib /etc/fcpkgmonList.txt /etc/fcpkgmon.conf 
	rm -rf /opt/fcpkgmon/custom
install		:
	cp ./fcpkgmon /usr/local/bin
	cp ./fcpkgmon.conf /etc
	cp ./fcpkgmonlib /usr/local/lib
	cp ./fcpkgmonList.txt /etc
	cp -R ./custom /opt/fcpkgmon
