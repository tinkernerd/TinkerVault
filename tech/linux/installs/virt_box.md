---
created: 2024-07-14T21:55:30 (UTC -04:00)
tags: []
title: Virtual Box
source: https://phoenixnap.com/kb/install-virtualbox-on-ubuntu
author: Sara Zivanov
---

# How to Install VirtualBox on Ubuntu

> ## Excerpt
> Learn how to install VirtualBox on Ubuntu & other Debian distributions and how to create your first virtual machine.

---
Introduction

VirtualBox is a powerful [open-source](https://phoenixnap.com/glossary/what-is-open-source) virtualization software developed by Oracle. It allows users to run multiple [operating systems](https://phoenixnap.com/glossary/operating-system) simultaneously on a single machine. Installing VirtualBox on Ubuntu enables users to experiment with different operating systems, [test software](https://phoenixnap.com/blog/software-testing-methodologies), and develop [applications](https://phoenixnap.com/glossary/what-is-an-application) in isolated virtual environments.

**In this article, you will learn how to install VirtualBox on Ubuntu using three different methods.**

Prerequisites

-   Ubuntu system (this tutorial uses version [22.04](https://phoenixnap.com/kb/ubuntu-22-04-lts)).
-   A [user account with sudo privileges](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu).
-   Access to the terminal.

## Option 1: Install VirtualBox from Ubuntu Repositories

One way to install VirtualBox is to use the official Ubuntu [repositories](https://phoenixnap.com/glossary/what-is-a-repository). The process is straightforward and performed using the [package manager (apt)](https://phoenixnap.com/kb/how-to-manage-packages-ubuntu-debian-apt-get).

To install VirtualBox, follow the steps in the sections below.

### Step 1: Install VirtualBox

Before installation, update the package repository with:

```
sudo apt update
```

![sudo apt update terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-apt-update-terminal-output-1.png)

Next, download and install VirtualBox by running:

```
sudo apt install virtualbox
```

![sudo apt install virtualbox terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-apt-install-virtualbox-terminal-output.png)

**Note**: To select a specific VirtualBox version, run **`sudo apt install virtualbox`** and hit **Tab** to see the various VirtualBox versions available for installation.

### Step 2: Install the VirtualBox Extension Pack.

The Extension Pack provides additional features and support for [USB](https://phoenixnap.com/glossary/what-is-a-usb) 2.0 and USB 3.0 devices, VirtualBox [Remote Desktop](https://phoenixnap.com/glossary/what-is-remote-desktop) Protocol (VRDP) support, Disk [encryption](https://phoenixnap.com/glossary/encryption-definition), Intel PXE [boot](https://phoenixnap.com/glossary/boot-definition) ROM, etc.

To [install the VirtualBox Extension Pack](https://phoenixnap.com/kb/install-virtualbox-extension-pack), take the following steps:

1\. Run the command:

```
sudo apt install virtualbox-ext-pack
```

2\. Read the VirtualBox Extension Pack Personal Use and Evaluation License (PUEL) and select **<Ok>** to confirm.

![vbox extension pack license](https://phoenixnap.com/kb/wp-content/uploads/2024/03/vbox-extension-pack-license.png)

3\. Accept the VirtualBox PUEL license terms by selecting **<Yes>** and hitting **Enter**.

![Agree to the vbox extension pack license terms](https://phoenixnap.com/kb/wp-content/uploads/2024/03/agree-to-vbox-extension-pack-license-terms-1.png)

Once the installation is completed, VirtualBox is ready to run. Start it by executing:

```
virtualbox
```

The command has no output but starts VirtualBox.

## Option 2: Installing VirtualBox from Oracle's Repositories

Often, the default repositories do not have the latest software versions. For example, run the following command to see the latest VirtualBox version installed via the Ubuntu repository:

```
VBoxManage --version
```

![VBoxManage --version terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/vboxmanage-version-terminal-output.png)

The installed version is 6.1.50, while the latest version on the [VirtualBox website](https://www.virtualbox.org/wiki/Downloads) is 7.0.14.

![VirtualBox package download for the latest version on the official website.](https://phoenixnap.com/kb/wp-content/uploads/2024/03/version-of-the-virtualbox.png)

The older version may work for [test environments](https://phoenixnap.com/glossary/test-environment), but some users need the latest security or functionality patches. The solution is to install VirtualBox from Oracle Repositories. This process is more in-depth but installs the most recent VirtualBox version on Ubuntu**.**

### Step 1: Install Supporting Software

The **`software-properties-common`** package is required to run Virtualbox on Ubuntu. It allows users to add new software repositories.

Enter the following command to install the package:

```
sudo apt install software-properties-common
```

![sudo apt install software-properties-common terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-apt-install-software-properties-common-terminal-output.png)

### Step 2: Install GPG Key

Adding GPG keys to the system ensures the integrity and authenticity of the packages you install, especially from third-party repositories like the VirtualBox repository.

To download and install GPG keys, enter:

```
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
```

![install GPG key terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/install-gpg-key-terminal-output.png)

### Step 3: Add VirtualBox Repository to Ubuntu

To add the VirtualBox repository, enter the command :

```
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```

![Adding virtualbox repository to Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2024/03/adding-virtualbox-repository-to-ubuntu-terminal-output.png)

The command creates a repository entry for VirtualBox in Ubuntu's package manager configuration [file](https://phoenixnap.com/glossary/what-is-a-file), specifying the appropriate [URL](https://phoenixnap.com/glossary/url-definition-meaning) and Ubuntu release codename. It then writes this entry to a file named _virtualbox.list_ in the _/etc/apt/sources.list.d/_ [directory](https://phoenixnap.com/kb/show-linux-directory-size). Then, the system can fetch and install VirtualBox packages from the added repository.

The output **`deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian jammy contrib`** indicates the command successfully wrote the VirtualBox repository entry to the specified file.

### Step 4: Install the Latest Version of VirtualBox

Before installation, update the package lists:

```
sudo apt update
```

![terminal output for sudo apt update](https://phoenixnap.com/kb/wp-content/uploads/2024/03/terminal-output-for-sudo-apt-update.png)

2\. Use the following syntax to install VirtualBox on Ubuntu:

```
sudo apt install virtualbox-[version-number]
```

At the time of writing this article, the **latest VirtualBox version is 7.0.14.** Therefore, to install it, run:

```
sudo apt install virtualbox-7.0
```

![sudo apt install virtualbox-7.0 terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-apt-install-virtualbox-7-0-terminal-output.png)

The command installs the version of VirtualBox currently available in the added repository.

### Step 5: Install VirtualBox Extension Pack

The VirtualBox Extension Pack enhances the [virtual machines](https://phoenixnap.com/glossary/what-is-a-virtual-machine)' functionality. Install it by taking the following steps:

1\. Download the Extension Pack:

```
wget https://download.virtualbox.org/virtualbox/[version-number]/Oracle_VM_VirtualBox_Extension_Pack-[version-number].vbox-extpack
```

The current extension pack version on the VirtualBox website is 7.0.14. Therefore, the command is:

```
wget https://download.virtualbox.org/virtualbox/7.0.14/Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack
```

![Download extension pack terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/download-extension-pack-terminal-output.png)

2\. Import the Extension Pack:

```
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.14.vbox-extpack
```

![import extension pack terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/import-extension-pack-terminal-output.png)

3\. Confirm the installation and allow the process to complete.

![Successfully installed VirtualBox extension pack](https://phoenixnap.com/kb/wp-content/uploads/2024/03/succssessfully-installed-virtualbox-extension-pack.png)

## Option 3: Install VirtualBox Using a .deb File

Another way to install VirtualBox on Ubuntu is to [use the .deb file](https://phoenixnap.com/kb/install-deb-files-ubuntu). The following steps explain how to do that.

### Step 1: Download .deb File

To start the installation, download the .deb file from the VirtualBox website. Take the following steps:

1\. Go to the VirtualBox [Download page](https://www.virtualbox.org/wiki/Downloads).

2\. Click the **Linux distributions** link.

![choosing the Linux distributions link](https://phoenixnap.com/kb/wp-content/uploads/2024/03/choosing-the-linux-distributions-link.png)

3\. Find the download link for the current Linux version. In this example, it is **Ubuntu 22.04**.

![Choosing Linux version](https://phoenixnap.com/kb/wp-content/uploads/2024/03/choosing-linux-version.png)

4\. Click the link and wait for the download to finish.

![VirtualBox downloading](https://phoenixnap.com/kb/wp-content/uploads/2024/03/virtualbox-downloading.png)

Note where the file is saved, as it is needed in the next step. In this example, the file is downloaded to the _Downloads_ directory.

![VirtualBox in the Downloads directory](https://phoenixnap.com/kb/wp-content/uploads/2024/03/virtualbox-in-downloads-directory.png)

### Step 2: Install .deb Package

To install the .deb package:

1\. Navigate to the directory where the package is downloaded. In this case, it is the _Downloads_ directory. Use the [cd command](https://phoenixnap.com/kb/linux-cd-command):

```
cd ~/Downloads
```

![cd /downloads terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/cd-downloads-terminal-output.png)

2\. Use the [dpkg command](https://phoenixnap.com/kb/dpkg-command) to install the .deb file from the _Downloads_ directory. The syntax is:

```
sudo dpkg -i [archive-name].deb
```

In this example, the command is:

```
sudo dpkg -i virtualbox-7.0_7.0.14-161095~Ubuntu~jammy_amd64.deb
```

![sudo dplg -i terminal output](https://phoenixnap.com/kb/wp-content/uploads/2024/03/sudo-dpkg-i-terminal-output.png)

### Step 3: Verify the Installation

Once the installation is completed, verify the installation by running the app:

```
virtualbox
```

The command has no output but launches the VirtualBox [program](https://phoenixnap.com/glossary/what-is-a-program).

**Note:** While this method is simple, it is inconvenient in the long term since it requires a complete reinstall for every update.

## Getting Started With VirtualBox

Once installed, VirtualBox allows users to create and manage virtual machines. The software lets users run multiple guest operating systems concurrently on the host machine.

The basic menu items in VirtualBox include:

-   **File**:
    -   **New**. Creates a new virtual machine. When selected, VirtualBox opens a wizard that guides users through creating a new virtual machine.
    -   **Add**. Adds an existing virtual machine to the VirtualBox Manager.
    -   **Preferences**. Configures VirtualBox settings such as general, input, and network settings.
-   **Machine**:
    -   **Start**. Starts the selected virtual machine. Once a virtual machine is created or imported into VirtualBox, use this option to boot it up and start using it.
    -   **Pause**. This option pauses the selected virtual machine. When users pause a virtual machine, its state is saved, and it temporarily stops executing. This is useful for temporarily suspending a virtual machine without shutting it down.
    -   **Reset**. Resets the selected virtual machine.
    -   **Power Off**. Powers off the selected virtual machine and saves the state.
-   **Devices**:
    -   **Optical Drives**. Manages virtual [optical drives](https://phoenixnap.com/glossary/optical-disk) attached to the selected virtual machine.
    -   **Shared Clipboard**. This option enables or disables the shared clipboard. When enabled, text and files can be copied and pasted between the host operating system and the guest operating system running in the virtual machine.
    -   **Drag and Drop**. Enables or disables drag and drop. When enabled, users can drag files and directories between the host operating system and the guest operating system.

These menu items vary depending on the version of VirtualBox and the operating system.

### Create Your First Virtual Machine

VirtualBox's primary function is to install and run an operating system within another operating system by creating virtual machines. Take the following steps to create a virtual machine.

1\. Launch the VirtualBox interface if not already launched:

```
virtualbox
```

![Starting VirtualBox](https://phoenixnap.com/kb/wp-content/uploads/2024/03/starting-virtual-box.png)

2\. Click the **New** button to create a new virtual machine. A dialog box opens.

3\. Type the OS name. The **Type** and **Version** are filled out automatically based on the name. However, change them manually if needed.

![choose machine name](https://phoenixnap.com/kb/wp-content/uploads/2024/03/choose-machine-name.png)

4\. In the same window, the system prompts you to select an ISO file to boot from. This ISO file can be obtained from the official website of the operating system you wish to install (e.g., Debian, Windows, etc.). Choose the file and click **Next**.

![choose ISO image](https://phoenixnap.com/kb/wp-content/uploads/2024/03/choose-iso-image.png)

5\. Choose the username, password, hostname, and [domain name](https://phoenixnap.com/glossary/what-is-a-domain). You can install **Guest Additions** in this step. Guest Additions are drivers and utilities that enhance the performance and usability of guest operating systems.

![Configure guest OS](https://phoenixnap.com/kb/wp-content/uploads/2024/03/configure-guest-os.png)

Once completed, click **Next**.

6\. Allocate the base memory and the virtual [CPU](https://phoenixnap.com/glossary/cpu-definition) count. Make sure the sliders stay on the green side to ensure the allocated resources are within the recommended range. This step ensures optimal performance of both the host and guest operating systems.

![Allocate RAM and CPU size](https://phoenixnap.com/kb/wp-content/uploads/2024/03/allocate-ram-and-cpu.png)

7\. Mark the **Create a Virtual Hard Disk Now** checkbox, adjust the **Disk Size** slider, and click **Next**.

![Set disk size](https://phoenixnap.com/kb/wp-content/uploads/2024/03/set-disk-size.png)

8\. Check all the settings in the **Summary** section and click **Finish**. Once finished, the machine starts installing and configuring;

![virtual machine starts](https://phoenixnap.com/kb/wp-content/uploads/2024/03/virtual-machine-starts.png)

8\. Once installation completes, a new virtual machine appears in the left column. Select it and click the green arrow **Start** button.

![start-virtual-machine](https://phoenixnap.com/kb/wp-content/uploads/2024/03/start-virtual-machine.png)

A new window opens and boots up the virtual machine.

**Note:** VirtualBox also offers pre-built developer VMs that can be downloaded from the [Oracle website](https://www.oracle.com/downloads/developer-vm/community-downloads.html). These VMs come pre-configured with a [development environment](https://phoenixnap.com/glossary/development-environment), including the necessary tools, libraries, and frameworks to streamline the process of setting up a development environment.

Conclusion

After reading this article, you know three different methods to install VirtualBox on Ubuntu. You also learned how to create a virtual machine on VirtualBox.

Next, read this comparison of [Virtualbox vs VMware](https://phoenixnap.com/kb/virtualbox-vs-vmware).
