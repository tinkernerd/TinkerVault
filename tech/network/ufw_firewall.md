---
created: 2024-07-14T21:54:56 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/configure-firewall-with-ufw-on-ubuntu
author: Sofija Simic
title: Set Up UFW Firewall
---
!!! Note
	Hey, this isn't my work. Feel free to check out the [original article]({{ page.meta.source }}), by {{page.meta.author}}.
# How to Set Up UFW Firewall on Ubuntu 20.04 & 22.04

> ## Excerpt
> Learn how to configure Uncomplicated Firewall (UFW) on Ubuntu to ensure your system is protected! Ensuring stable firewall protection is the least you can do to protect your server.

---
Introduction

The first step in securing your system is configuring [a firewall](https://phoenixnap.com/glossary/what-is-a-firewall). To set up and manage firewalls, Linux has designed various utilities flexible utilities, such as [iptables](https://phoenixnap.com/kb/iptables-tutorial-linux-firewall).

However, users who are [new to network security](https://phoenixnap.com/blog/network-security-threats) may find iptables a bit intimidating. That’s why we recommend starting with UFW.

**UFW** (Uncomplicated Firewall) is a user-friendly interface implemented on top of iptables. It provides a simple way to configure a firewall.

**In this tutorial, you will learn how to set up firewall protection on an Ubuntu system with UFW.**

![How to set up a firewall with UFW on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/set-up-a-firewall-with-ufw-on-ubuntu.png)

Prerequisites

-   A system running Ubuntu 18.04, 20.04 or 22.04.
-   A user account with [sudo](https://phoenixnap.com/kb/linux-sudo-command) privileges.
-   Access to a command line/terminal window (**Ctrl**+**Alt**+**T**).

## Setting up UFW

The UFW firewall setup includes instructions on how to install and configure default firewall settings. Follow the steps below to see how to install and use the tool.

### Install UFW on Ubuntu

UFW comes pre-installed on Ubuntu 20.04 and Ubuntu 22.04. In case you do not have UFW, run the following command to install it:

```
sudo apt install ufw
```

Wait for the installation to complete.

### Configure UFW to Support IPv6

If the system uses both [IPv4 and IPv6](https://phoenixnap.com/blog/ipv4-vs-ipv6), modify the UFW configuration file to support both protocols.

1\. Open the default settings file using [nano](https://phoenixnap.com/kb/use-nano-text-editor-commands-linux) or any other [text editor](https://phoenixnap.com/kb/best-linux-text-editors-for-coding):

```
sudo nano /etc/default/ufw
```

![set ufw configuration file to support IPv6](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-configuration-file.png)

2\. If the **`IPv6`** value is set as **`no`**, change the value to **`yes`** to enable IPv6 use.

3\. **Save** and **close** the file.

### Set Up Default UFW Policy

The default UFW configuration is set to allow all outgoing connections and deny all incoming connections. The two rules are typical for personal computers, which do not need to respond to incoming requests.

If you changed the default settings and want to return to the default behavior, run the following command to deny incoming connections:

```
sudo ufw default deny incoming
```

Allow outgoing connections by running:

```
sudo ufw default allow outgoing
```

![sudo ufw deny incoming allow outgoing default terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-deny-incoming-allow-outgoing-default-terminal-output.png)

The two commands return the status of UFW to the default settings.

### Allow SSH Connections

If you plan to connect to your server from remote locations, you need to set up UFW to allow [incoming SSH connections](https://phoenixnap.com/kb/how-to-enable-ssh-on-ubuntu).

Configure UFW to allow SSH connections with the command:

```
sudo ufw allow ssh
```

![command to allow ssh connections](https://phoenixnap.com/kb/wp-content/uploads/2021/04/allow-ssh-connections.png)

The command adds a rule for IPv4 (and IPv6 if enabled) to allow incoming and outgoing traffic from SSH connections.

### Enable UFW

After configuring the settings, [disable and enable the UFW firewall](https://phoenixnap.com/kb/how-to-enable-disable-firewall-ubuntu) for the changes to take effect. Disable UFW by entering:

```
sudo ufw disable
```

Enable the firewall again with the following command:

```
sudo ufw enable
```

![sudo ufw disable enable terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-disable-enable-terminal-output.png)

The commands output the firewall status after each action. The firewall is now active and enabled on startup.

### Check UFW Status

To check UFW status and show detailed information, run the following command:

```
sudo ufw status verbose
```

![sudo ufw status verbose terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-status-verbose-terminal-output.png)

The output shows the status, default settings, and [open ports](https://phoenixnap.com/kb/nmap-scan-open-ports).

## Working with UFW Rules

UFW is a rule-based firewall. The rules define the extent of communication the server has with other machines.

Specify which connections are allowed and which are denied to control firewall settings further.

### Allow Incoming Connections on Other Ports

Depending on the server's purpose, allow specific incoming connections for additional firewall control. Create UWF rules to add the connections to the firewall configuration.

Below is a list of commands for common setups.

1\. Set your server to **listen to HTTP** by running:

```
sudo ufw allow http
```

Alternatively, use port number 80 for HTTP connections:

```
sudo ufw allow 80
```

The rule is visible in the UFW status:

```
sudo ufw status verbose
```

![sudo ufw allow http rule](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-allow-http-rule.png)

The command allows traffic on HTTP port 80 and adds rules for IPv4 and IPv6.

2\. To **enable HTTPS connections**, use the following command:

```
sudo ufw allow https
```

Alternatively, use port number 443 for HTTPS connections:

```
sudo ufw allow 443
```

Check the UFW status to confirm the new rule is visible:

```
sudo ufw status verbose
```

![sudo ufw allow https rule](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-allow-https-rule.png)

The enabled HTTPS connections on port 443 are visible for IPv4 and IPv6.

3\. To set a rule that **allows access to all ports from a specific IP** address, run:

```
sudo ufw allow from &lt;IP address&gt;
```

Use this method to set a rule to allow all traffic from a remote server to a local machine or from a remote machine to a local server.

4\. To **allow access from a particular machine to a specific port**, run the command:

```
sudo ufw allow from &lt;IP address&gt; to any port &lt;port number&gt;
```

The rule limits access to the specified port only.

5\. To **allow access to a range of ports**, specify the range values and the protocol type ([TCP](https://phoenixnap.com/glossary/transmission-control-protocol-tcp) or [UDP](https://phoenixnap.com/glossary/what-is-udp)). For instance, the following command allows connections from ports 2000 to 2004 for TCP:

```
sudo ufw allow 2000:2004/tcp
```

Change the protocol to allow connections from ports 2000 to 2004 for UDP with the following:

```
sudo ufw allow 2000:2004/udp
```

**Note:** **TCP** (Transmission Control Protocol) is a connection-oriented protocol that guarantees that all the data transmitted is in order. **UDP** (User Datagram Protocol) is a connection-less oriented protocol that transfers data faster but is less reliable.

### Deny Incoming Connections on Other Ports

To create a deny rule to **forbid connection from a specific IP** address, run the command:

```
sudo ufw deny from &lt;IP address&gt;
```

Alternatively, **deny access to particular ports** by typing:

```
sudo ufw deny from &lt;IP address&gt; to any port &lt;number&gt;
```

Use the two commands to block traffic from suspicious IP addresses or secure a specific port.

### Deleting UFW Rules

The UFW firewall is flexible and allows deleting rules. **There are two ways to remove a rule**.

1\. Display a list of all the rules and find the assigned number of the rule. First, display the rules as a numbered list:

```
sudo ufw status numbered
```

![find the number of ufw rule](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-status-numbered.png)

The output lists the rules added so far. Each rule has a number according to the order in which it was set.

Delete a rule using the following syntax with the appropriate rule number:

```
sudo ufw delete &lt;rule number&gt;
```

The command removes the rule from the list, and the numbers change accordingly.

2\. An alternative way to delete a rule is to specify it word for word:

```
sudo ufw delete &lt;rule&gt;
```

For example, to remove a rule that allows connection to port 2000, use the command:

```
sudo ufw delete allow 2000
```

The command removes the rule from the list.

## Application Profiles

Each package installed with the [`apt` command](https://phoenixnap.com/kb/apt-linux) has an application profile in the **/etc/ufw/applications.d** directory. The profile provides information about the software and its UFW settings.

To see the list of all application profiles, use the command:

```
sudo ufw app list
```

![sudo ufw app list terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-app-list-terminal-output.png)

See more information about a specific package (along with open ports) by running the following command:

```
sudo ufw app info '&lt;package name&gt;'
```

For example, to show the application profile for Apache, run:

```
sudo ufw app info 'Apache Full'
```

![sudo ufw app info apache full terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/12/sudo-ufw-app-info-apache-full-terminal-output.png)

The output shows the profile information, a short application description, and the ports the app uses.

**Note:** Learn how to use [GUFW](https://phoenixnap.com/kb/gufw), a graphical user interface for UFW, to configure a firewall.

Conclusion

By following the instructions in our guide, you should know how to use UFW to set up a firewall. Ensuring stable firewall protection is the first step to protecting your server.

Additionally, learn more about server protection by checking out our list of [21 Server Security Tips](https://phoenixnap.com/kb/server-security-tips).
