---
created: 2024-07-14T21:52:33 (UTC -04:00)
tags: []
title: Fix Broken Packages
source: https://phoenixnap.com/kb/ubuntu-fix-broken-packages
author: Marko Aleksic
---

# How to Fix Broken Packages in Ubuntu 

> ## Excerpt
> Fix broken packages in Ubuntu by following this simple tutorial. The tutorial uses APT and DPKG commands to resolve package related issues.

---
Introduction

Linux packages are compressed archives containing programs and files necessary to run them. The package distribution system is designed to be robust and simplify the application installation process.

However, a bad internet connection or misconfigured third-party installers can corrupt packages and cause problems on your system.

**This article will show you how to troubleshoot and fix broken packages on Ubuntu using the available [APT](https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get) and DPKG tools.**


Prerequisites

-   An account with sudo privileges
-   An Ubuntu system

## Check for Updates

Start troubleshooting by rebuilding the list of dependencies. The **`--fix-missing`** option tells APT to ignore missing packages. The option ensures the update process is performed without APT returning an error.

```
sudo apt update --fix-missing
```

![The --fix-missing option tells APT to ignore the missing packages](https://phoenixnap.com/kb/wp-content/uploads/2021/10/output-from-sudo-apt-update-fix-missing.png)

## Force APT to Correct Missing Dependencies or Broken Packages

Missing package dependencies are a common reason for package-related errors.

1\. Use **`apt install`** with the **`-f`** flag to tell APT to locate the missing packages and install them.

```
sudo apt install -f
```

APT lists the missing packages on your system.

![The apt install tells APT to locate the missing packages and install them](https://phoenixnap.com/kb/wp-content/uploads/2021/10/output-from-sudo-apt-install-f-fix-broken-dependencies.png)

2\. Press **ENTER** to start the installation.

**Note:** If troubleshooting has led to Ubuntu needing to be reinstalled, please refer to our reinstallation guide [How to Reinstall Ubuntu](https://phoenixnap.com/kb/reinstall-ubuntu).

## Force Reconfigure or Remove Broken Packages with DPKG

Broken packages may cause [package manager](https://phoenixnap.com/glossary/what-is-a-package-manager) configuration problems.

1\. Reconfigure [DPKG](https://phoenixnap.com/kb/dpkg-command), the base package management system, with the following command:

```
sudo dpkg --configure -a
```

2\. Check if DPKG marked some packages as needing a reinstall.

```
sudo dpkg -l | grep ^..R
```

3\. If the command above returns a list of one or more packages, try removing the packages by typing:

```
sudo dpkg --purge --force-all [package-name]
```

The example below shows how to remove the corrupted **`vlc-plugin-base`** package.

![Remove the corrupted vlc-plugin-base package](https://phoenixnap.com/kb/wp-content/uploads/2021/10/output-from-sudo-dpkg-purge-force-all-vlc-plugin-base.png)

**Warning:** The **`dpkg --purge --force-all`** command removes a package even if the removal causes further dependency issues. Use the command with care.

4\. After you finish troubleshooting, run the following command to clean up the system:

```
sudo apt clean
```

5\. Then update the repositories again:

```
sudo apt update
```

## Resolve DPKG Lock Issue

The [DPKG lock error](https://phoenixnap.com/kb/fix-could-not-get-lock-error-ubuntu) appears when trying to install a package while another process is using DPKG.

![The DPKG lock error appears when trying to install a package while another process is using DPKG](https://phoenixnap.com/kb/wp-content/uploads/2021/10/output-from-sudo-apt-install-vlc-dpkg-lock.png)

However, sometimes the error occurs even if no other processes are using the package management system.

1\. To fix the problem, remove the lock file manually:

```
sudo rm /var/lib/apt/lists/lock
```

2\. Also, remove the lock in [cache](https://phoenixnap.com/glossary/what-is-cache):

```
sudo rm /var/cache/apt/archives/lock
```

Deleting the lock enables you to use APT and DPKG again.

Conclusion

The article provided common ways of resolving problems caused by broken packages on Ubuntu.

For more information related to package management on Ubuntu, read:

-   [How to List Installed Packages on Ubuntu](https://phoenixnap.com/kb/ubuntu-list-installed-packages)
-   [A Comprehensive Guide to Using Snap Packages on Ubuntu](https://phoenixnap.com/kb/snap-packages)
-   [How to Install Deb Files (Packages) on Ubuntu](https://phoenixnap.com/kb/install-deb-files-ubuntu)
