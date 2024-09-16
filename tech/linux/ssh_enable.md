---
title: How to Enable SSH on Ubuntu
author: "Sofija Simic"
source: https://phoenixnap.com/kb/how-to-enable-ssh-on-ubuntu
description: "A step-by-step guide to enabling SSH on Ubuntu, covering installation, starting the SSH service, checking its status, and configuring firewall rules."
date: "2020-08-07"
tags: 
  - ubuntu
  - ssh
  - linux
  - server
  - remote access
topic:
  - Linux
  - Tech
---
!!! Note
	Hey, this isn't my work. Feel free to check out the [original article]({{ page.meta.source }}), by {{page.meta.author}}.
# How to Enable SSH on Ubuntu

> ## Excerpt
> Tutorial on how to Enable, Install, & Configure SSH on Ubuntu. Enabling SSH allows a secure connection to your remote server.

---
Introduction


Prerequisites

-   A user with sudo privileges.
-   Permissions to access the remote computer.
-   Access to a terminal/command line.
-   The **`apt-get`** tool, pre-loaded in Ubuntu.

**Note:** The guide is tested on Ubuntu 18.04, 20.04 and 22.04.

The **SSH server** is not installed by default on all Ubuntu versions. To install and enable SSH on Ubuntu follow the steps below:

1\. Open the terminal either by using the **CTRL+ALT+T** keyboard shortcut or by running a search in **Ubuntu Dash** and selecting the **Terminal Icon**.

2\. Before starting the installation process, check if an SSH server has already been installed on your computer with the following [ssh command](https://phoenixnap.com/kb/linux-ssh-commands):

```
ssh localhost
```

If you see the [SSH "Connection Refused"](https://phoenixnap.com/kb/ssh-connection-refused) message, you will have to go through the SSH installation process.

3\. To install SSH, first update the package repository cache with:

```
sudo apt-get update
```

4\. Now install the OpenSSH software package by entering:

```
sudo apt-get install openssh-server
```
If prompted, type in your password and press **`y`** (yes) to permit the installation.

5\. To verify the installation was successful and SSH is running use the command:

```
sudo service ssh status
```
The confirmation message that you are looking for is: **`Active: active (running)`**.

This means you have installed and enabled SSH on your remote machine, which can now accept commands from your SSH client.

6\. To return to the command line prompt enter **`q`**.

## Log Into Remote Server With SSH

Once you have gone through the process of enabling SSH on Ubuntu, you are ready to log into your remote machine.

1\. Open the terminal (**CTRL+ALT+T)** and type the following command:

```
ssh username@public_IP -p22
```
Change the username and [IP address](https://phoenixnap.com/kb/how-to-find-ip-address-linux) to the username and IP address of the Ubuntu computer on which you have installed SSH.

2\. If you do not know the IP address, you can quickly identify it through the terminal by typing the command:

```
ip a
```

This displays the public IP address of the machine where SSH was installed.

Once you have identified and typed in all the information, you are officially logged into the server. You are free to manage it from the comfort of your workstation safely.

**Note:** Read more about [secure remote access](https://phoenixnap.com/blog/secure-remote-access-best-practices) to implement and enforce the best practices for employees.

## SSH Configuration Options

The default SSH configuration options can be adjusted. You can **change the default port** (generally a good idea, as a precautionary security measure), disable the root user, or make other configuration adjustments.

### Edit Configuration File

After successfully **installing OpenSSH on Ubuntu**, you can edit its configuration file.

1\. Open the SSH configuration file with the command:

```
sudo nano /etc/ssh/sshd_config
```

2\. Now that you have opened the file using [nano](https://phoenixnap.com/kb/use-nano-text-editor-commands-linux) (or with any [Linux text editor](https://phoenixnap.com/kb/best-linux-text-editors-for-coding)) find and make any necessary changes.

For example, to change the port number to listen on TCP port **`2222`** instead of the default TCP port **`22`**, find the line in which **`Port 22`** is specified by default, uncomment the line, and change it to **`Port 2222`**.



**Note:** Changing the default port number is an [SSH security best practice](https://phoenixnap.com/kb/linux-ssh-security). Everyone is aware of the default port number so changing it is a recommended security precaution.

### Disable Root

Another critical security precaution is to disable remote [root access](https://phoenixnap.com/glossary/what-is-root-access). That way, the root user cannot be invoked remotely, and security will be significantly improved.

1\. In the configuration file, find the line that reads **`PermitRootLogin_yes`** and change it to **`PermitRootLogin_no`.**

2\. For the changes to take effect, restart the SSH service with the following command:

```
sudo systemctl restart sshd.service
```

### Configure Firewall

If you have decided to change the default port number, you must configure your firewall to allow traffic via the specified port.

Let’s use the example of **`Port 2222`**.

The default firewall configurations tool in Ubuntu is **UFW**, configure it with the command:

```
sudo ufw allow from any to any port 2222 proto tcp
```

Some firewalls may require allowing traffic to the public IP address of the machine running SSH.

**Note:** The **`port 2222`** is the port number we have defined in the **Configure SSH** section. If you used the **default port 22**, then it is not necessary to put the port number.

## How to Disable SSH on Ubuntu

To temporarily disable SSH on Ubuntu, run:

```
sudo service ssh stop
```

Start the SSH service with:

```
sudo service ssh start
```

To completely disable SSH after reboot:

```
sudo systemctl disable ssh
```

Enable SSH on Ubuntu after reboot with:

```
sudo systemctl enable ssh
```

Conclusion

By following the simple steps above, you now know **how to enable SSH on Ubuntu**. Now you can establish a reliable and secure protocol between you and a remote device.

Get started by logging to your machine to perform sysadmin tasks with the command prompt.

Next, we suggest learning about [SSH config files](https://phoenixnap.com/kb/ssh-config) that can help you easily configure the default values for these connections and enables efficient streamlining of SSH connections.
