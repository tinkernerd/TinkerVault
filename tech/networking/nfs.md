---
created: 2024-07-14T21:52:59 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/ubuntu-nfs-server
author: Marko Aleksic
title: Install & Configure NFS Server 
---
{% include "not_my_work.md" %}

# How to Install & Configure NFS Server on Ubuntu 

> ## Excerpt
> NFS server on Ubuntu is an easy, performance friendly way to set up file sharing on small or medium sized networks. Here's how to install it.

---
Introduction

Network File System (NFS) is a file system that allows local access to remote files from multiple locations within a network. For this access, NFS utilizes standard client/server architecture, supporting sharing between Linux machines, regardless of their distribution.

**In this tutorial, you will learn how to install and configure the NFS server and clients on Ubuntu.**

![Install NFS Server on Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2021/04/template.png)

Prerequisites

-   Two or more Ubuntu machines
-   Access to the command line/terminal
-   [Sudo privileges](https://phoenixnap.com/kb/linux-sudo-command) on all machines

**Note:** Once you are done with this tutorial, you can also visit our tutorial on [NFS Docker Volumes](https://phoenixnap.com/kb/nfs-docker-volumes) to learn how to create and use them.

## Set Up the NFS Host Side

The steps of this tutorial cover the NFS installation and setup on Ubuntu and other Debian based distributions. Other Linux distributions, such as Fedora and CentOS/RHEL, feature slightly different command syntax. However, the process follows the same pattern.

### Install NFS Kernel Server

Start setting up NFS by choosing a host machine.

Next, update the package repository:

```
sudo apt update
```

Then, install the NFS kernel server on the machine you chose with the following command:

```
sudo apt install nfs-kernel-server
```

![Installing NFS Kernel Server on Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2021/04/01.png)

**Type “y”** and press ENTER to start the installation.

### Configure Shared Directory

On the host machine, create a directory you want to share with the client system. Choose any name you want.

```
sudo mkdir -p /mnt/nfsdir
```

Change the owner user and group to _nobody_ and _nogroup_. This setting makes the folder public:

```
sudo chown nobody:nogroup /mnt/nfsdir
```

Set permissions to _777_, so everyone can read, write, and execute files in this folder:

```
sudo chmod 777 /mnt/nfsdir
```

### Edit NFS Export File to Grant Server Access to Clients

Permission to access the host server machine is granted in the exports file located in _/etc_ directory. Open the file with [a text editor of your choice](https://phoenixnap.com/kb/best-linux-text-editors-for-coding), this tutorial uses Vi:

```
sudo vi /etc/exports
```

For each client you want to grant access to, add this line to the file:  
_/mnt/nfsdir clientIP(rw,sync,no\_subtree\_check)_

![Editing the /etc/exports file in Vim editor](https://phoenixnap.com/kb/wp-content/uploads/2021/04/02-1.png)

Exit the file and save the changes

**Tip:** If you need to add more clients within the same subnet, type:  
_/mnt/nfsdir subnetIP/24(rw,sync,no\_subtree\_check)_

The options in the brackets have the following functions:

-   “**_rw_**” option provides clients with read and [write access](https://phoenixnap.com/glossary/write-access) to directories on the server.
-   “**_sync_**” forces NFS to write changes before responding to the client. This option ensures the state of the host is accurately presented to clients.
-   “**_no\_subtree\_check_**” disables _subtree_ checking. The subtree process may cause problems when users rename files.

### Export Shared Directory

After you make the necessary edits in _/etc/exports_, use the **`exportfs`** command to export all shared directories you registered in that file:

```
sudo exportfs -a
```

Next, restart the NFS Kernel Server to apply the changes to configuration:

```
sudo systemctl restart nfs-kernel-server
```

If you use UFW, you need to allow clients to access the server:

```
sudo ufw allow from [clientIP or clientSubnetIP] to any port nfs
```

The output confirms the addition of the IP address:

![Allowing clients to access the NFS server in UFW firewall](https://phoenixnap.com/kb/wp-content/uploads/2021/04/03.png)

  
To make sure you successfully completed the operation, type:

```
sudo ufw status
```

Search the output for the IP address you added:

![Checking status of UFW firewall to confirm the addition of the exception](https://phoenixnap.com/kb/wp-content/uploads/2021/04/04.png)

## Setting up the NFS Client Side

Perform the following steps on all the computers you wish to set up as clients for sharing.

### Install NFS Common

To enable NFS on client machines, install the NFS common package:

```
sudo apt update
```

```
sudo apt install nfs-common
```

![Installing NFS Common on client machines](https://phoenixnap.com/kb/wp-content/uploads/2021/04/output-from-apt-get-install-nfs-common.png)

  
Type “y” and press ENTER to start the installation.

### Set up a Mount Point

The client machine needs a mount point for the shared directory exported by the server.

Create a directory by typing:

```
sudo mkdir -p /mnt/nfsdir_client
```

To mount the shared directory on the mount point, use the following command:

```
sudo mount host_IP:/mnt/nfsdir /mnt/nfsdir_client
```

Use the **`df -h`** command to check if you mounted the folder successfully:

![Checking that the NFS shared folder was mounted successfully](https://phoenixnap.com/kb/wp-content/uploads/2021/04/055.png)

  
When you do not need the shared folder anymore, unmount it by typing:

```
sudo umount /mnt/nfsdir_client
```

**Note:** The correct command is **`umount`**, not “unmount.”

### Mount NFS Shared Directories on OS Boot

If you want the folders to stay mounted even after you restart the machine, you will need to add them to the _/etc/fstab_ file.

To edit the /etc/fstab file, enter:

```
sudo vim /etc/fstab
```

Copy the following line to the bottom of the file, replacing “host\_IP” with the actual IP address of the host:  
_host\_IP:/mnt/nfsdir /mnt/nsfdir\_client nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0_

![Editing the /etc/fstab file in Vim editor](https://phoenixnap.com/kb/wp-content/uploads/2021/04/06-1.png)

  
Add this line for every folder you need. This way, all folders on the list will be mounted automatically on every boot.

Bare Metal Cloud Network File Storage

<iframe loading="lazy" title="How to Deploy and Manage Network Storage on Bare Metal Cloud" width="500" height="281" src="https://www.youtube.com/embed/dt4sC3SF1do?feature=oembed&amp;enablejsapi=1&amp;origin=https://phoenixnap.com" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>

Conclusion

NFS is often the best solution for remote access to data. It is easy to set up and performs well, especially in scenarios that involve smaller networks.

After reading this article, you should be able to set up an NFS network on your Ubuntu machines, both on the server and the client side.
