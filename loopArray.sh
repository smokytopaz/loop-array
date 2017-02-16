#!/bin/bash

dir=$1
filename=$2
getFiles=(`ls $dir`)
    
for i in "${getFiles[@]}"
do
    if [ "$i" != "$filename" ] && [ -L $dir/$i ]; then
         echo "$i yay"
         echo "removing symlink"
     elif [ "$i" != "$filename" ]; then
         echo "$i unique, not linked"
         echo "not removing"
     else
        echo $i
        echo "file already exists"
    fi
done
