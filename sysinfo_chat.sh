#!/bin/bash
#####################################
# Author: Anju
# Date: 10/4/2025
# version: V1
# this script will show how we can use echo, date, df -h & slepp shell commands
###################################

echo "Shree: hey Sanju, could you please confirm today's date?"
sleep 2 #means pause for 2 seconds

echo "Sanju: if I am not mistaken today is $(date | awk '{print $3,$2,$6}') , but why do you look so worried"
sleep 2

echo "Shree: Thanks, yrr. It's just that on this date every month, I have to check the memory and disk space usage"
sleep 2

echo "Sanju: And how do you usually perform this task?"
sleep 2

echo "Shree: It's quite simple; we just need to execute these below mentioned commands and here you go."
sleep 2
echo "memory usage"
free -h | awk '{print $1,$2,$3,$4}'| column -t 
echo ""
echo "Disk space usages"
df -h | awk '{print $1,$3,$4}' | column -t
echo "Sanju: Wow, that’s really easy!"



