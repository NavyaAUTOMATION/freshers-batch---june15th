#Create a simple text file containing a list of super heros (or some names if preferred), use at least four values, one per line in the file.

Write a bash shell script that then reads that file and displays it line by line on the terminal window.
#!/bin/bash
#Script to read file name
echo "Enter a filename to read: "
read FILE
while read -r SUPERHEROS; do
echo "Superhero Name: $SUPERHEROS"
done < "$FILE"

Command used: sh Assignment16.sh
Output:
Enter a filename to read:
SUPERHEROS

Hulk
Harrypotter
Bahubali
Hatim
