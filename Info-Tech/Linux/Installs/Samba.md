---
created: 2024-07-14T21:54:52 (UTC -04:00)
tags: []
title: Samba
source: https://phoenixnap.com/kb/ubuntu-samba
author: Sara Zivanov
---

# How to Install Samba in Ubuntu 

> ## Excerpt
> Samba is a free tool for file-sharing between Linux and other OSs. Read this guide and learn how to install and configure Samba in Ubuntu.

---
Introduction

Samba is an open-source utility that enables file sharing between machines running on a single network. It enables Linux machines to share files with machines running different operating systems, such as Windows.

**This tutorial teaches you how to install and configure Samba in Ubuntu 20.04 or 22.04**.

Prerequisites

-   Ubuntu system (this guide uses Ubuntu 22.04. The same steps work on Ubuntu 20.04).
-   [Sudo](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu) privileges.
-   A [text editor](https://phoenixnap.com/kb/best-linux-text-editors-for-coding) (this tutorial uses Vim).

## How to Install and Configure Samba on Ubuntu

[](https://phoenixnap.com/glossary/what-is-a-repository)Most Linux [package managers](https://phoenixnap.com/glossary/what-is-a-package-manager) have Samba in their default [repository](https://phoenixnap.com/glossary/what-is-a-repository). To configure Samba on Ubuntu, follow the steps below:

### Step 1: Install Samba

1\. Start by updating the package registry:

```
sudo apt update
```

![sudo apt update terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sudo-apt-uptdate-terminal-output.png)

2\. Next, use [apt](https://phoenixnap.com/kb/apt-linux) to install Samba. Include the **`-y`** argument to auto-approve any queries during the installation:

```
sudo apt install samba -y
```

![installing Samba terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/installing-samba-terminal-output.png)

3\. Verify the installation with:

```
whereis samba
```

![whereis samba terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/whereis-samba-terminal-output.png)

The output prints the directory containing Samba. Another method of verifying the installation is by checking the Samba version:

```
samba -V
```

![samba -V terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/samba-v-terminal-output.png)

The output shows that the system installed Samba version 4.16.4.

4\. Lastly, confirm that Samba is running with:

```
systemctl status smbd
```

![systemctl status smbd terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/systemctl-status-smbd-terminal-output.png)

The output shows that the **smbd** service is enabled and running.

### Step 2: Create a Shared Directory

1\. To share files with Samba, create a directory containing files for sharing. Use [mkdir](https://phoenixnap.com/kb/create-directory-linux-mkdir-command) **\-p** to create the directory under **/home**:

For example, make a directory called **_sharing_** with:

```
sudo mkdir -p /home/sharing
```

2\. Use [ls](https://phoenixnap.com/kb/linux-ls-commands) to verify the outcome.

```
ls
```

![sudo mkdir -p and ls terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sudo-mrdir-p-and-ls-terminal-output.png)

### Step 3: Configure Samba’s Global Options

Configure Samba by editing the **_smb.conf_** file located in _/etc/samba/smb.conf_.

Access the file with [Vim](https://phoenixnap.com/kb/how-to-install-vim-ubuntu):

```
sudo vim /etc/samba/smb.conf
```

Next, scroll down to the _**Global Settings**_ section. Use this section to configure the Samba server's behavior, name, role, and network interfaces.

![Opening Samba configuration file in Vim](https://phoenixnap.com/kb/wp-content/uploads/2022/11/opening-samba-configuration-file-in-vim.png)

**Note:** Certain settings in the **_smb.conf_** file are marked as comments. To enable and tweak those settings, uncomment them.

The key parameters to consider are in the following subsections:

#### Browsing/Identification

The _**Browsing**_ subsection contains the **`workgroup`** and **`server string`** parameters:

-   The **`workgroup`** parameter enables file sharing between a group of computers over a local area network. Ensure the **`workgroup`** settings correspond to the ones on Windows.
-   The **`server string`** setting identifies the Samba server. In our example, the server is named _samba\_server_.

**Note:** To set the workgroup settings on Windows 10, open the **Control Panel** and access the **System and Security** settings. The **`workgroup`** parameter is under the _System_ section.

To configure the identification settings, uncomment the **`workgroup`** and **`server string`** parameters and add these values:

```
workgroup = WORKGROUP
```

```
server string = samba_server
```

![Browsing subsection Global Settings](https://phoenixnap.com/kb/wp-content/uploads/2022/11/browsing-subsection-global-settings.png)

#### Networking

Use the _**Networking**_ subsection to configure network interfaces that Samba binds to. **_Networking_** contains two parameters:

-   The first parameter, **`interfaces`**, sets the network interface for Samba to bind to.
-   The second parameter, **`bind interfaces only`**, ensures that Samba only binds to the interfaces listed in the file. The parameter should always be set to **`yes`**.

![Networking subsection Global Settings](https://phoenixnap.com/kb/wp-content/uploads/2022/11/networking-subsection-global-settings.png)

To set the **`interfaces`** parameter, first check the available interfaces with the [ip command](https://phoenixnap.com/kb/linux-ip-command-examples):

```
ip link
```

![ip link terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/ip-link-terminal-output.png)

The example output indicates Samba binds to two interfaces: **_lo_**, the loopback interface, and **_enp0s3_**, the network interface.

For example, in this case, the settings are:

```
interfaces = lo enp0s3
```

```
bind interfaces only = yes
```

**Note:** The network interfaces Samba binds to may differ from one machine to another.

#### Debugging

The _**Debugging**_ subsection has four parameters. Set them as follows:

```
log file = /var/log/samba/log.%m
max log size = 1000
logging = file
panic action = /usr/share/samba/panic-action %d
```

![Debugging subsection Global Settings](https://phoenixnap.com/kb/wp-content/uploads/2022/11/debugging-subsection-global-settings.png)

#### Authentication, Domain, and Misc

The most significant _**Authentication**_ parameter is **`server role`**. This parameter determines the server type for Samba.

1\. Set Samba as a standalone server:

```
server role = standalone server
```

![server role: = standalone server](https://phoenixnap.com/kb/wp-content/uploads/2022/11/server-role-standalone-server.png)

The following is an extensive list of other authentication settings:

```
obey pam restrictions = yes

unix password sync = yes

passwd program = /usr/bin/passwd

passwd chat = *Enter\snew\s*\spassword:* %n\n *Retype\snew\s*\spassword:* %n\n *password\supdated\ssuccessfully* .

pam password change = yes

map to guest = bad user
```

![Authentication subsection Global Settings](https://phoenixnap.com/kb/wp-content/uploads/2022/11/authentication-subsection-global-settings.png)

2\. Do not change any settings in the **Domain** subsection, but scroll down to **Misc** and set the following:

```
usershare allow guests = yes
```

![Misc subsection Global Settings](https://phoenixnap.com/kb/wp-content/uploads/2022/11/misc-subsection-global-settings.png)

Keep all other **_Global Settings_** unchanged.

3\. [Save and exit the file](https://phoenixnap.com/kb/how-to-vim-save-quit-exit) and run the Samba utility **`testparm`** to check for syntax errors:

```
testparm
```

![testparm terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/testparm-terminal-output.png)

The output shows the **_Loaded services file OK_** message, which signifies no syntax errors. With **_Global Settings_** configured, the Samba server is ready to use.

Still, not configuring the users and the directory limits the Samba functionality.

### Step 4: Set Up a User Account

1\. To create a user account, set a username and password with:

```
sudo smbpasswd -a username
```

Note that the username should belong to a system user. For instance, in this example, the system account on the Ubuntu system is **saraz**. Hence, the username is the same:

```
sudo smbpasswd -a saraz
```

![sudo smbpasswd -a terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sudo-smbpasswd-a-username-terminal-output.png)

2\. To add a new user to Samba and the system, use [adduser](https://phoenixnap.com/kb/linux-adduser):

```
sudo adduser username
```

For instance, add _new\_user_ to the system with:

```
sudo adduser new_user
```

![sudo adduser terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sudo-adduser-terminal-output.png)

3\. After entering and confirming the system password for _new\_user_, create a new Samba user with:

```
sudo smbpasswd -a new_user
```

![Creating new_user terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/new-user-terminal-output.png)

Next, both users need to have read, write and execute access to the _sharing_ directory. However, _saraz_ has these permissions by default. On the other hand, _new\_user_ does not.

4\. To grant read, write, and execute permissions to the _sharing_ directory, run **`setfacl`**:

```
sudo setfacl -R -m "u:new_user:rwx" /home/sharing
```

The command doesn’t produce any output.

### Step 5: Configure Samba Share Directory Settings

1\. Access the configuration file once again to add the previously made _sharing_ directory. [Go to the end of the file](https://phoenixnap.com/kb/vim-go-to-end-of-file) and add:

```
[sharing]
comment = Samba share directory
path = /home/sharing
read only = no
writable = yes
browseable = yes
guest ok = no
valid users = @saraz @new_user
```

![sharing settings in Vim](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sharing-settings-in-vim.png)

Each line grants specific permissions to access the directory. For instance:

-   **\[sharing}.** Represents the directory name. This is the directory location Windows users see.
-   **comment.** Serves as a shared directory description.
-   **path.** This parameter specifies the shared directory location. The example uses a directory in _/home_, but users can also place the shared files under _/samba_.
-   **read only.** This parameter allows users to modify the directory and add or change files when set to **`no`**.
-   **writeable.** Grants read and write access when set to **`yes`**.
-   **browseable.** This parameter allows other machines in the network to find the Samba server and Samba share when set to **`yes`**. Otherwise, users must know the exact Samba server name and type in the path to access the shared directory.
-   **guest ok.** When set to **`no`**, this parameter disables guest access. Users need to enter a username and password to access the shared directory.
-   **valid users.** Only the users mentioned have access to the Samba share.

2\. Save the changes and exit the file.

3\. Rerun **`testparm`**:

![testparm terminal output after the configuration](https://phoenixnap.com/kb/wp-content/uploads/2022/11/testparm-terminal-output-share-configuration.png)

The output confirms that the Samba is adequately configured. For a more verbose output, hit **enter**:

![Hitting enter after testparm ](https://phoenixnap.com/kb/wp-content/uploads/2022/11/hit-enter-testparm-terminal-output.png)

### Step 6: Update the Firewall Rules

To ensure the Linux firewall allows Samba traffic, run:

```
sudo ufw allow samba
```

![sudo ufw allow samba terminal output](https://phoenixnap.com/kb/wp-content/uploads/2022/11/sudo-ufw-allow-samba-terminal-output.png)

### Step 7: Connect to the Shared Directory

1\. Before connecting to the Samba server, restart the services with:

```
sudo systemctl restart smbd
```

The command prints no output.

2\. To connect to the shared directory via GUI, access the default file manager and choose the **Other Locations** option:

![Access other locations](https://phoenixnap.com/kb/wp-content/uploads/2022/11/access-other-locations.png)

3\. Type the following into the **Enter server address...** box and select **Connect**:

```
smb://ip-address/sharing
```

![Connect to server](https://phoenixnap.com/kb/wp-content/uploads/2022/11/connect-to-server.png)

4\. The system asks for a **Username** and **Password**. Provide the requested info and click **Connect** again:

![Enter credentials](https://phoenixnap.com/kb/wp-content/uploads/2022/11/enter-credentials.png)

5\. This adds the _sharing_ directory to the _Windows shares_ location:

![Windows shares](https://phoenixnap.com/kb/wp-content/uploads/2022/11/windows-shares-on-local.png)

Conclusion

After reading this tutorial, you now know how to install and configure Samba on Ubuntu.

Next, learn essential Linux commands with this handy [Linux commands cheat sheet](https://phoenixnap.com/kb/linux-commands-cheat-sheet).
