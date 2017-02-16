#!/bin/bash

dir=$1
getFiles=(`ls $dir`)

for i in "${getFiles[@]}"
do
  if [ "$i" != "$2" ]; then
    echo $i
    echo "removing symlink"
    sleep 1
  else
    echo $i
    echo "file already exists"
    sleep 1
  fi
done
