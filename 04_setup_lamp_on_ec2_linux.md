# Setting up LAMP stack on AWS EC2


### 1. Get SSH ready
##### 1.1 Create SSH key from AWS EC2 console
SSH authentication is the default method of authentication for the virtual hosts (EC2 Instance) running on AWS. You can create a pair of SSH private-public key from AWS console. The public key is like a lock on the door to your instance, and the private key is the matched key to the lock. The instances that you launch from EC2 will have the lock which only you have the key to get in.
Here is the steps of creating SSH key from EC2 Console - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
One thing to remember is that, you need to run `chmod 400` command on your key. SSH enforces you to have protective permission on the key to use it.

##### 1.2 Login to the instance 
The default user for Amazon Linux instances is `ec2-user`. Login to your instance on port 22 by command:
`ssh ec2-user@xx.xx.xx.xx -i my_key.pem`

### 2. Run a website
##### 2.1 Install packages
Apache
Php
Mysql
```
sudo yum update -y
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd
```
##### 2.2 Run static website
Start Apache
```
sudo service httpd start
sudo chkconfig httpd on
```

Now, you should be able to see the welcome page of Apache.

Using curl to see the HTML response locally

From a browser, type the IP of your server and you should be able to see the Apache landing page. If it's timeing out, check make sure your security group has prot 80 open.

Well, now you have a website running on the Internet. Is it simple?

Before you can modify the contents, you need to change the ownership of the directory
```
sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www

sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
```
Now, let the website display your message
`echo 'Hello world' > /var/www/html/index.html`  

Refresh the page, and you should be able to see the message. If you are familiar with HTML/CSS/JS, here is the place where you can put static contents to host a simple website.


##### 2.3 Setup database
`sudo service mysqld start`   
`sudo chkconfig mysqld on`  
`sudo mysql`  
In mysql CLI, create a database and user for wordpress
SQL commands:  
`CREATE DATABASE wordpress;`  
`CREATE USER 'wp_db_user'@'localhost' IDENTIFIED BY 'password'; `  
`GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_db_user'@'localhost'; `  
`FLUSH PRIVILEGES;`  

### 3. Install wordpress
Here is a simple way to put Wordpress engine behind Apache

```
cd /var/www
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz 
rm -r html
mv wordpress html
sudo chown -R ec2-user:apache /var/www
```

Now refresh your page, you should be seeing the Wordpress setup page
Setup the DB connection information, and paste the configuration file on your server in `/var/www/html/wp-config.php`

Refresh the page, and now you have Wordpress!

### 4. Try stop/start the server. Convert it into an image and launch from it

### 5. Even simpler, try wordpress market place AMI

