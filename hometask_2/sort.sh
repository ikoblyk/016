#!/bin/bash

if [ ! -f "versions.txt" ]; then
  curl http://yoko.ukrtux.com:8899/versions.txt --output versions.txt
fi

sort -V -o versions.txt versions.txt

cat versions.txt
