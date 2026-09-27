#! /bin/bash

# Remove the log files older than 2 weeks.

# 1. decide which folder
# 2. .java and .py .logfile are there in that folder
# 3. find only .log file
# 4. find only more than two weeks old files


SOURCE_DICT=/tmp/appp_logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DICT ]; then
   echo -e "$G Source Directory already exist $N"
else
   echo -e "$R Please make sure $SOURCE_DICT exist $N"
fi

FILES=$(find SOURCE_DICT -name -mtime +14)

while IFS= read -r line
do
  echo "Deleting file: $line"
  rm -rf $line
done <<<$FILES

