#Develop a script that creates, sets and displays two variables to the terminal when run. Within this script, add comments to explain what the script is doing, what each variable is and, using inline comments, what each command is doing.
#!/bin/bash
#Script with inline commands.
MY_USERNAME="Unicorn" #My username is"
MY_FOLDER="Shell Script" #My Foldername is"
echo "The username of the user is:$MY_USERNAME" #Username of the user will be displayed.
echo "The folder name of the user is:$MY_FOLDER" #Name of the folder will be displayed.
DATE_TIME=`date`
echo "The time and date will be displayed:$DATE_TIME" #Time will be displayed during the run.

Command Used: sh Assignment3.sh

output: 
The username of the user is:Unicorn
The folder name of the user is:Shell Script
The time and date will be displayed:Sat Jul 24 19:32:21 IST 2021
