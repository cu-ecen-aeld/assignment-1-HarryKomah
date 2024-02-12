#!/bin/bash

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <filesdir> <searchstr>"
  exit 1
fi

filesdir=$1
searchstr=$2
if [[ ! -d $filesdir ]]; then
  echo "$filesdir does not represent a directory on the filesystem"
  exit 1
fi


numLines=$(grep -r "$searchstr" $filesdir | wc -l)

numFiles=$(grep -rl "$searchstr" $filesdir | wc -l)

echo "The number of files are ${numFiles} and the number of matching lines are ${numLines}"


