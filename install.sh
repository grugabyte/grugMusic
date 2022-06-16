#! /bin/bash

#installs the depnancies and the script
fnc=0
var=none
conf="text.txt"

while [ $fnc == 0 ];
do
	echo -e "\e[1;34mSelect your operating system or press 'l' to list the options\e[0m"
	read var
	
	if [ $var == "debian" ];
	then
		sudo apt install mpv youtube-dl
		fnc=1
	elif [ $var == "arch" ];
	then 
		sudo pacman -S mpv youtube-dl
		fnc=1
	elif [ $var == "mac" ];
	then
		#note this isn't tested
		sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
		sudo chmod a+rx /usr/local/bin/youtube-dl
		sudo port install mpv 
		fnc=1
	elif [ $var == "conf" ];
	then
		while read -r line; do
			
			if [[ "$line" == *"arch"* ]]; then 
				sudo pacman -S mpv youtube-dl
				fnc=1
			elif [[ "$line" == *"debian"* ]]; 
			then
				sudo apt install mpv youtube-dl
				fnc=1
			elif [[ "$line" == "" ]]; then
				sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
				sudo chmod a+rx /usr/local/bin/youtube-dl
				sudo port install mpv
				fnc=1
			fi
		done < $conf
	else
		echo "supported OS: Mac, Arch & Debian based systems"
		echo "alternatively you could use the configuration file with 'conf'"
	fi

	if [ $fnc == 1 ];
	then 
		echo "installed"
		fnc=1
	else
		echo "did not install anything"
	fi
done

chmod +x playlist01.sh
chmod +x playlist02.sh

