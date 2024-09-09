---
created: 2024-07-14T21:54:36 (UTC -04:00)
tags: []
title: Update Kernal
source: https://phoenixnap.com/kb/how-to-update-kernel-ubuntu
author: Sara Zivanov
---

# How to Update Linux Kernel In Ubuntu

> ## Excerpt
> The Linux kernel is the central core of the operating system. In this tutorial, you will learn How To Update Linux Kernel In Ubuntu.

---
Introduction

The [Linux kernel](https://phoenixnap.com/glossary/what-is-a-linux-kernel) is the foundation of the [operating system](https://phoenixnap.com/glossary/operating-system) and plays a crucial role in its performance. [Linux](https://phoenixnap.com/kb/what-is-linux) developers continually enhance the kernel through patches and updates, addressing security, functionality, and speed. Staying current with these developments is vital to ensure the machine operates optimally.

**This article teaches you how to update the Linux kernel in Ubuntu using three different methods.**


Prerequisites

-   An Ubuntu system.
-   Access to the terminal.
-   A user account with [sudo privileges](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu).

## Method 1: Use System Update Process

The system update process is a straightforward way to update all packages, including the Linux kernel, to the latest available versions. Before starting, [check the current kernel version](https://phoenixnap.com/kb/check-linux-kernel-version) with the [uname](https://phoenixnap.com/kb/uname-linux) command:

```
uname -r
```

![uname -r terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/uname-r-terminal-output.png)

The output consists of:

-   **6.2.0** - The kernel version number.
-   **37** - The kernel's specific release or build number.
-   **generic** - Indicates the kernel flavor. The **generic** flavor is a common choice for regular desktop and server systems.

### Step 1: Update System Packages

Use **`sudo apt update`** to update the local package index. The command retrieves information about the latest available package versions from the [repositories](https://phoenixnap.com/glossary/what-is-a-repository) configured on the system.

Use this command:

```
sudo apt update
```

![sudo apt update terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-apt-update.png)

If there’s a newer kernel version, the command finds it and marks it for download and installation. However, the command does not install or upgrade any packages.

### Step 2: Run the upgrade

To upgrade the installed packages, including the kernel, to the latest versions available in the repositories, run:

```
sudo apt upgrade
```

![sudo apt upgrade terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-apt-upgrade-terminal-output.png)

This command installs the latest Linux kernel version. Verify the changes with **`uname -r`**.

Execute:

```
uname -r
```

![uname -r post-upgrade terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/uname-r-post-upgrade-terminal-output.png)

The output hasn't changed in this case because the kernel was already at its latest version.

**Note:** If, apart from updating the kernel verion, you're also upgrading to a new Ubuntu release (e.g., moving from [Ubuntu 20.04](https://phoenixnap.com/kb/install-ubuntu-20-04) to [22.04](https://phoenixnap.com/kb/ubuntu-22-04-lts)), use **`sudo apt-get dist-upgrade`**. This command handles changes in dependencies and manages major system upgrades.

## Method 2: Force Ubuntu Kernel Update with System Update Process

Sometimes, a newer kernel is released but not tested with your [Ubuntu version](https://phoenixnap.com/kb/how-to-check-ubuntu-version). For instance, a user may use Ubuntu 22.04 and know that Ubuntu 23.10 has a newer kernel version available.

This method allows for upgrading the kernel, but the process requires more work, including [backing up important files](https://phoenixnap.com/blog/backup-strategy).

### **Step 1: Use the Software Updater**

After backing up the files, follow these steps:

1\. Find the Software Updater by pressing the **super** key (the **Windows** key on most keyboards) and searching for it.

![software updater](https://phoenixnap.com/kb/wp-content/uploads/2023/12/software-updater.png)

2\. Launch the **Software Updater**.

![ubuntu software updater scanning for updates](https://phoenixnap.com/kb/wp-content/uploads/2023/12/software-updater-working.png)

3\. Confirm if no updates are needed or if you must perform necessary updates. In our case, the system is up to date.

![ubuntu software updater scan finish](https://phoenixnap.com/kb/wp-content/uploads/2023/12/software-updater-done.png)

4\. Click the **Settings** **& Livepatch** button and proceed to step 2 below.

![ubuntu software updater settings](https://phoenixnap.com/kb/wp-content/uploads/2023/12/software-updater-settings-and-livepatch-button.png)

### **Step 2: Configure the Software Updater**

After clicking the Settings & Livepatch button, a new window appears. Follow these steps to configure settings:

1\. Navigate to the **Updates** tab.

![ubuntu software updater updates tab](https://phoenixnap.com/kb/wp-content/uploads/2023/12/updates-tab.png)

2\. Find the **Subscribed to** drop-down menu and choose **All updates**.

![ubuntu software updater subscribed to all updates](https://phoenixnap.com/kb/wp-content/uploads/2023/12/subscribed-to-all-updates.png)

3\. At the bottom of the tab, look for a drop-down menu **Notify me of a new Ubuntu version**.

![ubuntu software updater select option notify me of a new ubuntu version](https://phoenixnap.com/kb/wp-content/uploads/2023/12/notify-me-of-a-new-ubuntu-version.png)

4\. Choose one of the two and avoid selecting **Never**:

-   **For long-term support versions.** When stability is critical, and you prefer a more predictable and thoroughly tested environment.
-   **For any new version.** If you are comfortable with occasional changes, enjoy trying out new features, and tolerate potential issues.

5\. Close this window and then reopen it. If the system needs updating, the app offers the option to upgrade to the newest version.

### **Step 3: Force the Upgrade**

If the system does not offer an upgrade, force it with:

`sudo do-release-upgrade`

![sudo do release upgrade terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-do-release-upgrade-terminal-output.png)

**Note:** The **`sudo do-release-upgrade`** command sometimes prints **`ERROR: failed to read '/etc/update-manager/release-upgrades'`**. To fix this, access _/etc/update-manager/release-upgrades_ in your [text editor](https://phoenixnap.com/kb/best-linux-text-editors-for-coding) of choice and replace the line **`Prompt=lts`** with **`Prompt=normal`**.

The system displays release notes for the new kernel and Ubuntu versions. For instance, in this example, the terminal shows details about the new Ubuntu version, Ubuntu 23.04 Lunar Lobster.

![sudo do release terminal output new release information ubuntu 23.04 lunar lobster](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-do-release-upgrade-terminal-output-2.png)

To upgrade, scroll down to the bottom and choose **y** to get the latest Ubuntu and kernel versions.

![upgrade -y terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/upgrade-y-terminal-output.png)

## Method 3: Manually Update the Kernel (Advanced Procedure)

To upgrade to the latest (untested) kernel and accept the risks, there’s a third procedure for selecting and installing a new kernel using Mainline.

This user-friendly tool simplifies updating the Linux kernel, but it does not come preinstalled on most Linux systems. Follow the steps for this method in the sections below.

### Step 1: Install and Launch Mainline

If you do not have Mainline on your system:

1\. Add the PPA maintained by cappelikan to the list of software sources or repositories with:

```
sudo add-apt-repository ppa:cappelikan/ppa
```

![sudo add-apt-repository ppa:cappelikan/ppa terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-add-apt-repository-ppa-cappelikan-ppa-terminal-output.png)

This PPA is maintained by the user cappelikan and contains the Mainline Kernel Installer. Adding this PPA makes the Mainline software available for installation on the Ubuntu system.

2\. Refresh the database with:

```
sudo apt update
```

![sudo apt update terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-apt-update-ukuu-terminal-output.png)

3\. Install Mainline with:

```
sudo apt install mainline
```

![sudo apt install mainline terminal output](https://phoenixnap.com/kb/wp-content/uploads/2023/12/sudo-apt-install-mainline-terminal-output.png)

4\. Launch Mainline with:

```
sudo mainline
```

The Mainline interface launches and displays available Linux kernel versions. If this does not occur, access the interface by hitting the **super** key (**Windows** key) and searching for Mainline.

![Mainline interface Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2023/12/mainline-interface.png)

### Step 2: Install the Kernel

To get the specific kernel, find it on the list and select it. Next, click the **Install** button on the right-hand side.

![install the kernel](https://phoenixnap.com/kb/wp-content/uploads/2023/12/install-the-kernel.png)

Once the kernel finishes installing, reboot the system.

### Step 3: Uninstalling the Kernel

If there’s a problem, select the previous kernel version from the boot screen to revert the process. To do that:

1\. Reboot the system and hold the Shift key or Esc key, depending on the [Linux distribution](https://phoenixnap.com/glossary/what-is-a-linux-distribution).

2\. Select **Advanced options for Ubuntu**.

![Ubuntu GNU Grub Menu](https://phoenixnap.com/kb/wp-content/uploads/2023/12/grub-menu-ubuntu.jpg)

3\. Choose the previous kernel (identified by the version number).

Another way is to use Mainline to [remove old kernels on Ubuntu](https://phoenixnap.com/kb/ubuntu-remove-old-kernels). To do that, click the previously installed (or any older) kernel version and choose **Uninstall** on the right-hand side.

![uninstal kernel](https://phoenixnap.com/kb/wp-content/uploads/2023/12/uninstal-kernel.png)

Conclusion

After reading this tutorial, you now know how to update the Linux kernel using different methods.

Next, learn how to [build a Linux kernel](https://phoenixnap.com/kb/build-linux-kernel) from scratch.
