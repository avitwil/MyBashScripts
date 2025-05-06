#!/bin/bash

# created by avi twil
echo "User creation script by Avi Twil . please wait .."
sleep 3
# Ask for new user name
read -p "Enter new user name: " UNAME

# Ask for tne new user Password
read -p "Enter the Password for the new user: " UPASS

# Ask if new user have sudo privilages
read -p 'Do you want this user to have "sudo" privileges ? [y/n]: ' SUDOYN
# Checking for user input
until [ "$SUDOYN" = "y"  -o  "$SUDOYN" = "n" ]; do
read -p 'Do you want this user to have "sudo" privileges ? [y/n]: ' SUDOYN
done
# Creating user depending on the the user inputs
if [ "$SUDOYN" = "y" ]
then
          useradd $UNAME
          echo $UPASS | passwd --stdin $UNAME
          usermod -s /usr/bin/zsh $UNAME
          usermod -aG sudo $UNAME
else
          useradd $UNAME
          echo $UPASS | passwd --stdin $UNAME
          usermod -s /usr/bin/zsh $UNAME
fi
# activating changes
update-passwd

sleep 1
cat /etc/passwd | grep $UNAME
sleep 1
cat /etc/group | grep $UNAME
sleep 1
echo "User creation complete"
