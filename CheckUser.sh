#!/bin/bash
USER_UID=$(id -u)
echo USER_UID
if [ ${USER_UID} -ne 0 ]; then
  echo -e "\e[31mYou must be a root user to perform this script \e[0m"
  exit
  fi
  yum install nginx -y