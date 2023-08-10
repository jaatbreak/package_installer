#!/bin/bash
echo -e "\033[91m############################################################################################################################################################################\033[0m"
echo -e "\033[94m                                                         WELCOME TO THE Linux Playstore\033[0m "
echo -e "\033[91m***************************************************************************************************************************************************************************\033[0m"
echo
prompt=$(echo -e "\033[92m Enter the package Name :- \033[0m")
read -p "$prompt" package
echo
echo -e "\033[93mInstalling the Package is proccessing**************************\033[0m"
sleep 5
sudo apt install -y $package
echo
echo -e "\033[91m############################################################################################################################################################################\033[0m"
echo -e "\033[92m                                                  MAINTAINING THE SERVICE OF PACKAGE \033[0m"
echo -e "\033[91m***************************************************************************************************************************************************************************\033[0m"
echo
pr=$(echo -e "\033[94mEnter the start/stop/restart/reload/status The service : \033[0m") 
read -p "$pr" service
echo
if [ "${service}"=="start" ]
then
  echo "working on the service to $service"
  sudo systemctl $service $package
fi
if [ "${service}"=="status" ]
then
  echo "working on the service to $service"
  sudo systemctl $service $package
fi
if [ "${service}"=="stop" ]
then
  echo "working on the service to $service"
  sudo systemctl $service $package
fi
if [ "${service}"=="restart" ]
then
  echo "working on the service to $service"
  sudo systemctl $service $package
fi
if [ "${service}"=="reload" ]
then
  echo "working on the service to $service"
  sudo systemctl $service $package
fi
echo -e "\033[91m############################################################################################################################################################################\033[0m"
echo -e "\033[94m                                     THE SERVICE DEPLOYED SUCCESSFULLY\033[0m"
echo -e "\033[91m############################################################################################################################################################################\033[0m"
