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
}
