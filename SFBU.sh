#!/bin/bash

[[ ! -d /home/$(whoami)/backups ]] && mkdir /home/$(whoami)/backups

if [ -z "$2"]
then
tar -czf "/home/$(whoami)/backups/$(date +'%m-%d-%Y').tar.gz" -C / $1
echo "Backing up to: /home/$(whoami)/backups/$(date +'%m-%d-%Y').tar.gz"
else
tar -czf $2 -C / $1
echo "Backing up to: $2"
fi



