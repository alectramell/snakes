#!/bin/bash

clear

create() {

	clear
	read -p "NAME (singleword): " XNAME
	read -p "TYPE (sh, txt, log): " XTYPE
	read -p "REPO (same as name): "
	clear
	
	if [ $XTYPE = "sh" ]
	then
		touch $(pwd)/$XNAME.sh
		echo "#!/bin/bash" > $(pwd)/$XNAME.sh
		echo -e "\n" >> $(pwd)/$XNAME.sh
		echo "clear" >> $(pwd)/$XNAME.sh
		echo "bash <(curl -s )" >> $(pwd)/$XNAME.sh
}
