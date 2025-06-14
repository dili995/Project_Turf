#!/usr/bin/bash

#sets variables for the directory path and the name of the file
dir="/mnt/c/Users/egent/OneDrive/Desktop/git projects/bash_scripts"
file="/daily_health.log"

#change directory into the path set in the variable "dir"
cd "$dir"

#parses the date into the file
# "-e" helps embed newline character \n into the script and create a new line, as it would print \n without this option
date >> "$dir$file"
echo -e "\n" >> "$dir$file"

#create a log file and parse the result of the "top" command into the file 
# -b runs top in batch mode and not in interactive mode on the terminal
# "-n 1" parses in only 1 iteration of the results from top (and ensures it does not run indefinitely)
top -b -n 1 >> "$dir$file" 

#***PID=$!
#sleep 1
#kill -SIGINT $PID


#echo ... to signal the end of the script within the file
echo -e "\n...\n" >> "$dir$file"

#displays successful on the terminal to let user know the script has been completed
echo "successful"
