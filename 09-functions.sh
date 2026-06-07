#! /bin/bash

USERID=$( id -u )

VALIDATE () {
    if [ $1 -ne 0 ]; then
       echo " $2 failure.."
    else
       echo " $2 success.."
    fi
}

if [ $USERID -ne 0 ]; then
   echo "Please switch to the super user"
   exit 1
else
   echo "You are super user"
fi

dnf install mysql -y
VALIDATE $? "Insatallation of mysql success"

dnf install git -y
VALIDATE $? "Insatllation of git success"

echo "Thank you!"