#! /bin/bash

USERID=$( id -u )
TIME_STAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Your script is running at $TIME_STAMP"

VALIDATE () {
    if [ $1 -ne 0 ]; then
       echo -e " $2.. $R failure.. $N"
    else
       echo -e " $2.. $G success.. $N"
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

dnf install dockerr -y &>> $LOGFILE
VALIDATE $? "Installation of docker"

echo "Thank you!"