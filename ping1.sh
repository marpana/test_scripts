#!/bin/bash
read -p "Enter url" url
ping -c 3 url > /dev/null

if [ $? -eq 0 ]; then
  echo "Internet is reachable"
  else
    echo "Internet is not reachable"
    fi