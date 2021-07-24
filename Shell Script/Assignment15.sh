#Create a script that prompts the user for a number. That number is to be used to display a simple message to the terminal X number of times (where X is the number captured from the user input). The message should include an indication of the number for each count the message is displayed.
#!/bin/bash
#Script on while loop
echo "Enter the number of times to display the 'Hello World' message"
read DISPLAY_NUMBER
COUNT=1
while [ $COUNT -le $DISPLAY_NUMBER ]
do

echo "Hello World - $COUNT"
COUNT="`expr $COUNT + 1`"
done

Command used: sh Assignment15.sh
output:
Enter the number of times to display the 'Hello World' message
15
Hello World - 1
Hello World - 2
Hello World - 3
Hello World - 4
Hello World - 5
Hello World - 6
Hello World - 7
Hello World - 8
Hello World - 9
Hello World - 10
Hello World - 11
Hello World - 12
Hello World - 13
Hello World - 14
Hello World - 15
