---
created: 2024-07-14T21:55:33 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/generate-setup-ssh-key-ubuntu
author: Vladimir Kaplarevic
title: SSH Keys
---
{% include "not_my_work.md" %}
# How to Generate SSH Keys on Ubuntu 

> ## Excerpt
> Generate SSH Keys on Ubuntu to set up a secure SSH connection to a remote host. Follow this tutorial to learn how to create and use SSH keys.

---
Introduction

An [SSH](https://phoenixnap.com/kb/what-is-ssh) (Secure Shell) connection is essential for effectively managing a remote server. SSH keys, which consist of a public-private key pair, facilitate [encrypted](https://phoenixnap.com/glossary/encryption-definition) communication and serve as access credentials to establish a secure connection.

**Learn how to generate SSH keys on Ubuntu and** [set up key-based authentication](https://phoenixnap.com/kb/ssh-with-key) **to connect to a remote server without a password.**

![How to generate SSH keys on Ubuntu.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/how-to-generate-ssh-keys-on-ubuntu-pnap.png)

Prerequisites

-   A [user account with sudo privileges](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu).
-   Access to a terminal window/[command line](https://phoenixnap.com/glossary/command-line-interface-cli).
-   A remote Ubuntu server with network access.
-   [SSH enabled on remote Ubuntu server](https://phoenixnap.com/kb/how-to-enable-ssh-on-ubuntu).

**Note:** For more information about what SSH is, how it works, and why it is used, refer to our guide [How Does SSH Work](https://phoenixnap.com/kb/how-does-ssh-work).

The SSH key generation process creates two keys:

-   **Public key**. Installed on the server, allows the server to recognize and [authenticate](https://phoenixnap.com/glossary/what-is-authentication) the client based on the matching private key.
-   **Private key**. Must be kept secure. It is crucial for the authentication process to ensure that you are the only person who can authenticate to the server.

Follow the steps below to create the public-private key pair.

### Generate SSH Key Pair

Generate a pair of SSH keys on the **client** system. The client system is the machine that connects to the SSH server.

1\. Create a [directory](https://phoenixnap.com/glossary/what-is-a-directory) named _.ssh_ in the home directory. The **`-p`** option ensures the system does not return an error if the directory exists:

```
mkdir -p $HOME/.ssh
```

2\. [Change permissions](https://phoenixnap.com/kb/linux-file-permissions) of the directory to give the user **`read`**, **`write`**, and **`execute`** privileges:

```
chmod 0700 $HOME/.ssh
```

3\. Execute the **`ssh-keygen`** command to create an [RSA](https://phoenixnap.com/glossary/rivest-shamir-adleman) key pair:

```
ssh-keygen
```

4\. When prompted, provide the path to the key [file](https://phoenixnap.com/glossary/what-is-a-file). If you press **Enter** without typing a file path, the key will be stored in the _.ssh_ directory under the default file name **`id_rsa`**.

5\. The system asks you to create a passphrase as an added layer of security. Input a memorable passphrase, and press **Enter**.

The output shows that the keys have been created successfully.

![The output of the ssh-keygen command shows that the key pair has been generated successfully.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/output-from-ssh-keygen-pnap-update.png)

Alternatively, create keys using the **RSA 4096 encryption** for extra security:

```
ssh-keygen -t rsa -b 4096
```

**Note**: If a key pair with the same name exists, new keys will overwrite the information in the file, and the old keys will no longer work.

### Copy Public Key to Ubuntu Server

After obtaining the key pair, copy the public key to the remote Ubuntu server using one of the following methods.

#### Using ssh-copy-id Script

The **`ssh-copy-id`** [script](https://phoenixnap.com/glossary/what-is-a-script) is designed to automatically:

-   [Log into the remote server via SSH](https://phoenixnap.com/kb/ssh-to-connect-to-remote-server-linux-or-windows).
-   Create the _.ssh_ directory and _authorized\_keys_ file on the remote server and set the correct permissions.
-   Append the key to the _authorized\_keys_ file.

1\. Use the **`ssh-copy-id`** command on the client system to copy the key to the remote **Ubuntu server**. Enter the **`-i`** option to specify the path to the SSH key:

```
ssh-copy-id -i [ssh-key-location] [username]@[server-ip-address]
```

Replace **`[ssh-key-location]`** with the path to your public SSH key, **`[username]`** with the remote server's username and **`[server-ip-address]`** with the remote server's IP.

**Note:** The default SSH key path is _~/.ssh/id\_rsa.pub_. If your public key is located elsewhere or named differently, change the path accordingly.

2\. A message stating that _the_ _authenticity of the host cannot be established_ may appear when connecting to the server for the first time. Type **yes** and press **Enter** to proceed.

3\. When prompted, enter the password for the user account on the server to authorize copying the SSH public key.

![Copying the credentials to the server using the ssh-copy-id command.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/output-from-ssh-copy-id-i-key-pub-username-ip-address.png)

The system copies the contents of the _~/.ssh/id\_rsa.pub_ from the **client** system into the _~/.ssh/authorized\_keys_ file on the **server**.

#### Copy Public Key Manually

If a system does not have the **`ssh-copy-id`** command, you can manually copy and add the public key to the remote server's _authorized\_keys_ file.

1\. Use the following command to display the public key:

```
cat ~/.ssh/id_rsa.pub
```

![Manually copying the public SSH key.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/output-from-cat-ssh-key-pub-pnap.png)

2\. Use the mouse to select the entire key, then press **Ctrl+Shift+C** to copy it.

3\. Log in to the SSH server using password authentication:

```
ssh [username]@[remote_host]
```

**Note**: If the password authentication is disabled on the server, you cannot establish an SSH connection manually. The only way to [access the server remotely](https://phoenixnap.com/glossary/what-is-remote-access) is via a console. If you do not have console access, the server is unreachable, and the process cannot be completed.

4\. Create the _.ssh_ directory and the _authorized\_keys_ file on the remote server:

```
mkdir -p ~/.ssh &amp;&amp; touch ~/.ssh/authorized_keys
```

5\. Set the necessary permissions:

```
chmod 700 ~/.ssh
```

```
chmod 600 ~/.ssh/authorized_keys
```

6\. Append the previously copied public key to the _authorized\_keys_ file on the remote server. If connected via SSH, use the following command:

```
echo 'paste-public-ssh-key-here' &gt;&gt; ~/.ssh/authorized_keys
```

Replace **`paste-your-public-ssh-key-here`** with the actual SSH public key.

**Warning**: The **`>>`** symbol is used to append content to a file. The **`>`** symbol overwrites the file contents. Always double-check that you are using the correct symbol to avoid overwriting important data.

If you are accessing the server via console, open the _authorized\_keys_ file using a text editor, like [nano](https://phoenixnap.com/kb/use-nano-text-editor-commands-linux):

```
nano ~/.ssh/authorized_keys 
```

Paste the public key at the bottom of the file and save the changes.

#### Using cat and SSH Together

Instead of logging into the remote server, users can execute the [cat command](https://phoenixnap.com/kb/linux-cat-command) via SSH from a local machine and append the public key directly into the _authorized\_keys_ file:

```
cat ~/.ssh/id_rsa.pub | ssh [username]@[remote_host] "mkdir -p ~/.ssh &amp;&amp; cat &gt;&gt; ~/.ssh/authorized_keys" 
```

This method uses **`cat`** to read the public key, pipes it over SSH, and appends it to the _authorized\_keys_ file on the remote server. It also ensures the _.ssh_ directory exists before trying to append the key.

**Note:** If you manage multiple servers or need to distribute keys to many machines, configuration management tools like [Ansible](https://phoenixnap.com/kb/install-ansible-ubuntu-20-04), Puppet, or [SaltStack](https://phoenixnap.com/kb/saltstack-vs-ansible) can efficiently handle SSH keys. Each tool offers different modules specifically designed for this purpose.

### Log In to the Remote Server

To log in to a remote server, enter the following command on the client system:

```
ssh [username]@[server-ip] 
```

If SSH key authentication is set up, the system may not request the user's account password. However, if the SSH key is protected by a passphrase, users are prompted to enter it to unlock the key.

![A successful SSH log in attempt.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/output-from-ssh-username-ip-address-pnap-update.png)

After a successful login, users gain access to the remote server's command line.

### Set up Passwordless SSH Login (Optional)

Users can add a layer of security by disabling password authentication. The server then accepts logins only from clients with the matching private key.

To [configure passwordless SSH logins](https://phoenixnap.com/kb/setup-passwordless-ssh) in Ubuntu:

1\. Open the _sshd\_config_ file on the remote server using a preferred text editor. The following command opens the file using **nano**:

```
sudo nano /etc/ssh/sshd_config
```

2\. Search the file and locate the following line:

```
PasswordAuthentication yes
```

3\. Modify the line to disable password-based logins:

```
PasswordAuthentication no
```

![Editing the SSH server configuration file.](https://phoenixnap.com/kb/wp-content/uploads/2022/11/editing-sshd-config-ubuntu-22-04-server.png)

Save changes and exit by pressing **Ctrl+X**, press **Y** when prompted to save the changes, and **Enter** to confirm.

**Warning:** Before restarting the SSH service, log out and then try to log back in using the SSH key. Confirm that the key-based login works correctly to avoid being locked out of the server.

4\. Restart the SSH service:

```
sudo systemctl restart ssh
```

After these changes, the server no longer accepts password-based logins.

Conclusion

By following the instructions in this tutorial, you have set up SSH-key-based authentication on an Ubuntu server. The connection is now highly secure, using unique, cryptographic SSH key pairs.

Next, find out what the 19 most common [SSH Commands in Linux](https://phoenixnap.com/kb/linux-ssh-commands) are.
