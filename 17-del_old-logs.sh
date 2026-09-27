#!/bin/bash

# Remove the log files older than 2 weeks.

# 1. Decide which folder
# 2. Java, Python and log files are present in that folder
# 3. Find only .log files
# 4. Find files older than two weeks

SOURCE_DICT=/tmp/app_logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d "$SOURCE_DICT" ]; then
   echo -e "$G Source Dictory already exist $N"
else
   echo -e "$R Please make sure Source directory exists $N"
fi

FILES=$(find "$SOURCE_DICT" -type f -name ".log*" -mtime +14)

while IFS= read -r line
do
  echo "Deleting File: $line"
  rm -rf $line
done <<<$lines


