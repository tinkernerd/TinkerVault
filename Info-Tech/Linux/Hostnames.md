---
title: How to Change Hostname on Ubuntu
---

# How to Change Hostname on Ubuntu

The **hostname** is a name given to your system to identify it on a network. It should be unique on your network, and it is customizable. Setting a custom hostname allows you to create a memorable or descriptive name, to make it easier to find different servers on the network.

This guide is for Ubuntu 18.04, but the same steps also work for Ubuntu 16.04. Now, let’s learn **how to change a hostname on Ubuntu**.

Prerequisites

-   Server running Ubuntu 16.04 or 18.04
	-   Access to an [Ubuntu user with sudo privileges](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu)
-   Access to a command prompt (**Ctrl**–**Alt**–**T**)
-   A text editor, such as **nano**, included by default

## Changing Hostname in Ubuntu

### Step 1: Find the Current Hostname

To view the current hostname, open a terminal window, and enter the following command:

```
hostnamectl
```

The system will return the static hostname, plus additional information. The **static hostname** is the hostname of the system you’re working on. The other option to check the hostname is to use the [hostname command](https://phoenixnap.com/kb/linux-hostname-command) in Linux.

![Checking the hostname of a system with hostnamectl.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-hostname.png)

### Step 2: Change Ubuntu Hostname

#### Option 1: Change the Hostname with hostnamectl Command (Easiest Method)

You can easily change the hostname using options with the **`hostnamectl`** command:

```
sudo hostnamectl set-hostname file_server
```

This will rename your system to _**file\_server**_. You can specify whatever name you like. You can verify the change by re-running the **`hostnamectl`** command.

![Using the terminal to change the hostname in Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/change-hostname-with-command.png)

#### Option 2: Change Hostname by Editing Hosts File

The **/etc/hosts** file resolves an IP address into a hostname. You can change your hostname by editing three configuration files:

-   **/etc/hosts**
-   **/etc/hostname**
-   **/etc/cloud/cloud.cfg** – Required only if you have the **cloud-init** package installed. Generally, [cloud-init](https://phoenixnap.com/kb/what-is-cloud-init) is used to initiate cloud services.

**Note:** Your system may or may not have the **/etc/cloud/cloud.cfg** file. You can check by entering **`cd /etc/cloud`** and then type **`ls`**. The system will give you an error if the directory doesn’t exist. If the file is present, the **`ls`** command will show it in the file list.

**Editing the /etc/hosts File**

First, edit the **/etc/hosts** file. Before you make the change, you’ll want [to check your Linux IP address](https://phoenixnap.com/kb/how-to-find-ip-address-linux). You can find it quickly by entering:

```
hostname -I
```

The output displays the system’s IP address:

![Output showing the IP address.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/check-ip-address.png)

Open your **hosts** file with a text editor (we are using nano):

```
sudo nano /etc/hosts
```

You should see a line at the very top that says:

```
127.0.0.1 localhost
```

Add a second line just below it, as follows (replace the IP address with yours):

```
10.0.2.15 file_server
```

Save the file and exit.

![How to change the hostname by editing the hosts file.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/editing-hosts-file.png)

**Note:** To learn more about hosts file, check out our article on how to edit [Mac hosts file](https://phoenixnap.com/kb/mac-hosts-file).

**Editing the /etc/hostname File**

Next, edit the **/etc/hostname** file:

```
sudo nano /etc/hostname
```

This file will display the current hostname. Replace the current entry with the hostname of your choice. For example:

```
file_server
```

Then save the file and exit.

**Editing the /etc/cloud/cloud.cfg File**

Finally, if you have **cloud-init** installed, open the **/etc/cloud/cloud.cfg** file:

```
sudo nano /etc/cloud/cloud.cfg
```

Look for a line that says:

```
preserve_hostname: true
```

Make sure that **`preserve_hostname`** is set to **`true`**.

Save the file and exit.

### Step 3: Verify Changes

To verify that the hostname was successfully changed, restart your system.

To verify the changes, run the command:

```
hostnamectl
```

You should now see your new server name on the console.

![After changing a system's hostname, check it with the hostnamectl command.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/verify-new-hostname.png)

Conclusion

This guide provides two different methods **to change Ubuntu server hostname** without restarting.

Hostnames make networking a lot easier, by giving servers easier names to remember. Knowing more than one way to perform a task is helpful if you ever find yourself working on an older system or one with a different operating system.

You can also visit our guide for [changing hostname on Ubuntu 20.04](https://phoenixnap.com/kb/ubuntu-20-04-change-hostname).
