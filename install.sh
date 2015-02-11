#!/bin/bash
### BEGIN INFO
# Froxlor Installer
# 
# Author: xWuZaa <info@ichwillne.info>
#
# 2015-02-11
### END INFO

out="/tmp/$$"

dialog --title "Froxlor installer" \
	--menu "Please select your language:" 10 40 5 \
	"de" "Deutsch" \
	"en" "English" 2>$out

lang=$(<$out)

dialog --title "Froxlor installer" \
	--msgbox "$(cat include/lang/$lang/info.inc)" 20 50
