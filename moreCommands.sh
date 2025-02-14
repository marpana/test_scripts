#!/bin/bash
echo "display open ports"
echo "**************************"
sudo yum install net-tools
netstat -tuln

# t- tcp u -udp -l listening ports/not established -n -numerical value

echo "CPU Usage--"
echo "*****************************"
echo $(top -bn1 | grep "Cpu(s)" | awk '{print $2}')%


echo "Disk Usage"
echo $(df -h | awk '/\//{print $4}') available

