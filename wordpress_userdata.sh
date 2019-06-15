#!/bin/sh

sudo yum update -y
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd

sudo service httpd start
sudo chkconfig httpd on

sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www

sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;

cd /var/www
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz 
rm -r html
mv wordpress html
sudo chown -R ec2-user:apache /var/www
