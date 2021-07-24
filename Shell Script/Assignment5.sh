#Write a script that runs three commands:

Evaluate an arithmetic expression
Attempt to remove a file that does not exist in the current directory
Evaluate another arithmetic expression


Immediately after each command, echo the exit status of that command to the terminal using the appropriate variable to show success and failure exit codes.
#!/bin/bash
#Exist status of the commands.
num1=$1
num2=$1
read -p "Enter your num1: " num1
read -p "Enter your num2: " num2
Ans=$(($num1 + $num2))
echo "$Ans"

#Attempt to remove a file that does not exist in the current directory

read -p "enter dir name: " direct
if [ -d "$direct" ]
then echo "$direct exists"
     read -p "enter filename you want to remove: " file
     rm $direct/$file
else echo "$direct does not exist"
fi

#Evaluate an arithmetic expression
a=$1
b=$1
read -p "Enter your num1: " a
read -p "Enter your num2: " b
Ans=$(($a * $b))
echo "$Ans"

Command used : sh Assignment5.sh
output:
Enter your num1: 2
Enter your num2: 3
5
enter dir name: navya.sh
navya.sh does not exist
Enter your num1: 8
Enter your num2: 3
24
