#!/bin/bash

clear

sky=$(tput setaf 153)
black=$(tput setaf 0)
blue=$(tput setaf 4)
white=$(tput setaf 7)
green=$(tput setaf 2)
gold=$(tput setaf 3)
yellow=$(tput setaf 190)
red=$(tput setaf 1)
reset=$(tput sgr0)

clear

LOOP=1

clear

loadIt() {

	# line 1
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo " "
	sleep 0.1
	# line 2
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo " "
	sleep 0.1
	# line 3
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n " "
	echo -n " "
	echo -n " "
	echo " "
	sleep 0.1	
	# line 4
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n " "
	echo -n " "
	echo " "
	sleep 0.1	
	# line 5
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n " "
	echo " "
	sleep 0.1	
	# line 6
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${blue}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n " "
	echo " "
	sleep 0.1	
	# line 7
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n "${sky}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n "${sky}#${reset}"
	echo -n " "
	echo -n " "
	echo " "
	sleep 0.1	
	# line 8
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo -n " "
	echo " "
	sleep 2.5
	clear

}

clear

while [ $LOOP = 1 ]
do
	loadIt
done
