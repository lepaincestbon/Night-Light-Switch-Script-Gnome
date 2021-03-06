#!/bin/bash

#Author : Paul Coral
#Tested on Ubuntu 18.10
#It could be useful to enable this script with a shortcut

echo "NightLight Switch Script Gnome "
echo "Author : Paul Coral"

nightLight=$(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)

if [ "$nightLight" = true ] ;
then
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false

else
	gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
fi
