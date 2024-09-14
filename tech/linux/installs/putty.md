---
created: 2024-07-14T21:52:37 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/how-to-install-putty-on-ubuntu
author: Bosko Marijan
title: Putty
---

# How to Install PuTTY on Ubuntu | phoenixNAP KB

> ## Excerpt
> Follow this step-by-step guide to learn how to install PuTTY on Ubuntu. PuTTY has many uses, with its main feature being session management.

---
Introduction

[PuTTY was developed for Windows](https://phoenixnap.com/kb/install-putty-on-windows) as an open-source SSH and [Telnet](https://phoenixnap.com/glossary/what-is-telnet) client, available outside Windows as well. Since it is open source, it has gained popularity among Linux users as well.

PuTTY supports a wide range of protocols, including serial connection, rlogin, SFTP, [SCP](https://phoenixnap.com/kb/linux-scp-command), [Telnet and SSH](https://phoenixnap.com/kb/telnet-vs-ssh).

**This guide shows how to install PuTTY on Ubuntu.**


Prerequisites

-   A machine running Ubuntu
-   A user account with [sudo privileges](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu)

The easiest way to install PuTTY on Ubuntu is via the terminal. Follow the steps below to install PuTTY.

### Step 1: Enable Universe Repository

PuTTY is available in the Ubuntu Universe repository. To enable the repository:

1\. Open a terminal window (**Ctrl + Alt + T**) and enable the Universe repository on your system by running:

```
sudo add-apt-repository universe
```

2\. Enter your password when asked and press **Enter**.

If the universe repository is already enabled on your machine, the output states so. Otherwise, it enables the Universe repository on your machine.

![Add the Universe repository in Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/add-universe-repository-to-ubuntu.png)

### Step 2: Update Package Repository

Update your system package repository before installing PuTTY to make sure you install the latest program version.

To do so, enter:

```
sudo apt update
```

**Note**: Updating the repository is essential before installing new software because it makes sure your package lists from all repositories and PPAs are up to date. That way, you are installing the latest stable program version.

![Update the package repository on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/update-repository-on-ubuntu.png)

### Step 3: Install PuTTY

Install PuTTY by running the following command:

```
sudo apt install -y putty
```

**Note**: Specifying the **`-y`** flag automatically answers **YES** to any questions during the installation process. If you would rather review them, leave out the **`-y`** flag.

![Install PuTTY via the command line.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/install-putty-on-ubuntu.png)

Installing the PuTTY package also grants access to several command-line tools:

-   **`pscp`**. A PuTTY tool for copying files via the SCP protocol.
-   **`psftp`**. A PuTTY tool for managing files via SFTP. This allows you to securely copy, delete, transfer, and list files.
-   **`puttygen`**. RSA and DSA [key generator](https://phoenixnap.com/kb/generate-ssh-key-windows-10).

### Step 4: Verify Installation

After the installation completes, you can verify it and check the program version by running:

```
putty --version
```

The output shows the program release version and other details.

![Check PuTTY version in Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/check-putty-version-in-ubuntu.png)

## Run PuTTY

Run PuTTY in two ways:

-   Enter the app name in the terminal and press **Enter**:

```
putty
```

-   Another way to run PuTTY is to find it in the Application menu by typing 'putty' and launching the tool.

![Run PuTTY from the Application menu.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/open-putty-from-app-menu.png)

After running PuTTY, the configuration options allow you to choose the connection type. Choose between raw, [Telnet](https://phoenixnap.com/kb/telnet-windows), rlogin, [SSH](https://phoenixnap.com/kb/how-does-ssh-work), or serial connection. Enter a port number, a server hostname or IP address, and start a new session.

![Configure PuTTY and start a new session.](https://phoenixnap.com/kb/wp-content/uploads/2021/09/configure-putty-after-installation.png)

**Note:** If you are looking to use a different Telnet and SSH client, read about popular [PuTTY alternatives](https://phoenixnap.com/kb/putty-alternative).

Conclusion

You should now have PuTTY installed on your Ubuntu system and ready to use.

Feel free to test out PuTTY, as it has various benefits. Apart from its [session management](https://phoenixnap.com/glossary/session-management), PuTTY offers several other great customization features that allow you to find and fix bugs, access [serial ports](https://phoenixnap.com/glossary/serial-port), etc.

For Windows and Mac installation guides, check out our articles on [installing PuTTY on Windows](https://phoenixnap.com/kb/install-putty-on-windows) and [installing PuTTY on Mac.](https://phoenixnap.com/kb/install-putty-on-mac)
