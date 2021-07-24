#Write a script that sets FOUR variables:

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

