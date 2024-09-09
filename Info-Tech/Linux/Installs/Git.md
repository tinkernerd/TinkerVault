---
created: 2024-07-14T21:49:28 (UTC -04:00)
tags: []
title: Git
source: https://phoenixnap.com/kb/how-to-install-git-on-ubuntu
author: Sofija Simic
---

# How To Install and Set Up Git on Ubuntu | phoenixNAP KB

> ## Excerpt
> Follow this guide to install Git on Ubuntu using apt for an easy setup or compile from source for the latest version.

---
Introduction

Git is a version control system used in modern software development. It allows multiple developers to work on the same project and track changes and different revisions. The system seamlessly integrates with Ubuntu and enhances collaboration and efficient code management.

**This step-by-step guide walks you through installing and configuring Git on Ubuntu.**


Prerequisites

-   A user account with [sudo or root privileges](https://phoenixnap.com/kb/change-root-password-ubuntu).
-   A machine running Ubuntu (20.04, 22.04, or 24.04).
-   Access to a command line/terminal window (**Ctrl**+**Alt**+**T**).

There are two ways to install [Git](https://phoenixnap.com/kb/what-is-git) on Ubuntu:

-   **With apt, from the official Ubuntu repository**. The official Ubuntu package manager offers a straightforward installation process, but the version in the [repository](https://phoenixnap.com/glossary/what-is-a-repository) may not be the latest.
-   **From the source code**. A more complicated installation process, but it offers the latest version with the newest features and bug fixes.

The sections below show both methods for installing Git on Ubuntu. Choose the method most suitable for your needs and follow the steps.

### Method 1: Install Git with apt on Ubuntu

Using the [apt package management tool](https://phoenixnap.com/kb/apt-linux) is the easiest way to install Git. However, the version in the default repository is often not the latest release. This is because Ubuntu prioritizes stability and thorough testing over cutting-edge updates to ensure that software in the official repositories is reliable and secure for users.

If you want to install the latest release, scroll down to read how to install it from the source. To install Git with **`apt`**, follow these steps:

1\. Update the system package index with the following command:

```
sudo apt update
```

Updating the package index ensures you are working with the latest software versions.

2\. Install Git from the default Ubuntu repository by running:

```
sudo apt install git -y
```

![Installing Git on Ubuntu using the apt package manager.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/install-git-with-apt.png)

Allow the process to complete.

3\. Verify the installation and version by running:

```
git --version
```

![Checking the Git program version after installation.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/check-git-version-after-installation.png)

The output states the program version if it has been installed correctly.

### Method 2: Install Git on Ubuntu From Source Code

To set up the latest version of Git on Ubuntu, download and install it from the source code. Follow the steps below:

1\. Start by installing the required dependencies for Git on Ubuntu. Run:

```
sudo apt install make libssl-dev libghc-zlib-dev libcurl4-gnutls-dev libexpat1-dev gettext unzip -y
```

Wait for the installation to complete.

2\. Create a new _tmp_ directory and move to that directory:

```
mkdir tmp
cd /tmp
```

3\. Open a browser window and navigate to the following address:

```
https://mirrors.edge.kernel.org/pub/software/scm/git/
```

From the list of Git releases, find the version number for the latest release (or another specific version you want to install) and enter the version number in the following command:

```
curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-X.X.X.tar.gz
```

For example, the latest version at the time of writing this article is **2.9.5**. We will use the [curl command](https://phoenixnap.com/kb/curl-command) to download Git version 2.9.5 and rename the downloaded file to _git.tar.gz_:

```
curl -o git.tar.gz https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz
```

![Downloading the latest Git version with curl.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/download-latest-git-version.png)

The command downloads the Git _tar_ file.

4. Uncompress the tarball file by running:

```
tar -zxf git.tar.gz
```

5\. Move to the new [directory](https://phoenixnap.com/glossary/what-is-a-directory):

```
cd git-*
```

6\. Compile the package by running the following command:

```
make prefix=/usr/local/
```

![Compiling the Git source code.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/compile-git-package.png)

7\. Once the process completes, install Git by running:

```
sudo make prefix=/usr/local install
```

![Installing Git from the source code on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/install-git-from-source.png)

8\. Verify the Git installation by running:

```
git --version
```

![Checking Git version after installation.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/check-git-version-1.png)

## Set up Git on Ubuntu

Git contains a basic configuration file that holds crucial information. Setting your username and email address is essential.

1\. In a terminal window, enter this command and replace **`your_name`** with your name and **`email@address.com`** with your email address:

```
git config --global user.name "your_name"
```

```
git config --global user.email "email@address.com"
```

2\. Verify configuration changes with the command:

```
git config --list
```

The system should display the name and email address you just entered.

![Configuring the global Git settings.](https://phoenixnap.com/kb/wp-content/uploads/2024/07/configure-git.png)

**Note:** Not configuring the settings results in a warning when making a commit, which makes you go back and revise your commits.

### Starting with Basic Git Commands on Ubuntu

The following is a list of useful Git commands to help you get started:

-   Find the changed files in the working directory: **`git status`**
-   Compare codebase states: **`git diff`**
-   Add changes to your next commit: **`git add`**
-   Add selected changes into your next commit: **`git add -p`**
-   Change the [last commit](https://phoenixnap.com/kb/git-revert-last-commit): **`git commit -amend`**
-   Commit all local changes in tracked files: **`git commit -a`**
-   Commit previously staged changes: **`git commit`**
-   [Rename a Local branch](https://phoenixnap.com/kb/how-to-rename-git-branch-local-remote): **`git branch -m new-name`**
-   List all currently configured remotes: **`git remote -v`**
-   View information about a remote: **`git remote show`**
-   Add a new remote repository: **`git remote add`**
-   [Delete a remote repository](https://phoenixnap.com/kb/git-remove-remote): **`git remote remove [remote name]`**
-   Download all changes from the remote repository: **`git fetch`**
-   Download all changes from the remote repository and merge into **`HEAD`**: **`git pull branch`**
-   [Create a new branch](https://phoenixnap.com/kb/git-create-new-branch) with the command: **`git branch [branch_name]`**

To see more Git commands use **`git --help`**, or download and refer to our [Git commands cheat sheet](https://phoenixnap.com/kb/git-commands-cheat-sheet) for free to have the most commonly used commands always at hand.

Conclusion

Now you know how to install and configure Git on your Ubuntu system. Use Git for efficient version control, collaboration, and to track changes in software development projects.

For CentOS, Windows, or macOS systems, see our guides on [installing Git on Windows](https://phoenixnap.com/kb/how-to-install-git-windows) and [installing Git on MacOS](https://phoenixnap.com/kb/install-git-on-mac).
