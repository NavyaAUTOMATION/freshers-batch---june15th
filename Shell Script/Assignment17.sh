#Create a simple text file containing a list of names (superheroes) and name it whatever you wish, should contain at least four values, one per line.

Write a script that will use a file descriptor defined for both reading and writing to that file (pick an appropriate number greater than the system reserved handles as talked about in the course). Filtering that file into an appropriate loop, display all values with that file. Finally, once complete, write a message with the time/date stamp to the file and close the descriptor.
#!/bin/bash
#Scripting on reading and writing a file using file descriptor
echo "Enter a file name to read:"
read FILE
exec 7<>$FILE
while read -r SUPERHERO; do
echo "Superhero Name:$SUPERHERO"
done <&7
echo "File Was Read On: `date`">&7
exec 7>&-

Command used: sh Assignment17.sh
output:
Hulk
Harrypotter
Bahubali
Hatim


File Was Read On: Sat Jul 9 20:15:01 IST 2021