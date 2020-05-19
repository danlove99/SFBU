#!/bin/bash

[[ ! -d /home/$(whoami)/backups ]] && mkdir /home/$(whoami)/backups

backup_dir=$(date +'%m-%d-%Y')

tar -czf "/home/$(whoami)/backups/current_backup.tar.gz" -C / $1

#echo "Backup dir for today: /home/$(whoami)/backups/${backup_dir}"
#echo "${1}"
