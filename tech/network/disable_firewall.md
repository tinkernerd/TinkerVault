---
created: 2024-07-14T21:52:15 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/how-to-enable-disable-firewall-ubuntu
author: Vladimir Kaplarevic
title: Disable Firewall
---

!!! Note
	Hey, this isn't my work. Feel free to check out the [original article]({{ page.meta.source }}), by {{page.meta.author}}.
# How to Disable Firewall (UFW) on Ubuntu 18.04 & 20.04

> ## Excerpt
> Tutorial with simple commands to disable or stop the UFW Firewall on Ubuntu 18.04 & 20.04. Also, learn how to enable and reset rules. Get started now!

---
Introduction

Ubuntu comes pre-installed with a firewall configuration tool, **UFW** (Uncomplicated Firewall). UFW is easy to use for managing server firewall settings.

**This tutorial shows you how to disable and enable an Ubuntu UFW firewall using the command line.**

![How to enable or disable the UFW firewall on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/how-to-enable-disable-ufw-firewall-on-ubuntu.png)

Prerequsites

-   A machine running Ubuntu 18.04, 20.04, or 22.04.
-   Command line / terminal window
-   User with root or **sudo** privileges

## Check Ubuntu Firewall Status

Before disabling the [UF](https://phoenixnap.com/kb/configure-firewall-with-ufw-on-ubuntu)[W](https://phoenixnap.com/kb/configure-firewall-with-ufw-on-ubuntu) [firewall](https://phoenixnap.com/kb/configure-firewall-with-ufw-on-ubuntu), it is a good idea to check its status first. In Ubuntu, the firewall is disabled by default. How do you know if your firewall is on?

To check the current status of the firewall, execute the command in your command terminal:

```
sudo ufw status
```

In this example below, the output shows that the firewall is active.

![ufw firewall is active on this system](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-status-active.png)

As we have determined the current state, now we can proceed to disable the UFW firewall.

A [firewall](https://phoenixnap.com/glossary/what-is-a-firewall) is a vital element in a network and server security. However, while testing or troubleshooting, you might need to shut down or stop the firewall.

To disable the firewall on Ubuntu, enter:

```
sudo ufw disable
```

The terminal informs you that the service is no longer active.

![example of firewall disabled and stopped on system startup](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-disable-firewall-ubuntu-command.png)

If you disable the firewall, keep in mind that your firewall rules are still in place. Once you enable the firewall again, the same rules that were set up prior to the deactivation will apply.

## Enable Firewall

Learning how to enable the firewall on Ubuntu is vital.

To enable the firewall on Ubuntu, use the command:

```
sudo ufw enable
```

![screenshot of code after enabling the firewall in Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-enable-firewall-ubuntu.png)

As with the ‘disable’ command, the output confirms that the firewall is once again active.

## Using UFW to Set Firewall Rules

UFW does not provide complete firewall functionality via its command-line interface. However, it does offer an easy way to add or remove simple rules.

A good example is opening an SSH port.

For example:

```
sudo ufw allow 22
```

Once the terminal confirms that the rule is now in place, check the status of the firewall with the ‘status’ command:

```
sudo ufw status
```

The output is going to reflect the fact that an SSH port is now open.

![ssh port is open when checking status](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-firewall-rules-ssh-22.png)

### Reseting UFW Firewall Rules

If you need to reset all rules back to default settings, use the **reset** command:

```
sudo ufw reset
```

After confirming the action, by typing `y`, the firewall settings revert to their default values.

![resetting firewall rules with sudo command](https://phoenixnap.com/kb/wp-content/uploads/2021/04/ufw-firewall-delete-rules.png)

Conclusion

In this guide, you learned how to disable and stop the firewall on Ubuntu. We also showed you how to enable the firewall and reset settings.

Now you know the options available with the UFW tool. These commands provide an excellent foundation to explore firewall functions and settings.
