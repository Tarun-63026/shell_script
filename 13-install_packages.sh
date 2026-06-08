#!/bin/bash

USERID=$( id -u )
TIME_STAMP=$( date +F%-H%-M%-S% )
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

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
   echo "You are the super user, please proceed"
fi

for i in $@
do
  echo "Package to install : $i"
  dnf list installed $i &>>$LOG_FILE
  if [ $? -ne 0 ]; then
  echo -e "$i $R package need to be install $N"
  else
  echo -e "$i $G package already insatlled $N"
  fi
done