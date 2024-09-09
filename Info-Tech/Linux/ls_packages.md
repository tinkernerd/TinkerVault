---
title: How to List Installed Packages on Ubuntu
---

# How to List Installed Packages on Ubuntu

> ## Excerpt
> Learn how to list all installed packages on Ubuntu using apt, dpkg or snap. Discover the latest powerful commands to manage packages today!

---
Introduction

Ubuntu and other Linux-based systems use client applications to manage software directly. Some software packages come preinstalled by default, while system administrators install other packages when necessary.

Depending on which [package manager](https://phoenixnap.com/glossary/what-is-a-package-manager) installed the software, there are various ways to list installed packages on Ubuntu.

**This tutorial teaches you to list the installed packages on an Ubuntu system.**

![How to List Installed Packages on Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2019/06/how-to-list-installed-packages-on-ubuntu.png)

Prerequisites

-   A Debian-based distribution such as Ubuntu.
-   A command line/terminal window (**CTRL**+**ALT**+**T**).
-   The [apt](https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get), dpkg, or [snap](https://phoenixnap.com/kb/install-snap-ubuntu) package manager.

## List Ubuntu Packages Using apt

By default, newer Ubuntu versions (14.04 or newer) come with the apt package manager. The package manager helps conduct operations relating to software packages.

### List All Installed and Available Packages

Use the following command to list all installed and available packages on Ubuntu:

```
apt list
```

![apt list terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-terminal-output.png)

The output shows a long list of packages with the version information and the package architecture. Shorten the list by piping the **`less`** command:

```
apt list | less
```

Navigate through the list by pressing the **up** or **down arrow keys** or **space** to skip to the next page. Press **q** to exit the viewer.

### List Only Installed Packages

To list only installed packages, run:

```
apt list --installed
```

![apt list installed terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-installed-terminal-output.png)

The **`--installed`** tag ensures only installed packages show on the list. Each installed package has one of the following tags:

-   **\[installed\]** indicates the package installed manually from the repository list.
-   **\[installed, automatic\]** means the package installed automatically as a dependency for another installation.
-   **\[installed, local\]** indicates the package is not from the official repository list.

### List Specific Packages

There are three different ways to list a specific package:

1\. Add the package name to the **`apt list`** command to fetch a specific package from the list:

```
apt list &lt;package name&gt; --installed
```

![apt list installed package terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-installed-package-terminal-output.png)

Omit the **`--installed`** tag to fetch a package, regardless of installation.

2\. Combine **`apt list`** with the **`grep`** command to match a package by name:

```
apt list --installed | grep -i &lt;package name&gt;
```

![apt list installed grep package terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-installed-grep-package-terminal-output.png)

The **`-i`** tag ignores letter casing, providing a broader search.

3\. Another way to get package information is to use the **`apt show`** command:

```
apt show &lt;package name&gt;
```

![apt show installed package terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-show-installed-package-terminal-output.png)

The command shows the package details, including installation information.

### List Upgradable Packages

To list packages with available upgrades, run the following command:

```
apt list --upgradable
```

![apt list upgradable terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-upgradable-terminal-output.png)

The **`--upgradable`** tag filters packages and lists only the ones ready for an upgrade.

**Note:** If you've upgraded recently, the list is empty.

### Count the Number of Installed Packages

Use the **`apt list`** command with the [Linux wc](https://phoenixnap.com/kb/wc-linux) command to count the number of lines:

```
apt -qq list --installed | wc -l
```

![apt list count number of packages](https://phoenixnap.com/kb/wp-content/uploads/2019/06/apt-list-count-number-of-packages.png)

The **`-qq`** tag quiets the output. Use the marker to ensure no additional lines print to the console and enter the count number.

## List Ubuntu Packages Using dpkg

The dpkg package manager is included in earlier Ubuntu versions when apt is unavailable.

To list installed Ubuntu packages using the **`dpkg`** command, run:

```
dpkg --get-selections | grep -w "install"
```

![dpkg installed packages list terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/dpkg-installed-packages-list-terminal-output.png)

Alternatively, use the **`dpkg-query`** tool:

```
dpkg-query -l | grep ii
```

![dpkg-query installed packages list terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/dpkg-query-installed-packages-list-terminal-output.png)

In both cases, the output shows a long list of installed packages.

### Create a List of all Installed Packages

To save the installed package names into a text file, use the following command:

```
dpkg --get-selections | grep -w "install" | cut -f1 &gt; packages_list.txt
```

![installed packages list text file](https://phoenixnap.com/kb/wp-content/uploads/2019/06/installed-packages-list-text-file.png)

The [cut command](https://phoenixnap.com/kb/linux-cut) filters the output to only get the first column with the package names and saves the contents to a text file.

### Count the Number of Installed Packages

Use the **`wc`** command to count the number of lines from the list of installed packages:

```
dpkg --get-selections | grep -w "install" | wc -l
```

![dpkg installed packages count](https://phoenixnap.com/kb/wp-content/uploads/2019/06/dpkg-installed-packages-count.png)

The **`-l`** tag counts the number of lines from the **`dpkg --get-selections`** output.

## List Installed Packages Sorted by Date and Time

The dpkg logs store the date and time for package installations. To fetch all the information from log files, use the following command:

![installed packages timestamp](https://phoenixnap.com/kb/wp-content/uploads/2019/06/installed-packages-timestamp.png)

The output shows the exact timestamp for installed packages. The logs are archived and deleted after a specific time, so the list is not comprehensive.

Snap is an alternative package manager system. The previous commands do not show packages installed through Snap.

To list installed [Snap packages](https://phoenixnap.com/kb/snap-packages), run:

```
snap list
```

![snap list terminal output](https://phoenixnap.com/kb/wp-content/uploads/2019/06/snap-list-terminal-output.png)

**Note:** Learn about the differences between the Snap packaging system and the apt package manager in [Snap vs. Apt](https://phoenixnap.com/kb/snap-vs-apt).

Conclusion

By following this guide, you should have learned how to list installed packages on Ubuntu and other Debian-based systems. If there is a problem with the installed packages, read our article on [fixing broken packages in Ubuntu](https://phoenixnap.com/kb/ubuntu-fix-broken-packages).
