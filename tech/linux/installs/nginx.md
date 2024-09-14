---
created: 2024-07-14T21:52:10 (UTC -04:00)
tags: []
title: Nginx
source: https://phoenixnap.com/kb/install-nginx-on-ubuntu
author: Goran Jevtic
---

# How to Install NGINX on Ubuntu 18.04 

> ## Excerpt
> New Guide & Tutorial on How to install Nginx on Ubuntu 18.04. Including updated configuration & Setup with east installation guide. Start with Nginx today!

---
Nginx – pronounced “Engine X” – is an open-source server utility. It was designed to [work as a reverse proxy](https://phoenixnap.com/kb/nginx-reverse-proxy), intercepting client requests and routing them to an appropriate server.

Since then, it has grown to include load balancing, anonymizing, and scaling features. It also has features that can handle static resource requests more quickly than Apache, allowing you to balance requests to improve performance and resource usage strategically.

This guide will walk you thru you **setting up and installing Nginx on Ubuntu 18.04** (Bionic Beaver).



Prerequisites

-   A system running Ubuntu 18.04
-   A [user account with sudo](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu) privileges
-   The [apt package manager](https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get) utility, included by default
-   The UFW, or UnComplicated Firewall, included by default
-   SSH Access

## Steps to Installing Nginx on Ubuntu

### Update Software Repositories

Log into your Server via SSH as the root user

```
ssh root@hostname
```

Before installing new software, it is strongly recommended to update your local software database. Updating helps to make sure you’re installing the latest and best-patched software available.

Enter the following:

```
sudo apt update
```

Allow the process to finish.

### Install Nginx on Ubuntu

Enter the following **to install Nginx on Ubuntu**:

```
sudo apt install nginx
```

This may take some time for the system to download the software packages and install them. Allow it to complete before moving on.

### Verify Nginx Service is Running

Use the following command to check the status of the Nginx service:

```
sudo systemctl status nginx
```

The system should return a list of information about the Nginx service. The active line indicates whether the service is running or not. If you need to start the service, use the following:

```
sudo systemctl start nginx
```

You can also use the following commands in place of start:

-   `sudo systemctl stop nginx`– [stops the Nginx](https://phoenixnap.com/kb/nginx-start-stop-restart) service
-   `sudo systemctl enable nginx`– enables Nginx to load at startup
-   `sudo systemctl disable nginx`– prevents Nginx from loading at startup

### Allow Nginx Traffic through a Firewall

You can generate a list of the firewall rules using the following command:

```
sudo ufw app list
```

This should generate a list of application profiles. On the list, you should see four entries related to Nginx:

-   `Nginx full`– opens Port 80 for normal web traffic, and Port 443 for secure encrypted web traffic
-   `Nginx HTTP`– Opens Port 80 for normal web traffic
-   `Nginx HTTPS`– Opens Port 443 for encrypted web traffic
-   `OpenSSH`– This is a configuration for SecureShell operations, which allow you to log into a remote server through a secure, encrypted connection

To allow normal HTTP traffic to your Nginx server, use the Nginx HTTP profile with the following command:

```
sudo ufw allow ‘Nginx HTTP’
```

To check the status of your firewall, use the following command:

```
sudo ufw status
```

It should display a list of the kind of HTTP web traffic allowed to different services. Nginx HTTP should be listed as ALLOW and Anywhere.

**Note:** You can also create a rule to allow all traffic on Port 80. But, this can open your system to vulnerabilities. A better practice is only to create a rule to allow only the traffic you need.

### Test Nginx in a Web Browser

Open a web browser, such as Firefox.

Enter your system’s IP address in the address bar or type **localhost**.

Your browser should display a page welcoming you to Nginx.

**Note:** You can check your system’s IP address from the terminal window with the command: **`ip a`**

### Define Server Blocks

Nginx uses a configuration file to determine how it behaves. One way to use the configuration file is to define server blocks, which work similar to an [Apache Virtual Host](https://phoenixnap.com/kb/how-to-set-up-apache-virtual-hosts-ubuntu).

Nginx is designed to act as a front for multiple servers, which is done by [creating server blocks](https://phoenixnap.com/kb/how-to-set-up-nginx-server-blocks-virtual-hosts-centos-7).

By default, the main Nginx configuration file is located at /etc/nginx/nginx.conf. Server block configuration files are located at **/etc/nginx/sites-available**.

To view the contents of the default server block configuration file, enter the following command in a terminal:

```
sudo vi /etc/nginx/sites-available/default
```

This should open the default configuration file in the Vi text editor, which should look something like this:

```
# Default server configuration
#
server {
listen 80 default_server;
listen [::]:80 default_server;
[...]
root /var/www/html;
# Add index.php to the list if you are using PHP
index index.html index.htm index.nginx-debian.html;
server_name _;
location / {
# First attempt to serve request as file, then
# as directory, then fall back to displaying a 404.
try_files $uri $uri/ =404;
}
[...]
}
```

-   The **listen commands** tell Nginx which ports to look at for traffic
-   **Default\_server** defines this as the block to be delivered unless otherwise specified by the client
-   **Root** determines which directory holds the root directory for the website that’s being served
-   **Server\_name** allows you to specify a name for a particular server block, which is used in more advanced configurations
-   **Location** allows you to direct the location where Nginx should route traffic

### Create a Sample Server Block

#### Set up an HTML File

Going through a sample configuration is helpful. In a terminal window, enter the following command to create a “test” directory to work with:

```
sudo mkdir /var/www/example
```

Create and open a basic HTML index file to work as a test webpage:

```
sudo vi /var/www/example/index.html
```

In the Vi text editor (you can substitute your preferred text editor if you’d like), enter the following:

```
Welcome to the Example Website!
```

Save the file and exit.

#### Set up a Simple Server Block

Use the following command to create a new server block file for our Test website:

```
sudo vi /etc/nginx/sites-available/example.com
```

This should launch the Vi text editor and create a new server block file.  
Enter the following lines into the text file:

```
server {
listen 80;
root /var/www/example;
index index.html;
server_name www.example.com;
}
```

This tells Nginx to look at the **/var/www/example** directory for the files to serve, and to use the index.html file we created as the front page for the website.  
Save the file and exit.

#### Create a Symbolic Link to Activate Server Block

In the terminal window, enter the following command:

```
sudo ln –s /s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled
```

This creates a link and enables your test website in Nginx. Restart the Nginx service to apply the changes:

```
sudo systemctl restart nginx
```

#### Start Testing

In a browser window, visit www.example.com.

Nginx should intercept the request, and display the text we entered in the HTML file.

Conclusion

In this guide, you have learned how to **configure, setup, and install Nginx on Ubuntu 18.04.**

Nginx is a powerful tool for managing servers and web traffic. It is configured for tasks such as load balancing or operating as a reverse proxy.
