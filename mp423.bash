#!/bin/bash
#                  _  _  ____  _____ 
#  _ __ ___  _ __ | || ||___ \|___ / 
# | '_ ` _ \| '_ \| || |_ __) | |_ \ 
# | | | | | | |_) |__   _/ __/ ___) |
# |_| |_| |_| .__/   |_||_____|____/ 
#           |_|                      
# https://github.com/larbaer 

# FUNCTION-----------------------------------------------------------
mp423(){
# creates Folder to store mp3-files
	if [ ! -d ./mp3-files ]; then
		mkdir ./mp3-files;
	fi;

# converts all MP4-files to MP3 inside the directory and stores them
	for file in ./*.mp4 ; do
		ffmpeg -i "$file" "${file%.mp4}.mp3";
		mv "${file%.mp4}.mp3" ./mp3-files;
	done;
}

# MAIN---------------------------------------------------------------

# GTD : Get the thing done
mp423
