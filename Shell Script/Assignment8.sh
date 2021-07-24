#Create a script that interacts with the user. You will want to prompt the user to enter the following information (which you will capture and place into the following variables):

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

Command used: sh Assignment8.sh
output:
Enter your First name:
Navya
Enter your Last name:
Datla
Enter your age:
25
Age of user in 10 years will be:25+10 years old.
