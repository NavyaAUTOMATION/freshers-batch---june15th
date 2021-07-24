#Write a script that assigns a variable that contains a list of all shell scripts (*.sh) in the current directory (command redirection). Using the 'for'statement from the course, iterate through that list of files and display the filename of each and cat out the contents to the terminal.
#!/bin/bash
#Script on for loop
echo "List all the shell scripts of the directory"
SHELLSCRIPTS=`ls *.sh`
for SCRIPT in $SHELLSCRIPTS; do
DISPLAY="`cat $SCRIPT`"
echo "File: $SCRIPT - Scripts $DISPLAY"
done

Command Used: sh Assignment13.sh
output:
File: Assignment1.sh - Scripts # Create a script that, when run, will display the following environment variables to the console:

USER
HOME
HISTCONTROL
TERM

# !/bin/bash
# Displaying of environmental variables to console.
clear
echo "This script will give us environment information"
echo "=============================================="
echo "Hello Unicorn:$USER"
echo "Home Directory is:$HOME"
echo " Control History:$HISCONTROL"
echo "Terminal Session:$TERM"File Was Read On: Fri Jul  9 00:32:03 IST 2021

Command Used: sh Assignment1.sh

output:
This script will give us environment information
==============================================
Hello Unicorn:
Home Directory is:/c/Users/Dell
 Control History:
Terminal Session:xtermFile Was Read On: Fri Jul 9 00:32:03 IST 2021
File: Assignment10.sh - Scripts #Create a script that, when run, will accept two command line values as arguments. These arguments should be a username and password and assigned to two variables in the script named appropriately. Finally, echo those values out to the terminal when run to indicate they were read and assigned as expected.
#!/bin/bash
#Command line values
USER_NAME=$1
PASSWORD=$2
echo "The following user name is $1 and password is $2"
File Was Read On: Fri Jul  9 00:32:16 IST 2021

Command used: sh.Assignment10.sh
Output:

The following user name is  and password is
Was:      cannot open `Was' (No such file or directory)
Read:     cannot open `Read' (No such file or directory)
On::      cannot open `On:' (No such file or directory)
Fri:      cannot open `Fri' (No such file or directory)
Jul:      cannot open `Jul' (No such file or directory)
9:        cannot open `9' (No such file or directory)
00:32:16: cannot open `00:32:16' (No such file or directory)
IST:      cannot open `IST' (No such file or directory)
2021:     cannot open `2021' (No such file or directory)
File: Assignment11.sh - Scripts #Create a script that interacts with the user. Prompt them to guess a secret number between 1 and 5. Read the guess from the terminal and assign it to a variable. Using the 'if' statement from the course, test that value to determine if they guessed the right number (you choose the correct value). If they do, display a success message, otherwise do nothing.
#!/bin/bash
#If script to guess a number
echo "Guess the Secret Number"
echo "Enter a Number Between 1 and 5: "
read GUESS
if [ $GUESS -eq 3 ]
then
echo "You Guessed the Correct Number!"
fi

Command used: sh.Assignment11.sh
Output:
Guess the Secret Number
Enter a Number Between 1 and 5:
3
You Guessed the Correct Number!
File: Assignment12.sh - Scripts #Write a script that will prompt the user to enter a number between 1 and 3. Capture that number in a variable and then test that variable. Be sure to display the variable and it's value as appropriate within an if/then/else statement where the final statement will display if they did not enter a number between 1 and 3 telling them they failed to follow instructions. Redirect errors from each of the tests to /dev/null (to prevent script errors from showing if text is entered for example).
#!/bin/bash
#Script of if else nested if statements
clear
echo "Enter a number between 1 and 3:"
read VALUE
if [ "$VALUE" -eq "1" ] 2>/dev/null; then
echo "You entered #1"
elif [ "$VALUE" -eq "2" ] 2>/dev/null; then
echo "You successfully entered #2"
elif [ "$VALUE" -eq "3" ] 2>/dev/null; then
echo "You entered the 3rd number"
else
echo "You didn't follow the directions!"
fi

Command used: sh.Assignment12.sh

Output:
Enter a number between 1 and 3:
2
You successfully entered #2
File: Assignment13.sh - Scripts #Script on for loop
echo "List all the shell scripts of the directory"
SHELLSCRIPTS=`ls *.sh`
for SCRIPT in $SHELLSCRIPTS; do
DISPLAY="`cat $SCRIPT`"
echo "File: $SCRIPT - Scripts $DISPLAY"
done
File: Assignment14.sh - Scripts #Script on case statement
clear
echo "MAIN MENU"
echo "a) Choice One"
echo "b) Choice Two"
echo "c) Choice Three"
echo "Enter Choice:"
read MENUCHOICE
case $MENUCHOICE in
a)
echo "Congratulations for Choosing the First Option";;
b)
echo "Choice 2 Chosen";;
c)
echo "Last Choice Made";;
*)
echo "You chose unwisely";;
esac
File Was Read On: Fri Jul  9 00:32:42 IST 2021
File: Assignment15.sh - Scripts #Script on while loop
echo "Enter the number of times to display the 'Hello World' message"
read DISPLAY_NUMBER
COUNT=1
while [ $COUNT -le $DISPLAY_NUMBER ]
do

echo "Hello World - $COUNT"
COUNT="`expr $COUNT + 1`"
done
File: Assignment16.sh - Scripts #Script to read file name
echo "Enter a filename to read: "
read FILE
while read -r RAINBOW; do
echo "Rainbow Name: $RAINBOW"
done < "$FILE"
File: Assignment17.sh - Scripts #!/bin/bash
#Scripting on reading and writing a file using file descriptor
echo "Enter a file name to read:"
read FILE
exec 7<>$FILE
while read -r SUPERHERO; do
echo "Superhero Name:$SUPERHERO"
done <&7
echo "File Was Read On: `date`">&7
exec 7>&-
File: Assignment18.sh - Scripts # Script on delimiter example using IFS
echo "Enter filename to navya: "
read FILE
echo "Enter the Delimiter: "
read DELIM
IFS="$DELIM"
while read -r CPU MEMORY DISK; do
echo "CPU:$CPU"
echo "Memory:$MEMORY"
echo "Disk:$DISK"
done <"$FILE"
File: Assignment19.sh - Scripts #We need to create a menu for our users. Display a menu containing three choices AND
a choice to allow them to exit. Display that menu and prompt for a choice. Upon
choosing the value, it should simply clear the screen and redisplay the menu (loop until
the exit choice is given).
HOWEVER, we need to be sure that the end user cannot use CTL-C, CTL-Z or a KILL
command to terminate the application. Add a 'trap' in the script to capture those
attempts and provide instructions on how to exit the script using the menu choice
instead.

#Scripting on trapping events and shell stopping
clear
trap 'echo" - Please Press Q to Exit.."' SIGINT SIGTERM SIGTSTP
while [ "$CHOICE" != "Q" ] && [ "$CHOICE" != "q" ]; do
echo "MAIN MENU"
echo "1) Choice One"
echo "2) Choice Two"
echo "3) Choice Three"
echo "Q) Quit/Exit"
read CHOICE
clear
done
File: Assignment2.sh - Scripts #Write a script that sets FOUR variables:

MYUSERNAME
MYPASSWORD
STARTOFSCRIPT
ENDOFSCRIPT

Populate the first two with some default value and use command redirection to set the third and fourth value to the date/time of when the script was started and completed. Within the script, be sure to display the values to the terminal when run.
#!/bin/bash
#Scripting on four variables.
MY_USERNAME="Unicorn"
MY_PASSWORD="Jaisal2468"
START_OF_SCRIPT=`date`
END_OF_SCRIPT=`date`
echo "My username is:$MY_USERNAME"
echo "My password is:$MY_PASSWORD"
echo "My script started at:$START_OF_SCRIPT"
echo "My script ended at:$END_OF_SCRIPT"

Command used to execute: sh Assignment2.sh

output:

My username is:Unicorn
My password is:Jaisal2468
My script started at:Sat Jul 24 19:27:18 IST 2021
My script ended at:Sat Jul 24 19:27:18 IST 2021
File: Assignment20.sh - Scripts #Script using Error handling with exit
echo "Change the directory and list the contents"
DIRECTORY=$1
cd $DIRECTORY 2>/dev/null
if [ "$?" = "0" ]; then
echo "We can change into the directory $DIRECTORY, and here see the contents"
echo "`ls -al`"
else
echo "Cannot change directories, exiting with an error and no listing"
exit 111
fi
File: Assignment21.sh - Scripts #Script on simple function
echo "Starting the function definition..."
funcExample () {
echo "We are now INSIDE the function..."
}
echo "But we did NOT call the function, yet..."
echo "NOW let's call it"
#call the function
funcExample
echo "...and back outside the function, continuing to the next command."
echo "done"
File: Assignment22.sh - Scripts #Scripting on demonstrating variable scope.
GLOBAL_VAR="Globally Visible"
funcExample (){
     LOCALVAR="Locally Visible"
     echo "From within the function, the variable is $LOCALVAR..."
}
clear
echo "This step happens first..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCALVAR variable= $LOCALVAR (before the function call)"
echo ""
echo "Calling Function - funcExample()"
echo ""
funcExample
echo ""
echo "Function has been called..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (after the function call)"
echo "LOCALVAR variable = $LOCALVAR (after the function call)"
File: Assignment23.sh - Scripts #Scripting on Functional Parameters
USER_NAME=$1
funcAgeInDays () {
echo "Hello $USER_NAME, You are $1 Years Old."
echo "That makes you approximately `expr $1 \* 365` days old..."
}
clear
echo "Enter Your Age: "
read USER_AGE
funcAgeInDays $USER_AGE
File: Assignment3.sh - Scripts #Develop a script that creates, sets and displays two variables to the terminal when run. Within this script, add comments to explain what the script is doing, what each variable is and, using inline comments, what each command is doing.
#!/bin/bash
#Script with inline commands.
MY_USERNAME="Unicorn" #My username is"
MY_FOLDER="Shell Script" #My Foldername is"
echo "The username of the user is:$MY_USERNAME" #Username of the user will be displayed.
echo "The folder name of the user is:$MY_FOLDER" #Name of the folder will be displayed.
DATE_TIME=`date`
echo "The time and date will be displayed:$DATE_TIME" #Time will be displayed during the run.

Command Used: sh.Assignment3.sh

output:
The username of the user is:Unicorn
The folder name of the user is:Shell Script
The time and date will be displayed:Sat Jul 24 19:32:21 IST 2021
File: Assignment4.sh - Scripts #Create a simple script that does the following:

Echo a full sentence to the terminal
Echo a different full sentence, but redirect it to /dev/null

Run and display the results and make sure the statements appear where intended.

#!/bin/bash
#Using /dev/null
echo "To display line on a terminal with a simple script"
echo "To Display nothing and inside null" >>/dev/null

Command Used: sh.Assignment4.sh

output:

To display line on a terminal with a simple script
File: Assignment5.sh - Scripts #Write a script that runs three commands:

Evaluate an arithmetic expression
Attempt to remove a file that does not exist in the current directory
Evaluate another arithmetic expression


Immediately after each command, echo the exit status of that command to the terminal using the appropriate variable to show success and failure exit codes.
#!/bin/bash
#Exist status of the commands.
set -e
echo `expr $a + $b`
echo $?
echo rm navya.sh
echo $?
echo `expr $a + $b`
echo $?

Command Used: sh.Assignment5.sh

Output:
File: Assignment6.sh - Scripts #Write a script that evaluates and displays the following arithmetic operations:

Add two numbers
Add two numbers and multiply by a third, do not group anything
Add two numbers, grouped (changing order of precedence) and multiply by a third

Keep in mind special characters and/or escape characters as needed.

#!/bin/bash
#Evaluating Arthmetic Expressions.
a=9 b=7 c=16
echo `expr $a + $b`
echo `expr $a + $b \* $c`
echo `expr \($a+ $b\) \* $c`

Command Used: sh.Assignment6.sh
Output:
File: Assignment7.sh - Scripts #Write a script that will use command substitution to dynamically set variable values:

TODAYSDATE - should contain date/time stamp when executed
USERFILES - the results of a find run on the /home directory to list all files owned by 'user' account


Additionally, set two aliases:

TODAY - should be an alias for the 'date' command
UFILES - should be an alias to the full command used to set the variable USERFILES above

Finally, display all variables and alias values when the script is run.
#!/bin/bash
#Command substitution to dynamically set variable values.
shopt -s expand_aliases
alias TODAY="date"
alias UFILE="find/home-user name"
TODAYS_DATE=`date`
USER_FILES=`find/home-user name`
echo "Today's date:$TODAYS_DATE"
echo "User name:$U_FILES"
a=`TODAY`
b=`UFILES`
echo "With alias,TODAY is:$a"
echo "With alias, UFILES is:$b"

Command Line: sh.Assignment7.sh
output:
File: Assignment8.sh - Scripts #Create a script that interacts with the user. You will want to prompt the user to enter the following information (which you will capture and place into the following variables):

FIRSTNAME
LASTNAME
USERAGE

Greet the user with their name and current age displayed and then calculate and display their age in 10 years.
#!/bin/bash
#Interactive with user
echo "Enter your First name:$FIRST_NAME"
read FIRST_NAME
echo "Enter your Last name:$LAST_NAME"
read LAST_NAME
echo "Enter your age:$USER_AGE"
read USER_AGE
echo "Age of user in 10 years will be:`expr $USER_AGE+10` years old."

Command used: sh.Assignment8.sh
output:
Enter your First name:
Navya
Enter your Last name:
Datla
Enter your age:
25
Age of user in 10 years will be:25+10 years old.
File: Assignment9.sh - Scripts #Write a script intended to iterate through an array called SERVERLIST containing at least four values (server names). Display all four values to the terminal when run.
#!/bin/bash
# SERVERLIST of Variables using Arrays.
SERVERLIST=("websrv01" "websrv02" "websrv03" "websrv04")
COUNT=0
for INDEX in ${SERVERLIST[@]}; do
echo "Processing Server: ${SERVERLIST[COUNT]}"
COUNT="`expr $COUNT + 1`"
done

Command used: sh.Assignment9.sh
output:
Processing Server: websrv01
Processing Server: websrv02
Processing Server: websrv03
Processing Server: websrv04

