#!/bin/bash

sudo crontab -l > mycron
echo "0 0 * * 0 (apt-get -y update && apt-get -y upgrade) >> /var/log/update-$(date +'%Y%m%d').log 2>&1" >> mycron
sudo crontab mycron
rm mycron
