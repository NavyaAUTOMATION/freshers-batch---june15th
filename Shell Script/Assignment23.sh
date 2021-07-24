#Write a script that takes a single command line parameter intended to be the user's first name. Prompt the user for their age and read that into a variable. Using the appropriate method to make that command line parameter visible to a function, pass the age captured to the function and display a message to the user addressing them by name and confirming their age, add a calculation of their age in number of days.
#!/bin/bash
#Scripting on Functional Parameters
USER_NAME=$1
funcAgeInDays () {
echo "Hello $USER_NAME, You are $1 Years Old."
echo "That makes you approximately `expr $1 \* 365` days old..."
}
clear
echo "Enter Your Age: "
read USER_AGE
funcAgeInDays $USER_AGE

Command used: sh Assignment23.sh
output:
Enter Your Age:
25
Hello , You are 25 Years Old.
That makes you approximately 9125 days old...
