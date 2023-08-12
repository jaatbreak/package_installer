#!/bin/bash
echo -e "\033[91m***********************************************************************************************************************************************************************\033[0m"
echo -e "\033[95m                                                            WELCOME TO GUESS NUMBER GAME\033[0m"
echo -e "\033[91m***********************************************************************************************************************************************************************\033[0m"
system_number=$RANDOM
no_of_chance=1
for (( ; ; ))
do
cl1=$(echo -e "\033[93mEnter the guess $no_of_chance  Number :-\033[0m")
read -p "$cl1" user_number
if [ $system_number -eq $user_number ]
then
  echo -e  "\033[94Your Guess Number is correct\033[0m"
  sleep 2
  echo -e "\033[91m***********************************************************************************************************************************************************************\033[0m"
  echo -e "\033[92m                                                           Hurre !!! You Won The Match \033[0m"
    echo -e "\033[91m***********************************************************************************************************************************************************************\033[0m"
  break
else
 echo -e "\033[91mChecking Your Answer.............\033[0m"
 sleep 2
 echo -e  "\033[94mYour guess Number is Wrong\033[0m"
 echo
if [ $user_number -ge $system_number ]
then
  echo -e  "\033[92mPlease select some lesser Number then $user_number\033[0m"
else
  echo -e  "\033[96mPlease Select the Greater Number than $user_number\033[0m"
fi
 no_of_chance=$((no_of_chance+1))
fi
done
