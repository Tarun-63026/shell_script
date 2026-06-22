#!/bin/bash

COURSE="Devops from the current script"


echo "Variable valus from the current script: $COURSE"
echo "Process instance ID of the current script: $$"

./15-other-script.sh

echo "Course from the other script, course: $COURSE"

