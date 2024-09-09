---
created: 2024-07-14T21:49:54 (UTC -04:00)
tags: []
title: Apt Packges
source: https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get
author: Dejan Tucakov
---

# How to Manage Packages on Ubuntu With Apt

> ## Excerpt
> Fresh Tutorial On How to use Apt to Manage Packages in Ubuntu. Start using the packet manager with apt-get Commands In Linux Today!

---
Introduction

In Linux, special tools were developed for managing applications. Application software for Linux typically comes in a package. The default [package manager](https://phoenixnap.com/glossary/what-is-a-package-manager) for Ubuntu is [apt-get](https://phoenixnap.com/kb/how-to-use-apt-get-commands).

Linux operating systems use a software tool **known as a package manager** to make sure the software is correctly installed and up-to-date. It also keeps a current list of available software, stored externally in a database called a repository.

This guide shows you how to **use apt-get to manage packages on Ubuntu.**


Prerequisites

-   A Linux operating system
-   Access to a terminal/command line
-   The apt-get tool, preloaded in Ubuntu and Debian-based Linux

Since apt-get is a command-line utility, we will need to use the Ubuntu terminal.

Select the **system menu > Applications > System Tools > Terminal.**

Alternatively, you can use use the **Ctrl + Alt + T** keys to open Terminal.

### Update Ubuntu Package Repositories with apt

Refreshing your local list of software before installing a new application is a good habit to develop.

To refresh your local list of software on Ubuntu, type the following in a terminal:

```
sudo apt-get update
```

Your system will check the repositories for updated information. The output shows done when finished.

![apt-get update terminal output](https://phoenixnap.com/kb/wp-content/uploads/2021/04/apt-get-update.png)

**Note:** The **`sudo`** command tells Linux to perform the operation as a temporary administrator. It may ask you for your password.

### Installing a Package with apt

One way to add repositories is to install a software package called **software-properties-common**. This package enables the **`add-apt-repository`** command and avoids the common error in Ubuntu "[Add-Apt-Repository Command Not Found](https://phoenixnap.com/kb/add-apt-repository-command-not-found-ubuntu)".

**The section below will walk you through how to install a package using apt-get.**

In your terminal window, type:

```
sudo apt-get install software-properties-common
```

Your system will reach out to the repositories, then download and install the software. If you already have the latest version, the output will let you know and show the current version.

![apt-get install command output](https://phoenixnap.com/kb/wp-content/uploads/2021/04/apt-get-install-software-properties-common.png)

Once that completes, enter the following:

```
sudo add-apt-repository ppa:[repository_string]
```

Replace **`[repository_string]`** with the name of the repository you’re adding. The name is usually located on the software developer’s website.

Once that completes, run another update.

## Update Installed Software using apt

One handy feature of apt-get is that it can check for and apply software updates to all your packages at once. Usually, this is handled automatically on a schedule.

But if you'd like to manually scan and install updates, including updates for your core operating system, run the following command:

```
sudo apt-get upgrade
```

Your system will contact the servers, and start downloading all available software updates. This may take some time. Allow the process to complete.

## Uninstall Package

The process for [uninstalling or removing a package on Ubuntu](https://phoenixnap.com/kb/uninstall-packages-programs-ubuntu) is simple.

Enter the following:

```
sudo apt-get remove [package_name]
```

Replace **`[package_name]`** with the system name of your application. Make sure you double-check the name if you receive any errors.

Conclusion

Now you know how to manage packages on Ubuntu with apt. Check out our article to learn more about [apt vs apt-get command and how they are different](https://phoenixnap.com/kb/apt-vs-apt-get).

Package managers are an incredibly handy feature for Linux users. They handle most of the grunt work, checking for updates and dependencies for you. With a basic understanding of apt-get, you gain a lot of control over your Linux installation.
