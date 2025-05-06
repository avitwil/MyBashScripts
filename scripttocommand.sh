#!/bin/bash

if [  -z "$1"  ]
then
     echo "missing script file path"
elif ! [ -e $1 ]
then
     echo "file $1 not exist"
elif [  -z "$2"  ]
then
     echo "missing command name"
elif [ -e /usr/bin/$2 ]
then
     echo "command $2 allready exist"
elif [  -n "$3" -a "$3" != "sudo" ]
then
     echo "write sudo or nothing"
else
    touch /usr/bin/$2
    cat $1 >/usr/bin/$2
    chmod 755 /usr/bin/$2
    echo "command $2 created successfuly !!!!"
if [ "$3" = "sudo" ]
then
    chmod 700 /usr/bin/$2
    chown root /usr/bin/$2
fi
fi
