#! /bin/bash

file="text.txt"
#requires dependancies: youtube-dl and mpv, install from install script
while read -r line; do
	
	if [[ $line == *"no"* ]]; then

		echo "Starting playlist"

		echo "Now Playing: Swedish House Mafia - Don't you worry child"
		mpv --no-video "https://www.youtube.com/watch?v=3mWbRB3Y4R8"	# Swedish House Mafia - Don't you worry child
		echo "Now Playing: Macklemore - Downtown"
		mpv --no-video "https://www.youtube.com/watch?v=l-uVkrzo8eU"	# Macklemore - Downtown
		echo "Now Playing: Bruno Mars - The Other Side"
		mpv --no-video "https://www.youtube.com/watch?v=DVCQ6m6V0YE"	# Bruno Mars - The Other Side
		echo "Now Playing: Maroon 5 - Sunday Morning"
		mpv --no-video "https://www.youtube.com/watch?v=U9-f4Mosb_A"	# Maroon 5 - Sunday Morning
		echo "Now Playing: Guy Sebastian - Who's That Girl"
		mpv --no-video "https://www.youtube.com/watch?v=ip2mwfG83KE"	# Guy Sebastian - Who's That Girl
		echo "Rihanna - FourFiveSeconds"
		mpv --no-video "https://www.youtube.com/watch?v=kt0g4dWxEBo"	# Rihanna - FourFiveSeconds

	elif [[ $line == *"yes"* ]]; then

		echo "Now Playing: Swedish House Mafia - Don't you worry child"
                mpv "https://www.youtube.com/watch?v=3mWbRB3Y4R8"    # Swedish House Mafia - Don't you worry child
                echo "Now Playing: Macklemore - Downtown"
                mpv "https://www.youtube.com/watch?v=l-uVkrzo8eU"    # Macklemore - Downtown
                echo "Now Playing: Bruno Mars - The Other Side"
                mpv "https://www.youtube.com/watch?v=DVCQ6m6V0YE"    # Bruno Mars - The Other Side
                echo "Now Playing: Maroon 5 - Sunday Morning"
                mpv "https://www.youtube.com/watch?v=U9-f4Mosb_A"    # Maroon 5 - Sunday Morning
                echo "Now Playing: Guy Sebastian - Who's That Girl"
                mpv "https://www.youtube.com/watch?v=ip2mwfG83KE"    # Guy Sebastian - Who's That Girl
                echo "Rihanna - FourFiveSeconds"
		mpv --no-video "https://www.youtube.com/watch?v=kt0g4dWxEBo"    # Rihanna - FourFiveSeconds
	fi
done < $file

# Note: I don't own this music and this project is just something fun I did to get a better understanding of bash scripting, I might expand on this later
