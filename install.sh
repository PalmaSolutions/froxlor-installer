#!/bin/bash
### BEGIN INFO
# Froxlor Installer
# 
# Author: xWuZaa <info@ichwillne.info>
#
# 2015-02-11
### END INFO

dialog --title "Froxlor installer" \
	--menu "Please select your language:" 10 40 5 \
	"Deutsch" "de" \
	"English" "en"

echo $?
