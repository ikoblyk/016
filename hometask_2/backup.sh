#!/bin/bash

if [ -d "$1" ] && [ -d "$2" ]; then
   from_dir=$1/./

   backup_dir=$(date +'%Y%m%d')
   to_dir=$2/$backup_dir
   mkdir $to_dir
   find $from_dir  -mtime -1 -exec rsync -R --ignore-existing "{}" $to_dir \;

else
    echo "Wrong Arguments!"
fi

