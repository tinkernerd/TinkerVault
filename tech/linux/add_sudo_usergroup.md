---
title: How to Add User to Sudoers or Sudo Group 
---

# How to Add User to Sudoers or Sudo Group 

> ## Excerpt
> Learn how to add users to sudoers on Ubuntu the simple way. In Linux, Sudo allows users to execute specific commands as a superuser.

---

Standard user accounts have limitations that prevent them from performing sensitive tasks.

For example, to view the _/root_ directory contents with the [ls command](https://phoenixnap.com/kb/linux-ls-commands), users need elevated permissions. Running the command without those permissions results in an error:

```
ls /root
```

### Step 1: Create a New User

To create a new user:

1. Use the [adduser](https://phoenixnap.com/kb/linux-adduser) command:

```
sudo adduser [name-of-user]
```

For instance, create a user called _user1_ with:

```
sudo adduser user1
```

The **`adduser`** command creates a new user with a group and _Home_ [directory](https://phoenixnap.com/glossary/what-is-a-directory) for that user.

2. The system prompts for a password. Enter a [secure password](https://phoenixnap.com/blog/strong-great-password-ideas), then retype it to confirm.

3. The system asks for additional information about the user, including name, phone numbers, etc. These fields are optional and can be skipped by pressing **Enter**.

4. Type y to confirm the information and complete the settings for the new user.

### Step 2: Add User to Sudoers File or Sudo Group

The _sudoers_ file and the sudo group are related to granting users administrative privileges via the **`sudo`** command.

_/etc/sudoers_ is a configuration file that specifies which users or groups can use **`sudo`** for administrative tasks. It defines permissions, such as command execution and password requirements.

On the other hand, the sudo group is created specifically to manage sudo privileges. Users added to this group gain sudo access to run commands with elevated permissions using **`sudo`**.

To grant users sudo permission without editing the _sudoers_ file, add them to the sudo group with the [usermod](https://phoenixnap.com/kb/usermod-linux) command:

```
sudo usermod -aG sudo [name-of-user]
```

For example, grant _user1_ sudo privileges with:

```
sudo usermod -aG sudo user1
```

The command has no output, but the **`-aG`** option tells the system to append the user to the specified group.

### Step 3: Verify User Belongs to Sudo Group

To confirm _user1_ belongs to the sudoers group, view the groups the user belongs to:

```
groups user1
```

The system responds by listing the username and all groups it belongs to.

### Step 4: Verify Sudo Access

To verify sudo access, take the following steps:

1. Switch users with the [su command](https://phoenixnap.com/kb/su-command-linux-examples). For example:

```
su - user1
```

Enter the password when prompted.

2. Run a command that requires elevated privileges. For instance, list the _/root_ directory contents using the **`ls`** command with **`sudo`**:

```
sudo ls /root
```


When the command provides the output, the user has sudo access.
