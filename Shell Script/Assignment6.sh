# Write a script that evaluates and displays the following arithmetic operations:

Add two numbers
Add two numbers and multiply by a third, do not group anything 
Add two numbers, grouped (changing order of precedence) and multiply by a third

Keep in mind special characters and/or escape characters as needed.

#!/bin/bash
#Evaluating Arthmetic Expressions.
num1=$1
num2=$1
read -p "Enter your num1: " num1
read -p "Enter your num2: " num2
Ans=$(($num1 + $num2))
echo "$Ans"

#Evaluate an arithmetic expression
a=$1
b=$1
read -p "Enter your num1: " a
read -p "Enter your num2: " b
Add = $(($a + $b))
read -p "Enter your num3: " c
Mul=$(($Add * $c))




