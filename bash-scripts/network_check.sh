#!/bin/bash 
echo "=== Network Check ===" 
echo "Current IP:" 
hostname -I 
echo "Ping google.com" 
ping -c 4 google.com
echo "Open Ports:" 
ss -tuln

