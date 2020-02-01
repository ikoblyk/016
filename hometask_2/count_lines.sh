#!/bin/bash

if [ ! -f "versions.txt" ]; then
  curl http://yoko.ukrtux.com:8899/versions.txt --output versions.txt
fi

sort versions.txt | uniq -c | sort -r | head -1

