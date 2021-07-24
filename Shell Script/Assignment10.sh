#Create a script that, when run, will accept two command line values as arguments. These arguments should be a username and password and assigned to two variables in the script named appropriately. Finally, echo those values out to the terminal when run to indicate they were read and assigned as expected.
#!/bin/bash
#Command line values
USER_NAME=$1
PASSWORD=$2
echo "The following user name is $1 and password is $2"

