#We need to create a menu for our users. Display a menu containing three choices AND
a choice to allow them to exit. Display that menu and prompt for a choice. Upon
choosing the value, it should simply clear the screen and redisplay the menu (loop until
the exit choice is given).
HOWEVER, we need to be sure that the end user cannot use CTL-C, CTL-Z or a KILL
command to terminate the application. Add a 'trap' in the script to capture those
attempts and provide instructions on how to exit the script using the menu choice
instead.
#!/bin/bash
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

