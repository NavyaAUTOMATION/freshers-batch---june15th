#Create a simple script containing a single function. This function should display a message to clearly indicate it was generated when the function was run. Then, display another message outside the function clearly indicating it was generated outside of it.
#!/bin/bash
#Script on simple function 
echo "Starting the function definition..."
funcExample () {
echo "We are now INSIDE the function..."
}
echo "But we did NOT call the function, yet..."
echo "NOW let's call it"
#call the function
funcExample
echo "...and back outside the function, continuing to the next command."
echo "done"

Command used: sh Assignment21.sh
output:
Starting the function definition...
But we did NOT call the function, yet...
NOW let's call it
We are now INSIDE the function...
...and back outside the function, continuing to the next command.
done
