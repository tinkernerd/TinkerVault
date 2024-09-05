# Create SSH Key

Link: https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2
### [Introduction](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2#introduction)

The Secure Shell Protocol (or SSH) is a cryptographic network protocol that allows users to securely access a remote computer over an unsecured network.

Though SSH supports password-based authentication, it is generally recommended that you use _SSH keys_ instead. SSH keys are a more secure method of logging into an SSH server, because they are not vulnerable to common brute-force password hacking attacks.

Generating an SSH key pair creates two long strings of characters: a public and a private key. You can place the public key on any server, and then connect to the server using an SSH client that has access to the private key.

When the public and private keys match up, the SSH server grants access without the need for a password. You can increase the security of your key pair even more by protecting the private key with an optional (but highly encouraged) passphrase.

## [Step 1 — Creating the Key Pair](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2#step-1-creating-the-key-pair)

The first step is to create a key pair on the client machine. This will likely be your local computer. Type the following command into your local command line:
```bash
ssh-keygen -t ed25519
```
Output:
``` 
Generating public/private ed25519 key pair.
```

## [Step 2 — Specifying Where to Save the Keys](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2#step-2-specifying-where-to-save-the-keys)

The first prompt from the `ssh-keygen` command will ask you where to save the keys:

Output:
```
Enter file in which to save the key (/home/<mark>sammy</mark>/.ssh/id_ed25519):
```

You can press `ENTER` here to save the files to the default location in the `.ssh` directory of your home directory.

Alternately, you can choose another file name or location by typing it after the prompt and hitting `ENTER`.

## [Step 3 — Creating a Passphrase](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2#step-3-creating-a-passphrase)

The second and final prompt from `ssh-keygen` will ask you to enter a passphrase:

Output
```
Enter passphrase (empty for no passphrase):
```

It’s up to you whether you want to use a passphrase, but it is strongly encouraged: the security of a key pair, no matter the encryption scheme, still depends on the fact that it is not accessible to anyone else.

Should a private key with no passphrase fall into an unauthorized user’s possession, they will be able to log in to any server you’ve configured with the associated public key.

The main downside to having a passphrase — typing it in — can be mitigated by using an `ssh-agent` service, which will temporarily store your unlocked key and make it accessible to the SSH client. Many of these agents are integrated with your operating system’s native keychain, making the unlocking process even more seamless.

To recap, the entire key generation process looks like this:

```
<p>Output</p>Generating public/private ed25519 key pair.
Enter file in which to save the key (/home/<mark>sammy</mark>/.ssh/id_ed25519):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/<mark>sammy</mark>/.ssh/id_ed25519
Your public key has been saved in /home/<mark>sammy</mark>/.ssh/id_ed25519.pub
The key fingerprint is:
SHA256:EGx5HEXz7EqKigIxHHWKpCZItSj1Dy9Dqc5cYae+1zc <mark>sammy@hostname</mark>
The key's randomart image is:
+--[ED25519 256]--+
| o+o o.o.++      |
|=oo.+.+.o  +     |
|*+.oB.o.    o    |
|*. + B .   .     |
| o. = o S . .    |
|.+ o o . o .     |
|. + . ... .      |
|.  . o. . E      |
| .. o.   . .     |
+----[SHA256]-----+
```

The public key is now located in `/home/user/.ssh/id_ed25519.pub`. The private key is now located in `/home/user/.ssh/id_ed25519`.

## [Step 4 — Copying the Public Key to Your Server](https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys-2#step-4-copying-the-public-key-to-your-server)

Once the key pair is generated, it’s time to place the public key on the server that you want to connect to.

You can copy the public key into the server’s `authorized_keys` file with the `ssh-copy-id` command. Make sure to replace the example username and address:

Once the command completes, you will be able to log into the server via SSH without being prompted for a password. However, if you set a passphrase when creating your SSH key, you will be asked to enter the passphrase at that time. This is your local `ssh` client asking you to decrypt the private key, it _is not_ the remote server asking for a password.

