---
created: 2024-07-14T21:53:06 (UTC -04:00)
title: GUI on an Ubuntu Server
tags: []
source: https://phoenixnap.com/kb/how-to-install-a-gui-on-ubuntu
author: Marko Aleksic
---

# How to Install a Desktop (GUI) on an Ubuntu Server

> ## Excerpt
> Install a Desktop on an Ubuntu Server to start using GUI tools. Follow this simple guide to install a desktop environment of your choice.

---
Introduction

[Ubuntu Server](https://phoenixnap.com/blog/centos-vs-ubuntu) is a variant of the [Ubuntu OS](https://phoenixnap.com/kb/ubuntu-22-04-lts) that does not include [a graphical user interface (GUI)](https://phoenixnap.com/glossary/what-is-gui) by default. GUI applications consume system resources needed for server-oriented tasks, so Linux server distributions usually avoid a GUI in favor of the command-line terminal.

Some tools, however, perform better and are easier to manage with a GUI. If you use a tool with a GUI, installing a desktop environment may improve the experience of working with the server.

**This guide will show you how to install a desktop (GUI) graphical interface on your Ubuntu server.**


Prerequisites

-   A server running Ubuntu Linux Server
-   A user account with sudo or root privileges
-   The [apt package manager](https://phoenixnap.com/kb/apt-vs-apt-get), included by default

## Update Repositories and Packages

Start by ensuring the software on the server is up to date.

1\. Refresh the repository and package lists, and perform the necessary upgrades with the following command:

```
sudo apt update &amp;&amp; sudo apt upgrade
```

![Updating and upgrading packages in Ubuntu Server before installing GUI on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/output-from-sudo-apt-upgrade-sudo-apt-update-ubuntu-server-gui.png)

2\. When prompted, hit **Y** and press **Enter** to start the upgrade.

## Install and set up Display Manager

A display manager is an application that starts the display server, launches the desktop, and manages user authentication. The default **GDM3** is a resource-intensive display manager. To conserve system resources, consider a lighter tool, such as **SLiM** or **LightDM**.

This guide uses SLiM to illustrate the rest of the GUI installation process.

1\. To install SLiM, type:

```
sudo apt install slim
```

![Installing SLiM display manager on Ubuntu Server.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/output-from-sudo-apt-install-slim-ubuntu-server-gui.png)

2\. Press **Y** and then hit **Enter** to start the installation procedure.

**Note**: If you prefer to install the LightDM display manager instead, type:

```
sudo apt install lightdm
```

With a display manager installed, proceed to install a GUI. The sections below contain instructions for the most common Linux desktop environments.

### Ubuntu Desktop

The default Ubuntu Desktop is a modified version of the GNOME desktop environment.

1\. Install Ubuntu Desktop by running the following command:

```
sudo apt install ubuntu-desktop
```

**Note:** if asked, confirm slim as the default desktop manager.

2\. Reboot the system when the installation finishes by typing:

```
sudo reboot
```

**Note**: If you do not wish to reboot immediately, type the following command to start SLiM:

```
sudo service slim start
```

After the system reboots, a graphical login screen appears. The default display manager generates this screen.

![Slim display manager login screen.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/slim-login-screen-ubuntu-server-gui.png)

3\. Type your username in the field and press **Enter** to reveal the password field. Enter your password to access the desktop environment.

![Default Ubuntu desktop environment.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/ubuntu-session-ubuntu-server-gui.png)

**Note**: For the vanilla GNOME experience, install the following packages:

```
sudo apt install vanilla-gnome-desktop vanilla-gnome-default-settings
```

### KDE Plasma

KDE Plasma is a flexible and customizable desktop environment that provides visual consistency and style while remaining fast and responsive. To install KDE Plasma, use the following command:

```
sudo apt install kde-plasma-desktop
```

Reboot the system and log in to access the KDE environment.

![KDE Plasma desktop environment.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/kde-desktop-ubuntu-server-gui.png)

### XFCE

The XFCE desktop environment is designed to be lightweight and user-friendly. The main package, **`xfce4-session`**, provides a bare-bone environment. If you want the full experience,  install the **`xfce4-goodies`** package as well.

Install the packages with the following command:

```
sudo apt-get install xfce4-session xfce4-goodies
```

After you reboot the system and log in, the XFCE desktop appears.

![XFCE desktop environment.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/xfce-desktop-ubuntu-server-gui.png)

### MATE

MATE is a fork of GNOME 2 and a popular graphical interface designed to be light on resource consumption. Install it by executing the following command:

```
sudo apt install ubuntu-mate-desktop
```

![MATE desktop environment.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/mate-desktop-ubuntu-server-gui.png)

### LXDE

LXDE is a desktop environment with a very lightweight GUI. Use LXDE if you need a graphical interface but want to minimize the impact on system memory and CPU.

To install LXDE on Ubuntu, use the following command:

```
sudo apt install lxde
```

![LXDE desktop environment.](https://phoenixnap.com/kb/wp-content/uploads/2022/08/lxde-desktop-ubuntu-server-gui.png)

## Switching between GUI

If you install more than one desktop environment, you can switch between different GUIs from your display manager screen. SLiM, for example, lets you cycle through the installed environments by pressing **F1** repeatedly. The name of the currently toggled environment is visible at the bottom of the screen.

![Switching between GUI after installing it on Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2022/08/slim-login-screen-mate-desktop-ubuntu-server-gui.png)

Log in once you toggle the GUI you want to use.

## Removing the GUI and Display Manager

To revert to the command line interface and remove the packages related to the display manager and the desktop environments:

1\. Open the terminal, and enter:

```
sudo apt remove [display-manager] [desktop-environment]
```

For example, to remove SLiM and LXDE, type:

```
sudo apt remove slim lxde
```

2\. Reboot the system and log back in.

3\. Finish by removing orphaned or unnecessary dependencies with **`autoremove`**:

```
sudo apt autoremove
```

**Note**: Deploy and manage physical servers in a cloud-like environment with Bare Metal Cloud. To find out more, read about phoenixNAP's [cloud-native dedicated servers](https://phoenixnap.com/bare-metal-cloud).

Conclusion

If you’ve worked extensively with conventional operating systems, it can be challenging to have to work in [a command-line interface](https://phoenixnap.com/glossary/command-line-interface-cli). Fortunately, Ubuntu - like many Linux systems - is open-source, so there are many available GUIs to install.

After completing this tutorial, you should know how to install a display manager and a desktop environment on your Ubuntu Server.
