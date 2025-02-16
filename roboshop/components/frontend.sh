#!/bin/bash
echo frontend setup............
yum install nginx -y
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
systemctl enable nginx
systemctl start nginx

