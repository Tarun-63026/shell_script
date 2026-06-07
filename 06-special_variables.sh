#! /bin/bash

echo "Print all variables : $@"
echo "Number of variables : $#"
echo "Script name : $0"
echo "Home directory of the user is : $HOME"
echo "Current working directory : $PWD"
echo "Which user is running the script : $USER"
echo "Hostname of the syste, : $HOSTNAME"
echo "Process ID of the current shell script : $$"
sleep 10
echo "Prcoess ID of the last background process : $!"
sleep 10 &