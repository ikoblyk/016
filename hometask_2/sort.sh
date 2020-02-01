#!/bin/bash

if [ ! -f "versions.txt" ]; then
  curl http://yoko.ukrtux.com:8899/versions.txt --output versions.txt
fi

sort -V versions.txt | uniq 
