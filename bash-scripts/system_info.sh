#!/bin/bash 
echo "=== system info ===" 
echo "Hostanme: $(hostname)" 
echo "User: $USER" 
echo "OS: $(uname -a)" 
echo "Disk Usage;"
df -h 
echo "Memory Usage:" 
free -h 
echo "Top processes:" 
top -n 5 -b 
