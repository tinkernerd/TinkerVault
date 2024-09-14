---
title: How to Change Password in Linux
---
# How to Change Password in Linux

To change your password in [Linux](https://phoenixnap.com/kb/what-is-linux):

1. Open a terminal window and run the passwd
2. Type in your current password.
3. Enter the new password.
4. Repeat the new password.

## How to Change Another User's Password in Linux

To change the password of a different user:

1. Use the **`passwd`** command with the name of the user for whom you want to change the password.
2. Type in your login password. This is the same password you use to log in to the system.
3. Enter the new password for the user.
4. Repeat the new password.

## How to Change Root Password in Linux

The root password allows users to execute high-privilege commands. To change the root password in Linux:

1. Execute the **`passwd`** command W/root
2. Enter your login password.
3. Enter a new root password.
4. Retype the new root password.
The system confirms the root password has been updated.

## How to Force a Password Reset in Linux
Run the following command to force user1 to change the password on the next login:

```
sudo passwd -e user1
```

Confirm your password. The user will have to provide a new password the next time they log in.
