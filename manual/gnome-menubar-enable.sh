#!/bin/bash

export getcmd="gsettings get org.gnome.Terminal.Legacy.Settings headerbar" 
export setcmd="gsettings set org.gnome.Terminal.Legacy.Settings headerbar false"
cmdval=$($getcmd)
cmdval=$(echo $cmdval|awk '{print $2}')
if [ "$cmdval" = "nothing" ]; then
	echo -e "executing gnome terminal default menubar on feature."	
	eval $setcmd 	
else
	if [ "$cmdval" = "false" ]; then
		echo -e "The gnome terminal menubar setting is already correct set to" $cmdval
	else
		echo -e "The value i found while attempting to enable gnome menubar is = " $cmdval	
	fi		
fi
