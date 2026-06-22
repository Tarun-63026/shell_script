#!/bin/bash

set -e


USERID=$( id -u )

if [ $USERID -ne 0 ]; then
   echo "Please switch to the super user"
   exit 1
else
   echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
   echo "Your mysql installation was failed..."
else
   echo "Your mysql insatlltion was success.."
fi

dnf installl nginx -y

if [ $? -ne 0 ]; then
   echo "Your  nginx was failed..."
else
   echo "Your nginx insatlltion was success.."
fi

echo "Thank you!"