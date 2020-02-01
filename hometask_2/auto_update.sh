#!/bin/bash

log_dir=$(date +'%Y%m%d')
sudo crontab -l > mycron
echo "0 0 * * 0 (apt-get -y update && apt-get -y upgrade) >> /var/log/update-$log_dir.log 2>&1" >> mycron
sudo crontab mycron
rm mycron
