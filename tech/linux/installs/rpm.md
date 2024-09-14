---
created: 2024-07-14T21:49:46 (UTC -04:00)
tags: []
title: RPM Packages
source: https://phoenixnap.com/kb/install-rpm-packages-on-ubuntu
author: Vladimir Kaplarevic
---

# How to Install RPM Packages on Ubuntu

> ## Excerpt
> This step-by-step tutorial shows how to install .rpm packages on Ubuntu using the alien conversion utility.

---
Introduction

RPM is a package format used by Red Hat-based derivatives like [Rocky Linux](https://phoenixnap.com/kb/what-is-rocky-linux), CentOS, RHEL, or Fedora. The name comes from the [RPM Package Manager](https://phoenixnap.com/kb/rpm-command-in-linux) (RPM), a free and [open-source](https://phoenixnap.com/glossary/what-is-open-source) package management system for installing, uninstalling, and managing software packages in Linux.

**In this tutorial, you will learn how to install .rpm packages on Ubuntu.**



Prerequisites

-   A user account with [root privileges](https://phoenixnap.com/glossary/what-is-root-access).
-   Access to the terminal (**Ctrl** + **Alt** + **T**).
-   A working internet connection.

## Convert and Install an RPM Package on Ubuntu

This section shows the steps for converting an _.rpm_ package to a .deb package and then installing it. However, note that when you convert an _.rpm_ package to install it on Ubuntu, you may encounter dependency and compatibility issues. An issue may happen because the [package manager](https://phoenixnap.com/glossary/what-is-a-package-manager) is unable to resolve the [software dependencies](https://phoenixnap.com/blog/software-dependencies) properly and because the package was not originally intended for a Debian system.

Depending on which software you want to install and the dependencies it requires, you can manually resolve the dependencies by installing the required packages separately using Ubuntu's [apt package manager](https://phoenixnap.com/kb/apt-linux).

Follow the steps below to convert and install RPM packages using the **alien** utility.

### Step 1: Install Alien Package

**Alien** is a useful tool that facilitates conversions between Red Hat rpm, Debian deb, Stampede slp, Slackware tsz, and Solaris pkg [file](https://phoenixnap.com/glossary/what-is-a-file) formats. Follow the steps below to install **alien**:

1\. Update your package repository information to get the latest [program](https://phoenixnap.com/glossary/what-is-a-program) version:

```
sudo apt update
```

2\. Install the **alien** conversion utility using the command below:

```
sudo apt install alien -y
```

Wait for the process to finish.

### Step 2: Convert .rpm Files to .deb Format

After installing the **alien** utility, you can convert _.rpm_ files to the _.deb_ format. Follow the steps below:

1\. Download the _.rpm_ package for the software you want to install. Make sure to use a trusted source for your download.

2\. Open the terminal and use the [cd command](https://phoenixnap.com/kb/linux-cd-command) to move to the [directory](https://phoenixnap.com/glossary/what-is-a-directory) where you saved the _.rpm_ file.

3\. Use the syntax below to convert the RPM file and install it:

```
sudo alien [package_name].rpm
```

Replace **`[package_name]`** with the full name of the package you want to convert. You can list the contents of the directory with the [ls command](https://phoenixnap.com/kb/linux-ls-commands) and copy the package name for the command above. For example:

![Converting the .rpm package to a .deb package in Ubuntu using the alien utility.](https://phoenixnap.com/kb/wp-content/uploads/2024/03/convert-rpm-package-to-deb-with-alien.png)

The command instructs **alien** to initiate the process of converting the _.rpm_ file to a _.deb_ file. Wait for the process to complete.

### Step 3: Install the converted .rpm package on Ubuntu

Once the conversion has run its course, use the following syntax to [install the .deb package](https://phoenixnap.com/kb/install-deb-files-ubuntu):

```
sudo dpkg -i [package_name].deb
```

Replace **`[package_name]`** with the actual name of the converted package. For example:

![Installing a converted .rpm file on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2024/03/install-converted-rpm-file.png)

You have now successfully installed a converted _.rpm_ file on Ubuntu.

## Install .rpm Package Directly on Ubuntu

You can also directly install _.rpm_ packages on Ubuntu without previously converting them. However, you need to have installed the **alien** tool mentioned in the previous section.

**Warning:** This command can lead to serious compatibility issues if you attempt to run it with important system packages since RPM was not developed for Debian-based distributions.

The syntax for installing _.rpm_ packages directly is:

```
sudo alien -i [package_name].rpm
```

For example:

![Installing an .rpm file on Ubuntu without conversion.](https://phoenixnap.com/kb/wp-content/uploads/2024/03/install-rpm-file-without-conversion.png)

The command installs the package on your system.

Conclusion

By following the tutorial, you can install an RPM package on Ubuntu. However, be aware that installing packages that were not originally meant for your system can cause compatibility issues, especially if you are updating essential system packages. In that case, a better option would be to use Ubuntu repositories or adequate alternative packages.

Next, check out our tutorial for [crucial Linux commands](https://phoenixnap.com/kb/linux-commands-cheat-sheet) and download a cheat sheet, or see how to install and use [winget](https://phoenixnap.com/kb/install-winget), a Linux-style Windows package manager.
