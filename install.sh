#!/bin/bash

clear

read -s -p "Sudo Prilevleges Require (sudo password): " XPASS

clear

CHECKBASH=$(grep -c "snakes()" /home/$(whoami)/.bashrc)

if [ $CHECKBASH -eq 0 ] || [ $CHECKBASH -lt 1 ]
then
	clear
	echo "$XPASS" | sudo -S echo "snakes() {" >> /home/$(whoami)/.bashrc
	echo "$XPASS" | sudo -S echo -e "\n" >> /home/$(whoami)/.bashrc
	echo "$XPASS" | sudo -S echo "bash <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/snakes) $1" >> /home/$(whoami)/.bashrc
	echo "$XPASS" | sudo -S echo -e "\n" >> /home/$(whoami)/.bashrc
	echo "$XPASS" | sudo -S echo "}" >> /home/$(whoami)/.bashrc
	source /home/$(whoami)/.bashrc
	clear
	echo "snakes v1.0 is now installed!"
	echo "run.."
	echo "snakes list"
	echo "..for a list of available snakes!"
	sleep 3
else
	clear
	echo "snakes v1.0 is already installed!"
	echo "run.."
	echo "snakes list"
	echo "..for a list of available snakes!"
	sleep 3
fi

clear


