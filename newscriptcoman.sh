#!/bin/bash

echo "script creation command by Avi Twil"
sleep 2
# creating directories
mkdir ~/MyScripts
mkdir ~/MyScripts/NewScripts
# creating The script creation script
touch ~/.Newscript
chmod +x ~/.Newscript
echo "#!/bin/bash" >~/.Newscript
echo " " >>~/.Newscript
echo 'echo "New Bash script creation APP"' >>~/.Newscript
echo 'read -p "Enter your name:  " My_Name' >>~/.Newscript
echo 'sleep 1' >>~/.Newscript
echo 'read -p "Enter new file name:  " File_Name' >>~/.Newscript
echo 'File_Name="${File_Name}.sh"' >>~/.Newscript
echo 'touch ~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'chmod +x ~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'echo "#!/bin/bash" >~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'echo " " >>~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'echo "# created by $My_Name " >>~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'sleep 3' >>~/.Newscript
echo 'ls -l ~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
echo 'sleep 2' >>~/.Newscript
echo 'echo "File ~/MyScripts/NewScripts/$File_Name Created by $My_Name :) "' >>~/.Newscript
echo 'sleep 2' >>~/.Newscript
echo 'echo "Entering Edit Mode in 5 Sec "' >>~/.Newscript
echo 'sleep 5' >>~/.Newscript
echo 'nano ~/MyScripts/NewScripts/$File_Name' >>~/.Newscript
# creating new command (as alias) in .zshrc file
echo '# alias for new script command' >>~/.zshrc
echo 'alias newscript="~/.Newscript"' >>~/.zshrc
sleep 1
echo 'Command creation complete'
sleep 1
CUser=whoami
echo "This Command only work on $CUser ! "
sleep 1
echo 'Just write: newscript  .  and then follow the instructions'
sleep 1
echo 'creating new bash script EASY'
sleep 1
echo 'Just Reboot your system for the app to take effect'
sleep 1
echo 'Enjoy'


