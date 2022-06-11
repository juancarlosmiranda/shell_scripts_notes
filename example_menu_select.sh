#!/bin/bash
menu_options="Menu1 Menu2 Quit"
echo "---------------------------------";
echo "Using menues in Bash";
echo "---------------------------------";
select opt in $menu_options; do
	if [ "$opt" = "Quit" ]; then
		echo done
		exit
	fi
	if [ "$opt" = "Menu1" ]; then
		echo "Menu 1"
	fi
	if [ "$opt" = "Menu2" ]; then
		echo "Menu 2"
	fi
done
