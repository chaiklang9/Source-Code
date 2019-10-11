#!/bin/sh
user=radius
pass=radpass
mkdir -p /root/backup_db 2>/dev/null
dst_path="/root/backup_db"
db="radius"

mysqldump -u$user -p$pass $db>$dst_path/"$(date +"%d%m%Y")".sql
