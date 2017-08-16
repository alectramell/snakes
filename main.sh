#!/bin/bash

clear

create() {

	clear
	read -p "NAME (singleword): " XNAME
	read -p "TYPE (sh, txt, log): " XTYPE
	read -p "REPO (link script name): " XREPO
	clear
	
	if [ $XTYPE = "sh" ]
	then
		touch $(pwd)/$XNAME.sh
		echo "#!/bin/bash" > $(pwd)/$XNAME.sh
		echo -e "\n" >> $(pwd)/$XNAME.sh
		echo "clear" >> $(pwd)/$XNAME.sh
		echo -e "\n" >> $(pwd)/$XNAME.sh
		echo "bash <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/$XREPO.sh)" >> $(pwd)/$XNAME.sh
		clear
		chmod 755 $(pwd)/$XNAME.sh
		clear
		gedit $(pwd)/$XNAME.sh &
		clear

	elif [ $XTYPE = "txt" ]
	then
		touch $(pwd)/$XNAME.txt
		echo "#!/bin/bash" > $(pwd)/$XNAME.txt
		echo -e "\n" >> $(pwd)/$XNAME.txt
		echo "clear" >> $(pwd)/$XNAME.txt
		echo -e "\n" >> $(pwd)/$XNAME.txt
		echo "bash <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/$XREPO.sh)" >> $(pwd)/$XNAME.txt
		clear
		chmod 755 $(pwd)/$XNAME.txt
		clear
		gedit $(pwd)/$XNAME.txt &
		clear

	elif [ $XTYPE = "log" ]
	then
		touch $(pwd)/$XNAME.log
		echo "#!/bin/bash" > $(pwd)/$XNAME.log
		echo -e "\n" >> $(pwd)/$XNAME.log
		echo "# clear" >> $(pwd)/$XNAME.log
		echo -e "\n" >> $(pwd)/$XNAME.log
		echo "# bash <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/$XREPO.sh)" >> $(pwd)/$XNAME.log
		clear
		chmod 755 $(pwd)/$XNAME.log
		clear
		gedit $(pwd)/$XNAME.log &
		clear

	else
		echo "Sorry, that type is not available.." | pv -qL 10
		sleep 3
		clear
		bash $(pwd)/main.sh create
	fi
}

run() {
	
	read -p "RUN SNAKE (snake name): " SNAME
	clear
	bash <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/$SNAME.sh)

}

list() {

	clear
	ls <(curl -s https://raw.githubusercontent.com/alectramell/snakes/master/list.txt)

}

$1
