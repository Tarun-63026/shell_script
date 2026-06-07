#! /bin/bash

USERID=$( id -u )

if [$USERID -eq 0 ]; then
   echo "Please swicth to the super user"
   exit 1
else
   echo "You are super user"
fi

dnf install mysql -y
