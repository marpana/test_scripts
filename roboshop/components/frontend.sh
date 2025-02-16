echo frontend setup............
yum install nginx -y

#Let's download the HTML content that serves the RoboSHop Project UI and deploy under the Nginx path.
#
curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
cd /usr/share/nginx/html
rm -rf *
unzip /tmp/frontend.zip
mv static/* .
rm -rf frontend-master static README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf
systemctl enable nginx
systemctl start nginx

#Deploy in Nginx Default Location.
#
## cd /usr/share/nginx/html
## rm -rf *
## unzip /tmp/frontend.zip
## mv frontend-main/* .
## mv static/* .
## rm -rf frontend-master static README.md
## mv localhost.conf /etc/nginx/default.d/roboshop.conf
#Finally restart the service once to effect the changes.
#
## systemctl restart nginx

#check whether the script is running as a root user or not

#curl -s -L -o /tmp/frontend.zip "https://github.com/roboshop-devops-project/frontend/archive/main.zip"
