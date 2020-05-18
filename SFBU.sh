#!/bin/bash

if [ ! -f /home/$(whoami)/backups ]; then
	mkdir /home/$(whoami)/backups
fi


backup_dir=$(date +'%m-%d-%Y')


tar -czf "/home/$(whoami)/backups/${backup_dir}.tar.gz" -C / $1

echo "Backup dir for today: /home/$(whoami)/backups/${backup_dir}"
echo "${1}"
