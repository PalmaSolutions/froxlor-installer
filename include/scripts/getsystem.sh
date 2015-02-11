#!/bin/bash
### BEGIN INFO
# Froxlor Installer
# 
# Author: xWuZaa <info@ichwillne.info>
#
# 2015-02-11
### END INFO

DEBIAN_SQUEEZE=1
DEBIAN_WHEEZY=2
DEBIAN_JESSI=3

distributor=$(lsb_release -id | grep Distributor | awk '{print $3}')
release=$(lsb_release -r | grep Release | awk '{print $2}')

if [[ $distributor -eq "Debian" ]]
then
	if [[ $release =~ ^6.[0-9].[0-9]*$ ]]
	then
		echo $DEBIAN_SQUEEZE
	fi	

	if [[ $release =~ ^7.[0-9].[0-9]*$ ]]
	then
		echo $DEBIAN_WHEEZY
	fi	

	if [[ $release =~ ^8.[0-9].[0-9]*$ ]]
	then
		echo $DEBIAN_JESSI
	fi	
fi
