#! /bin/bash

#installs the depnancies and the script
fnc=0
var=none


while [ $fnc == 0 ];
do
	echo "Select your operating system or press 'l' to list the options"
	read var
	
	if [ $var == "debian" ];
	then
		sudo apt install mpv youtube-dl
		fnc=1
	elif [ $var == "arch" ];
	then 
		sudo pacman -S mpv youtube-dl
		fnc=1
	else
		echo "supported OS: Arch & Debian based systems"
	fi

	if [ $fnc == 1 ];
	then 
		echo "install successful"
		fnc=1
	else
		echo "did not install anything"
	fi
done

chmod +x playlist01.sh

echo "installed"
