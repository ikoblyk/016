#!/bin/bash

for i in {0..255}
do
timeout 0.5s nc -z -v  192.168.0.$i 80 2>&1 | grep succeeded
timeout 0.5s nc -z -v  192.168.0.$i 443 2>&1 | grep succeeded
done

