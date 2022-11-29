#!/bin/sh
FILE=$1
URL=$2
if test -f "$FILE"; then
  echo "$FILE exists in github cache. No download will be made."
else
  echo "$FILE does not exist, a download will be made at $URL"
  curl -L $URL -o $FILE
fi