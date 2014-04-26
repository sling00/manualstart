#!/bin/bash
#Installer script for manualstart.
#Only works on pimp for now -> http://www.getpimp.org
#Universal version of script will come eventually.

echo "Installing into /opt/pimp"
if [ -e /opt/pimp/manualstart ];
	then 
	echo "Backing up old manualstart"
	mv /opt/pimp/manualstart /opt/pimp/manualstart.bak
	else
	echo "No old manualstart to backup...continuing"
fi
	cp ./manualstart /opt/pimp/manualstart
if [ -e /opt/pimp/manualstart.conf ];
	then
	echo "Backing up your old manualstart.conf to /opt/pimp/manualstart.conf.bak"
	mv /opt/pimp/manualstart.conf /opt/pimp/manualstart.bak
	else
	Echo "No old conf to backup, continuing."
fi
cp ./manualstart.conf /opt/pimp/manualstart.conf
echo "Finished, you can now start the script by typing "manualstart"."
