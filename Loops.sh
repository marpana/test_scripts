#!/bin/bash
echo "**************for loop**************"
for current_number in 1 2 3 4 5 6 7 8 9 10
do
  echo $current_number
  sleep 1
done
echo "This is outside the for loop"

myval=1
while [ $myval -le 10 ]
do
  echo $myval
  myval=$(($myval + 1))
  sleep 0.5
  done