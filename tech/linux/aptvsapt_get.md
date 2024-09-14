---

title: Apt vs Apt-Get
---

# APT vs APT-GET: What's the Difference?

> ## Excerpt
> What is the difference between the APT and APT-GET command? Learn everything you need to know about APT vs APT-GET as well as how to use these commands.

---
Introduction

Like many other Ubuntu users, you may have wondered – _What is the difference between apt-get and apt?_ Or perhaps – _When to use apt-get and when apt?_

To answer these questions, you first need to understand when and why these command-line interfaces were created. Then, you can compare them side-by-side to see why to use one over the other.

**In this tutorial, you will learn the difference between apt and apt-get.**


### What is the apt-get Command?

If you are a Linux user comfortable with the command line, **`apt-get`** is probably something you use often. You utilize this tool to install, update, list, and remove packages from your system.

**apt-get** is a command line program used to interact with the APT (Advanced Package Tool) package management system. However, this is just one of the tools used to communicate with the APT system. Along with **apt-get**, there are also **apt-cache**, **apt-config,** and (the newly added) **apt**.

There are four main differences between apt and apt-get:

1.  The apt tool merges functionalities of apt-get and apt-cache
2.  Additional output and improved design
3.  Changes in command syntax for existing functionalities
4.  Two new functionalities exclusive to the [Linux apt command](https://phoenixnap.com/kb/apt-linux)

### 1\. APT Combines APT-GET and APT-CACHE Functionalities

Prior to Ubuntu 16.04, users regularly interacted with the APT package manager through the use of command line tools: **apt-get**, **apt-cache**, and **apt-config**. Although these tools offer many functionalities, most average users did not utilize all of the commands they provide.

Therefore, Linux wanted to create a simplified tool that only consisted of essential commands. With the release of Ubuntu 16.04 and Debian 8, they introduced a new command-line interface – **apt**.

The main goal for this novelty was to merge the most commonly used **`apt-get`** and **`apt-cache`** commands under the same command prefix.

**Note:** The **`apt`** command is more user-friendly compared to the existing APT tools. Also, it was simpler to use as you didn’t have to switch between apt-get and apt-cache.

### 2\. Additional Output and Improved Design

Apart from the apparent differences between commands, **`apt`** also introduced changes to the output design.

Along with updating your local repository, the **`update`** command now includes an additional line displaying the number of packages that should be upgraded. There is a [difference between updating and upgrading packages](https://phoenixnap.com/kb/how-to-use-apt-get-commands#htoc-what-is-the-difference-between-update-and-upgrade) on your system. Therefore, this novelty serves as a useful reminder to upgrade the required packages.

![Update package repository and see how many package are ready for upgrading.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/apt-update-command.jpg)

Once the output displays the number of packages that can be upgraded, you can prompt the package manager to see a list of these packages. Run the **`apt list --upgradable`** command, and the output shows the specified list.

The output includes improved design for clearer representation with color emphasis.

![List upgradable packages with the apt command.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/apt-command-for-listing-upgradable-packages.jpg)

Finally, the **`apt`** command added a **progress bar** displaying the upgrade process. This is a simple yet useful addition that gives the user more information about the given process.

![Progress bar showing upgrade progress from apt upgrade.](https://phoenixnap.com/kb/wp-content/uploads/2021/04/progress-bar-for-apt-upgrade.jpg)

### 3\. apt vs apt-get Commands 

Although **`apt`** commands replace commonly used **`apt-get`** and **`apt-cache`** functions, they are not backward compatible with all of them. You cannot always replace the older package managers with **apt**.

In the table below, see the **`apt`** command for any given function, as well as which command it replaces.

| Command Function | Existing Command | apt Command |
| --- | --- | --- |
| Update the package repository | apt-get update | apt update |
| Upgrade packages | apt-get upgrade | apt upgrade |
| Upgrade packages and remove unnecessary dependencies | apt-get dist-upgrade | apt full-upgrade |
| Install a package | apt-get install \[package\_name\] | apt install \[package\_name\] |
| Remove a package | apt-get remove \[package\_name\] | apt-remove \[package\_name\] |
| Remove a package with configuration | apt-get purge \[package\_name\] | apt purge \[package\_name\] |
| Remove unnecessary dependencies | apt-get autoremove | apt autoremove |
| Search for a package | apt-get search \[package\_name\] | apt-get search \[package\_name\] |
| Show package information | apt-cache show \[package\_name\] | apt show \[package\_name\] |
| Show active package sources | apt-cache policy | apt policy |
| Show installed and available versions of a package | apt-cache policy \[package\_name\] | apt policy \[package\_name\] |

### 4\. New apt Commands

Apart for simplifying existing commands, **`apt`** has a couple of its own. They were added to fulfill the needed command functions listed below.

| Command Function | New apt Command |
| --- | --- |
| List packages by criteria | apt list |
| Edit sources list | apt edit-sources |

## When to Use apt Instead of apt-get?

Most Linux users suggest using the **`apt`** command instead of **`apt-get`** whenever you can. Not only is it easier to type and remember, it performs tasks much faster.

Naturally, there are instances where substituting **`apt-get`** or **`apt-cache`** is not possible. Although you may still need to switch between command-line interfaces, many believe the **`apt`** command will eventually take over. For now, there is no official statement when or whether that will happen.

Conclusion

After reading this, you should have a better understanding of the **differences between apt and apt-get**. Using one or the other is a matter of habit. Therefore, try to get in the practice of using the **`apt`** command.
