#!/bin/sh

sudo yum update -y
sudo yum install -y httpd24 stress

sudo service httpd start
sudo chkconfig httpd on

sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www

sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;

cd /var/www
wget https://github.com/totoleon/aws-tutorial-elb-sample-site/archive/latest.tar.gz
tar -xzvf latest.tar.gz 
rm -r html
mv aws-tutorial-elb-sample-site-latest html
sudo chown -R ec2-user:apache /var/www
sed -i "s/YOUR_SERVER_IP/`hostname -I`/g" /var/www/html/index.html
