#Welcome to Music Script!
This script was a project I worked on one day because I wanted to listen to music without entering lengthy commands or resort to torrenting which had already trashed two of my previous installs. Just a note, I don't own any of this music, refer to playlist 01.sh. You can access this file by opening a terminal with `ctrl+alt+t` and entering `vi playlist01.sh`. In this file, you can find the tracks, and edit it to your liking. 

#Installation
This project can be installed using the install script I made. To install, open a terminal with `ctrl+alt+t`, and clone with repository in the directory of your choosing with `git clone <link>`. Then change directory with `cd grugMusic`. Then to run the installtion script, enter `bash install.sh` and follow the prompts. This installation script should install whatever depenancies there are, which you can refer to by looking into the install.sh file. This can be done by entering `vi install.sh` in the repos directory. To exacute the script, enter ./playlist01.sh.

#Development
I plan to expand this project, its fun to work on and I aim to make the script longer than the README.md.

#Requirements
Basically none, a Linux system (this should work on all standard linux systems including VMs and wsl) with the bash shell or similar and an internet connection. Doesn't require a GUI, but if you like album covers for some reason, just remove the `--no-video` flags in the script.
