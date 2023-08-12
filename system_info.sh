#!/bin/bash

echo -e "\033[92m************************************************************************************************************************************************************************\033[0m"
echo -e "\033[93m                                          Welcome to Inventory of the Server \033[0m"
echo -e "\033[92m************************************************************************************************************************************************************************\033[0m"
echo -e "\033[91m WELCOME TO SERVER INFORMATION =>\033[0m"
sleep 2
server_Name="$(cat /etc/os-release | head -1 | cut -d "=" -f2)"
echo -e "Your Server Name is :- \033[94m$server_Name\033[0m"
sleep 2
os_version="$(cat  /etc/os-release |head -2 |tail -1 |awk -F "=" '{print $2}' |cut -c2-8)"
echo -e "Your $server_Name Server Version is :- \033[91m$os_version\033[0m  "
sleep 2
uptime="$(uptime)"
echo -e "Your $server_Name UPTIME Status is :-\033[96m$uptime\033[0m"
sleep 2
free="$( free -mt |grep Mem: | awk '{print $7}')"
echo -e "Your $server_Name serve Availabe Memory in MB is :-\033[96m$free\033[0m"
sleep 2
df="$(df -h | head -2 | tail -1 | awk '{print $4}')"
echo -e "Your $server_Name server Disk Space Availabel is :-\033[91m$df\033[0m  "
sleep 2
p_w="$(pwd)"
echo -e "Your $server_Name server present working directory is :- \033[95m$p_w\033[0m"
echo
sleep 3
echo -e "\033[92m************************************************************************************************************************************************************************\033[0m"
echo -e "\033[94m                                          Complete Information About $server_Name Server\033[0m"
echo -e "\033[92m************************************************************************************************************************************************************************\033[0m"
