#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage $0 <writefile> <writestr>"
  exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname ${writefile})"

echo "$writestr" > $writefile
success=$?
echo $success
if [[ $success -ne 0 ]]; then
  echo "the file could not be created"
  exit 1
fi
