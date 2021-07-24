#Create a script that accepts a command line parameter intended to be the name of a directory. With the script, attempt to change to the indicated directory, be sure to redirect errors to /dev/null on the command as we will be providing our own messaging.

Test the results of the command to change directories. If it was successful, indicate success and display the contents of the directory. If it was not successful, indicate we cannot change directories and exit to the terminal with a custom exit code (less than 200).
#!/bin/bash
#Script using Error handling with exit
echo "Change the directory and list the contents"
DIRECTORY=$1
cd $DIRECTORY 2>/dev/null
if [ "$?" = "0" ]; then
echo "We can change into the directory $DIRECTORY, and here see the contents"
echo "`ls -al`"
else
echo "Cannot change directories, exiting with an error and no listing"
exit 111
fi

Command used: sh Assignment20.sh
output:
Change the directory and list the contents
We can change into the directory , and here see the contents
total 10298
drwxr-xr-x 1 Dell 197121       0 Jul 24 21:38 .
drwxr-xr-x 1 Dell 197121       0 Jul 16 08:54 ..
drwxr-xr-x 1 Dell 197121       0 Jul 24 12:45 .VirtualBox
-rw-r--r-- 1 Dell 197121   18691 Jul 24 21:38 .bash_history
drwxr-xr-x 1 Dell 197121       0 Jul 13 11:13 .cache
drwxr-xr-x 1 Dell 197121       0 Jul 21 20:13 .config
drwxr-xr-x 1 Dell 197121       0 Jul 13 19:27 .eclipse
drwxr-xr-x 1 Dell 197121       0 Jul 19 11:59 .git
-rw-r--r-- 1 Dell 197121     111 Jul 24 16:30 .gitconfig
drwxr-xr-x 1 Dell 197121       0 Jul 13 16:01 .groovy
drwxr-xr-x 1 Dell 197121       0 Jul  9 11:00 .idlerc
drwxr-xr-x 1 Dell 197121       0 Jul 17 15:39 .ipython
drwxr-xr-x 1 Dell 197121       0 Jul 22 18:10 .jenkins
drwxr-xr-x 1 Dell 197121       0 Jul 17 16:15 .jupyter
drwxr-xr-x 1 Dell 197121       0 Jul 16 18:36 .lemminx
-rw-r--r-- 1 Dell 197121      20 Jul 24 18:03 .lesshst
drwxr-xr-x 1 Dell 197121       0 Jul 16 11:07 .m2
drwxr-xr-x 1 Dell 197121       0 Jul 24 12:12 .p2
-rw-r--r-- 1 Dell 197121      15 Jul 17 15:34 .python_history
-rw-r--r-- 1 Dell 197121   13522 Jul 24 18:02 .viminfo
drwxr-xr-x 1 Dell 197121       0 Jul  6 12:58 .vscode
-rw-r--r-- 1 Dell 197121   12288 Jul 17 23:53 1.db
drwxr-xr-x 1 Dell 197121       0 Jul 16 15:06 3D Objects
drwxr-xr-x 1 Dell 197121       0 Jul 19 11:36 A1
drwxr-xr-x 1 Dell 197121       0 Jul 19 11:59 A2
drwxr-xr-x 1 Dell 197121       0 Jul 19 12:05 A3
drwxr-xr-x 1 Dell 197121       0 Jul 17 04:02 AppData
lrwxrwxrwx 1 Dell 197121      29 Jul 16 08:54 Application Data -> /c/Users/Dell/AppData/Roaming
drwxr-xr-x 1 Dell 197121       0 Jul 16 15:06 Contacts
lrwxrwxrwx 1 Dell 197121      57 Jul 16 08:54 Cookies -> /c/Users/Dell/AppData/Local/Microsoft/Windows/INetCookies
drwxr-xr-x 1 Dell 197121       0 Jul 24 19:20 Desktop
drwxr-xr-x 1 Dell 197121       0 Jul 18 17:05 Documents
drwxr-xr-x 1 Dell 197121       0 Jul 24 11:34 Downloads
drwxr-xr-x 1 Dell 197121       0 Jul 16 15:06 Favorites
...