---
created: 2024-07-14T21:52:56 (UTC -04:00)
tags: []
title: Etcher
source: https://phoenixnap.com/kb/etcher-ubuntu
author: Marko Aleksic
---

# How to Install Etcher on Ubuntu

> ## Excerpt
> Install Etcher on Ubuntu by following simple steps of this tutorial, and start creating bootable USB drives and SD cards right away.

---
Introduction

Etcher (also known by its full name, balenaEtcher) is a free, open-source image flasher, a utility for creating bootable SD cards or [USB flash drives](https://phoenixnap.com/glossary/what-is-a-usb) from .img and .iso files. Simple and user-friendly, Etcher is a good choice even for those who are not particularly tech-savvy.

**In this tutorial, you will learn how to install Etcher on Ubuntu using the AppImage format or command line interface.**



Prerequisites

-   [Ubuntu 18.04 LTS](https://phoenixnap.com/kb/how-to-install-ubuntu-18-04) or newer
-   Access to the command line (for the command line method)
-   Sudo privileges (for the command line method)

## Installing Etcher on Ubuntu Using AppImage

Etcher is available for download as an AppImage, a portable software distribution format. AppImage makes it easy to run applications without having to go through a complicated installation process.

The following steps will help you run Etcher from its AppImage.

### Step 1: Download AppImage from Balena’s Website

Visit [Etcher’s official website](https://www.balena.io/etcher/) and download the AppImage for Linux. Since the 18.04 edition, Ubuntu supports only 64-bit architecture, so choose the [x64](https://phoenixnap.com/glossary/what-is-x64) version.

![Downloading Etcher from balena's website](https://phoenixnap.com/kb/wp-content/uploads/2021/04/website-balena-etcher-download-page-1.png)

### Step 2: Extract the .zip File

1\. Navigate to the location on your drive where you downloaded the .zip file containing AppImage.

2\. Right-click the .zip file and select **Extract Here**.

![Unzipping Etcher AppImage file](https://phoenixnap.com/kb/wp-content/uploads/2021/04/file-manager-unzip-file-1.png)

3\. The .zip file extracts to a folder. Navigate to that folder.

### Step 3: Assign Execute Permissions to the AppImage File

1\. Right-click the file and select **Properties**.

![Going to properties of the AppImage file in File Explorer](https://phoenixnap.com/kb/wp-content/uploads/2021/04/file-manager-right-click-menu-properties-1.png)

2\. In _Properties_, click the **Permissions** tab.

![Locating Permissions tab in AppImage file properties](https://phoenixnap.com/kb/wp-content/uploads/2021/04/file-manager-properties-1.png)

3\. In the _Execute_ section of the _Permissions_ tab, check the **Allow executing file as a program check box**.

4\. Close the _Properties_ dialogue.

![Checking the box in the execute section](https://phoenixnap.com/kb/wp-content/uploads/2021/04/file-manager-properties-permissions.png)

### Step 4: Run Etcher

After you give the AppImage permission to run as an application, all you have to do is double-click the app icon and Etcher will start.

![Running Etcher from its AppImage file](https://phoenixnap.com/kb/wp-content/uploads/2021/04/etcher-interface.png)

**Tip:** To uninstall Etcher AppImage, simply delete the file you downloaded.

## Installing Etcher on Ubuntu Using Apt

You may prefer to install Etcher as any other software and receive automatic future updates. In that case, install the program using the apt package manager.

### Step 1: Add Debian Repository for Etcher

Add Etcher’s repository to the list of repositories from which Ubuntu retrieves application files. In the console, type the following command:

```
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
```

Ubuntu will confirm the addition of the repository:

![Adding Etcher Debian repository](https://phoenixnap.com/kb/wp-content/uploads/2021/04/output-from-echo-deb-https-deb-etcher-io-stable-etcher.png)

### Step 2: Add the repository key to authenticate the package source

Next, use **`apt-key`** to add Etcher’s repository key to the trusted list. To do this, type the following:

```
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61
```

The output should look like this:

![Adding Etcher’s repository key to the trusted list](https://phoenixnap.com/kb/wp-content/uploads/2021/04/output-from-sudo-apt-key-adv-keyserver.png)

### Step 3: Install Etcher

Now you can proceed with installing Etcher using apt.

1\. First, update the package list:

```
sudo apt update
```

2\. Next, install the package:

```
sudo apt install balena-etcher-electron
```

3\. When prompted, type **`y`** and press **Enter**.

![Installing Etcher using Apt](https://phoenixnap.com/kb/wp-content/uploads/2021/04/output-from-sudo-apt-install-balena-etcher-electron.png)

4\. Wait for the installation to finish and run Etcher by finding it in the list of your Ubuntu applications. Alternatively, start it by typing **`balena-etcher-electron`** in the command line.

**Note:** If you are one of the many Ubuntu users that are still not sure about the difference between apt and apt-get, read our article [APT Vs APT-GET](https://phoenixnap.com/kb/apt-vs-apt-get).

Conclusion

This tutorial presented two simple methods to install Etcher, a popular bootable media creator. AppImage will come in handy if you need Etcher for a single use. On the other hand, if you plan to use the application regularly, you may want to perform a full installation via the command line.
