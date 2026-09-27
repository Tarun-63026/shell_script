#! /bin/bash

COURSE="Devops from the current script"


echo "The variable of the current script :$COURSE"
echo "PID for the current script: $$"

source ./16-other_script.sh

echo "Variable from the other script :$COURSE"


