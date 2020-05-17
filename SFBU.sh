#!/bin/bash

if [ ! -f /home/$(whoami)/backups ]; then
	mkdir /home/$(whoami)/backups
fi

date +'FORMAT'
 
### mm/dd/yyyy ###
#date +'%m-%d/%Y'

#
#date +'%r'
 
backup_dir=$(date +'%m-%d-%Y')
echo "Backup dir for today: /home/$(whoami)/backups/${backup_dir}"

tar -czf /home/$(whoami)/backups/"$backupdir".tar.gz $1
