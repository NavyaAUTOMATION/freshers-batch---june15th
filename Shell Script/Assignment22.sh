#Create a script to demonstrate the visibility of variables and when they are available within a script and its functions. Define a global variable, a function that defines a local variable and then display both BEFORE calling the function, call the function, then display both AFTER calling the function.
#!/bin/bash
#Scripting on demonstrating variable scope.
GLOBAL_VAR="Globally Visible"
funcExample (){
     LOCALVAR="Locally Visible"
     echo "From within the function, the variable is $LOCALVAR..."
}
clear
echo "This step happens first..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (before the function call)"
echo "LOCALVAR variable= $LOCALVAR (before the function call)"
echo ""
echo "Calling Function - funcExample()"
echo ""
funcExample
echo ""
echo "Function has been called..."
echo ""
echo "GLOBAL variable = $GLOBALVAR (after the function call)"
echo "LOCALVAR variable = $LOCALVAR (after the function call)"

Command used: sh Assignment22.sh
output:
This step happens first...

GLOBAL variable =  (before the function call)
LOCALVAR variable=  (before the function call)

Calling Function - funcExample()

From within the function, the variable is Locally Visible...

Function has been called...

GLOBAL variable =  (after the function call)
LOCALVAR variable = Locally Visible (after the function call)