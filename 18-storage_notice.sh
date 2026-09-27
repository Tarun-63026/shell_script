#! /bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOLD=6
MESSAGE=""

while IFS= read -r line
do
  USAGE=$(echo "$line" | awk -F " " '{print6F}' | cut -d "%" -f1)
  FOLDER=$(echo "$line" | awk -F " " '{printNF}')
  if [ $USAGE -ge $DISK_THERSHOLD ]; then
     MESSAGE+=Given $FOLDER storage is greather than the $DISK_THERSHOLD and current usage is $USAGE /n"
  fi
done <<< $DISK_USAGE

echo "Message: $MESSAGE"
