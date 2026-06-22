#!/bin/bash

COURSE="Devops from the current script"


echo "Before calling other script: $COURSE"
echo "Process instance ID of the current script: $$"

./ 15-other-script.sh

echo "After calling other script: $COURSE"

