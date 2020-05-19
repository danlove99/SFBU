#!/bin/bash

[[ ! -d /home/$(whoami)/backups ]] && mkdir /home/$(whoami)/backups

tar -czf "/home/$(whoami)/backups/$(date +'%m-%d-%Y').tar.gz" -C / $1

echo "Backing up to: /home/$(whoami)/backups/$(date +'%m-%d-%Y').tar.gz"

