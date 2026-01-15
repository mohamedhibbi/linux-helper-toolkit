#!/bin/bash 
# Backup home folder 

backup_file="home_backup_$(date +%Y%m%d).tar.gz
tar -czvf "$backup_file" ~/ 
echo "-------------------------"
echo "Backup Created: $backup_file" 

