---
created: 2024-07-14T21:54:40 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/install-ftp-server-on-ubuntu-vsftpd
author: Bosko Marijan
title: FTP Server
---
{% include "not_my_work.md" %}
# How to Install FTP Server on Ubuntu with vsftpd

> ## Excerpt
> Learn how to install FTP server on Ubuntu with vsftpd. See how to install and configure in minutes. Start transferring files now!

---
Introduction

[FTP](https://phoenixnap.com/glossary/what-is-ftp) stands for File Transfer Protocol. It is similar to [HTTP](https://phoenixnap.com/glossary/http-definition) (HyperText Transfer Protocol) in that it specifies a language for transferring data over a network. FTP is unencrypted by default, so by itself, it is not a good choice for secure [data transmission](https://phoenixnap.com/glossary/data-transmission).

If you are looking to install an FTP server on Ubuntu, the simplest method is to use **`vsftpd`**.

**This guide will help you install and configure an FTP server with vsftpd on Ubuntu.**

![How to Install An FTP Server On Ubuntu with vsftpd.](https://phoenixnap.com/kb/wp-content/uploads/2021/05/how-to-install-ftp-server-on-ubuntu-using-vsftpd.png)

Prerequisites

-   Access to a user account with [root privileges](https://phoenixnap.com/glossary/what-is-root-access).
-   Access to a terminal window/command line (**Ctrl**+**Alt**+**T**).
-   The [apt package manager](https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get), included by default.

## Installing FTP Server on Ubuntu

Follow the steps outlined below to install the **`vsftpd`** utility on Ubuntu:

### Step 1: Update System Package Repository

Start by updating the system package [repository](https://phoenixnap.com/glossary/what-is-a-repository) to ensure you get the latest program version. Open the terminal and run the following command:

```
sudo apt update
```

Wait until the update process completes.

### Step 2: Install vsftpd Server on Ubuntu

**`vsftpd`** is an open-source FTP utility commonly used in Ubuntu due to its simplicity. Install **`vsftpd`** by running the command below:

```
sudo apt install vsftpd
```

![Installing vsftpd on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2024/01/install-vsftpd-on-ubuntu.png)

### Step 3: Launch vsftpd

To launch the service and enable it to automatically start at boot, run the following commands:

```
sudo systemctl start vsftpd
sudo systemctl enable vsftpd
```

![Starting the vsftpd service and enabling boot startup.](https://phoenixnap.com/kb/wp-content/uploads/2024/01/enable-vsftpd-on-boot.png)

**Note:** Instructions for setting up and configuring FTP server with **`vsftpd`** are also available for [CentOS 7](https://phoenixnap.com/kb/how-to-setup-ftp-server-install-vsftpd-centos-7) and [Raspberry Pi](https://phoenixnap.com/kb/raspberry-pi-ftp-server).

### Step 4: Backup Configuration Files

Before making any changes, back up your configuration files. Create a backup copy of the default configuration file using the [cp command](https://phoenixnap.com/kb/cp-command):

```
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf_default
```

The command makes a copy of the _vsftpd.conf_ file located in the _/etc/_ directory and saves it as _vsftpd.conf\_default_ in the same directory.

### Step 5: Create FTP User

For this tutorial, we will create a dedicated FTP user. Skip this step if you intend to give FTP access to an existing user.

Use the syntax below to create a new user and set the password:

```
sudo useradd -m [username]
sudo passwd [username]
```

Replace **`[username]`** with the user account name you want to create. After running the second command, the system prompts you to create a password for the new account. The example below illustrates the process of creating a **`ftpuser`** account and setting a password:

![Creating a new user account and setting a password.](https://phoenixnap.com/kb/wp-content/uploads/2024/01/create-new-password.png)

### Step 6: Configure Firewall to Allow FTP Traffic

If you are using [UFW](https://phoenixnap.com/kb/configure-firewall-with-ufw-on-ubuntu), it is set to block FTP traffic by default. Run the following commands to open **Ports 20** and **21** for FTP traffic:

```
sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
```

![Updating the ufw firewall rules to allow ftp traffic.](https://phoenixnap.com/kb/wp-content/uploads/2024/01/updating-firewall-rules.png)

**Note:** If you are using a different firewall, find the instructions to allow access on **Port 20** and **Port 21** for that specific firewall. Port 20 and 21 are the listening ports for the FTP service.

### Step 7: Connect to the FTP Server

Connect to the FTP server using the following syntax:

```
sudo ftp [system_name]
```

Replace **`[system_name]`** with the name of your system (taken from the command line).

For example:

![Connecting to the ftp server in Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2024/01/connect-to-ftp-server-ubuntu.png)

After connecting to the server, log in using the account and password you have set up in **Step 5** or with the account you intend to use for FTP.

## Configuring vsftpd Server

Configuring the server is crucial as it allows you to customize settings to optimize performance, enable specific features, and tailor the server to meet your needs. Follow the sections below for some basic server configurations.

### Change Default Directory

The FTP server uses the _/srv/ftp_ directory as the default directory. You can create a new [directory](https://phoenixnap.com/glossary/what-is-a-directory) and set it as the FTP user home directory. Changing and restricting FTP to a specific directory improves overall server security.

Follow the steps below:

1\. Use this syntax to [create a new directory](https://phoenixnap.com/kb/create-directory-linux-mkdir-command):

```
sudo mkdir /srv/ftp/[new_location]
```

Replace **`[new_location]`** with the directory you want to create.

2\. Use the following syntax to change the default directory where the **`ftp`** user will be placed upon login:

```
sudo usermod -d /srv/ftp/[new_location] ftp
```

3\. Restart the **`vsftpd`** service to apply the changes:

```
sudo systemctl restart vsftpd.service
```

Now, you can put any files you want to share via FTP into the _/srv/ftp_ directory (if you left it as the default) or the _/srv/ftp/\[new\_location\]_ directory (if you changed it).

### Authenticate FTP Users

If you want to let authenticated users upload files, edit the _vsftpd.conf_ file as shown in the steps below:

1\. Open the _vsftpd.conf_ configuration file in [nano](https://phoenixnap.com/kb/use-nano-text-editor-commands-linux) or another [text editor](https://phoenixnap.com/kb/best-linux-text-editors-for-coding):

```
sudo nano /etc/vsftpd.conf
```

2\. Find the entry labeled **`write_enable=YES`** and uncomment it (remove the **`#`** in front of the line):

![Write_Enable option in vsftpd.config file.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/write-enable-yes-vsftpd-conf.png)

3\. Save and exit the file, and restart the FTP service by running:

```
sudo systemctl restart vsftpd.service
```

Configuring this setting allows the user to make changes inside their home directory.

**Note:** To learn more about using FTP, refer to our in-depth guide on [Linux ftp command](https://phoenixnap.com/kb/linux-ftp).

## Securing FTP

Numerous exploits take advantage of unsecured FTP servers. There are several configuration options in _vsftpd.conf_ that help secure your FTP server, thus preventing unauthorized access, potential [data breaches](https://phoenixnap.com/blog/what-is-a-data-breach), and system vulnerabilities.

### Limit User Access

One method of securing **`vsftpd`** is to limit users to their home directory. Follow the steps below:

1\. Open _vsftpd.conf_ in a text editor:

```
sudo nano /etc/vsftpd.conf
```

2\. Uncomment the following line by removing the hash (**`#`**) sign:

```
chroot_local_user=YES
```

The following example shows the file in **`nano`**:

![Command to limit users to their home directory.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/chroot-local-user-yes-vsftpd-conf.png)

3\. Save the file to apply the changes and exit the editor.

### Create a User List File

The user list file enables **`vsftpd`** to deny or allow access to the listed users. The listed users will have full access to anywhere on the server. If a user is not listed, they are restricted to their specified home directory. Follow the steps below:

1\. Open the _/etc/vsftpd.chroot\_list_ file in a text editor and add one user per line to create the list file.

2\. Edit the _vsftpd.conf_ file and uncomment (remove the **`#`**) the following lines:

```
chroot_local_user=YES

chroot_list_file=/etc/vsftpd.chroot_list
```

The following image illustrates the edits:

![Chroot list to limit user access.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/chroot-list-file-vsftpd.png)

3\. Restart the **`vsftpd`** service:

```
sudo systemctl restart vsftpd.service
```

On the other hand, the list of blocked users from FTP access is stored in the _/etc/ftpusers_ file. To add blocked users, edit this file and add one user per line.

### Encrypt Traffic with FTPS

Another method to secure your FTP server is to encrypt the traffic. This is done through **FTPS** - File Transfer Protocol over SSL (Secure Socket Layer).

For this to work, users need to be set up with a shell account on the FTP server. This adds a layer of secure [encryption](https://phoenixnap.com/glossary/encryption-definition) to your FTP traffic. Follow the steps below:

1\. Create a new certificate with [openssl](https://phoenixnap.com/kb/openssl-tutorial-ssl-certificates-private-keys-csrs). Run the command below:

```
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
```

Provide the required information when prompted, or keep the default configuration by pressing **Enter**.

2\. Open the _vsftpd.conf_ file in an editor and change the line **`ssl_enable=NO`** to **`ssl_enable=YES`**.

Next, add the following lines to the configuration file:

```
rsa_cert_file=/etc/ssl/private/vsftpd.pem
rsa_private_key_file=/etc/ssl/private/vsftpd.pem
allow_anon_ssl=NO
force_local_data_ssl=YES
force_local_logins_ssl=YES
ssl_tlsv1=YES
ssl_sslv2=NO
ssl_sslv3=NO
require_ssl_reuse=NO
ssl_ciphers=HIGH
pasv_min_port=40000
pasv_max_port=50000
```

Save the changes and exit the file.

3\. Restart the service to apply the changes:

```
sudo systemctl restart vsftpd.service
```

Conclusion

After following the steps in this tutorial, you should have installed an FTP server on Ubuntu with **vsftpd**, configured and secured it. An FTP server allows for efficient file sharing, transfer, and management across networks or the internet.

Next, learn the difference between [SFTP and SSH](https://phoenixnap.com/kb/sftp-vs-ssh) or learn to use the [Linux ftp command](https://phoenixnap.com/kb/linux-ftp).
