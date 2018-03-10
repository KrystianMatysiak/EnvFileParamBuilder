#!/bin/bash

ENV_FILES_PARAM=''
ENV_DIR=$1

if [ ! -d $ENV_DIR ]; then
  echo "Directory $ENV_DIR does not exist"
  exit
fi

ENV_DIR_FILES=`ls $ENV_DIR | cut -f 1`
for FILE in $ENV_DIR_FILES;
do
  ENV_FILES_PARAM+="--env-file $FILE \\
  " 
done

echo "env files param: $ENV_FILES_PARAM"
echo "env directory: $ENV_DIR"
