#!/bin/bash

#nmap -sT -p 80, 443 192.168.0.-255

#awk '{split($0,a,"|"); print a[3],a[2],a[1]}'

for i in {0..255}
do
#  ss -nt -  "( src 192.168.0.$i or dst 192.168.0.$i ) and ( dport = :80 or dport = :443 )"
timeout 0.5s nc -z -v  192.168.0.$i 80 2>&1 | grep succeeded
timeout 0.5s nc -z -v  192.168.0.$i 443 2>&1 | grep succeeded
done
#ss -nt '( dport = :80 or dport = :443 )'
