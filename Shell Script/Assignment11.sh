#Create a script that interacts with the user. Prompt them to guess a secret number between 1 and 5. Read the guess from the terminal and assign it to a variable. Using the 'if' statement from the course, test that value to determine if they guessed the right number (you choose the correct value). If they do, display a success message, otherwise do nothing.
#!/bin/bash
#If script to guess a number
echo "Guess the Secret Number"
echo "Enter a Number Between 1 and 5: "
read GUESS
if [ $GUESS -eq 3 ]
then
echo "You Guessed the Correct Number!"
fi

Command used: sh Assignment11.sh
Output:
Guess the Secret Number
Enter a Number Between 1 and 5:
3
You Guessed the Correct Number!

