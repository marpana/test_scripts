#!/bin/bash
echo "**************for loop**************"
for current_number in 1 2 3 4 5 6 7 8 9 10
do
  echo $current_number
  sleep 1
done
echo "This is outside the for loop"

echo "**************While loop*************"
myval=1
while [ $myval -le 10 ]
do
  echo $myval
  myval=$(($myval + 1))
  sleep 0.5
  done
echo "This is outside the while loop"

echo "******************Until***************"
number=1
until [ $number -ge 11 ]
do
  echo "$number"
  number=$((number+1))
  done
  echo "This is Outside until loop"

