#! /bin/bash

USERID=$( id -u )
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

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

dnf install mysql -y &>> $LOGFILE
VALIDATE $? "Installation of mysql"

dnf install git -y &>> $LOGFILE
VALIDATE $? "Installation of git"

echo "Thank you!"