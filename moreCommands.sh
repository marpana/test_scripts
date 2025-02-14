#!/bin/bash
echo "display open ports"
echo "**************************"
sudo yum install net-tools
netstat -tuln

# t- tcp u -udp -l listening ports/not established -n -numerical value