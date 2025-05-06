#!/bin/bash

# created by avi twil
echo "User creation script by Avi Twil . please wait .."
sleep 3
# Ask for new user name
read -p "Enter new user name: " UNAME

# Ask if new user have sudo privilages
read -p 'Do you want this user to have "sudo" privileges ? [y/n]: ' SUDOYN
# Checking for user input
until [ "$SUDOYN" = "y"  -o  "$SUDOYN" = "n" ]; do
read -p 'Do you want this user to have "sudo" privileges ? [y/n]: ' SUDOYN
done
# Creating user depending on the the user inputs
if [ "$SUDOYN" = "y" ]
then
          adduser $UNAME
          usermod -s /usr/bin/zsh $UNAME
          usermod -aG sudo $UNAME
else
          adduser $UNAME
          usermod -s /usr/bin/zsh $UNAME
fi
# activating changes
update-passwd

sleep 1
echo "$UNAME in passwd file"
echo "-------------------------------"
cat /etc/passwd | grep $UNAME
echo "-------------------------------"
sleep 1
echo "$UNAME in group file"
echo "-------------------------------"
cat /etc/group | grep $UNAME
echo "-------------------------------"
sleep 1
echo "User creation complete"


