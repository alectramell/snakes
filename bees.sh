#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

TFRAME=1

clear

red=$(tput setaf 1)
gold=$(tput setaf 3)
black=$(tput setaf 0)
yellow=$(tput setaf 190)
reset=$(tput sgr0)

clear

BUZZ1() {

	clear
	echo "                 "
	echo "  [ Nine to F@#&in Five Man! Grrrrrrr!!! ]   "
	echo "       \/                                    "
	echo "                                             "
	echo "      ${black}#${reset}   ${black}#${reset}      "
	echo "      ${gold}#####${reset}      "
	echo "     ${gold}#######${reset}     "
	echo " ooo  ${gold}#####${reset}  ooo  "
	echo "ooooo${yellow}#######${reset}ooooo "
	echo " oooo${black}#######${reset}oooo  "
	echo "ooooo${yellow}#######${reset}ooooo "
	echo " ooo  ${black}#####${reset}  ooo   "
	echo "       ${yellow}###${reset}       "
	echo "        ${black}#${reset}        "

}

BUZZ2() {

	clear
	echo "                 "
	echo "  [ Nine to F@#&in Five Man! Grrrrrrr!!! ]   "
	echo "       \/                                    "
	echo "                                             "
	echo "      ${black}#${reset}   ${black}#${reset}      "
	echo "      ${gold}#####${reset}      "
	echo "     ${gold}#######${reset}     "
	echo "   o  ${gold}#####${reset}  o    "
	echo "   oo${yellow}#######${reset}oo    "
	echo "   oo${black}#######${reset}oo    "
	echo "   oo${yellow}#######${reset}oo    "
	echo "   o  ${black}#####${reset}  o     "
	echo "       ${yellow}###${reset}       "
	echo "        ${black}#${reset}        "

}


while [ $TFRAME -eq 1 ]
do
	BUZZ1
	sleep 0.05
	BUZZ2
	sleep 0.05
done
