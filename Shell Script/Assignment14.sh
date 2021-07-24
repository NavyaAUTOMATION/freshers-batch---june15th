#Develop a simple three item menu to display on the terminal. Your script, upon display of the menu, should prompt the user to choose one of the three available options. Using the 'case' statement from the course, display three unique messages depending on which number they chose, with a catch all message letting them know if they went outside the bounds of instructions.
#!/bin/bash
#Script on case statement
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

Command used: sh Assignment14.sh
output:
MAIN MENU
a) Choice One
b) Choice Two
c) Choice Three
Enter Choice:
a
Congratulations for Choosing the First Option
