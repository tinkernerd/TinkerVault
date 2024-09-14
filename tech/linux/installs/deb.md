---
title: .Deb Files
---
# .Deb File - Installing/Uninstalling
Source - https://askubuntu.com/questions/40779/how-do-i-install-a-deb-file-via-the-command-line

Packages are **manually** installed via the **`dpkg`** command (Debian Package Management System). `dpkg` is the backend to commands like `apt-get` and `aptitude`, which in turn are the backend for GUI install apps like the Software Center and Synaptic.

Something along the lines of:

`dpkg` --> `apt-get`, `aptitude` --> Synaptic, Software Center

But of course the easiest ways to install a package would be, first, the GUI apps (Synaptic, Software Center, etc..), followed by the terminal commands `apt-get` and `aptitude` that add a very nice user friendly approach to the backend dpkg, including but not limited to packaged dependencies, control over what is installed, needs update, not installed, broken packages, etc.. Lastly the `dpkg` command which is the base for all of them.

Since dpkg is the base, you can use it to install packaged directly from the command line.

### Install a package

```
sudo dpkg -i DEB_PACKAGE
```

For example if the package file is called `askubuntu_2.0.deb` then you should do `sudo dpkg -i askubuntu_2.0.deb`. If `dpkg` reports an error due to dependency problems, you can run `sudo apt-get install -f` to download the missing dependencies and configure everything. If that reports an error, you'll have to sort out the dependencies yourself by following for example [How do I resolve unmet dependencies after adding a PPA?](https://askubuntu.com/questions/140246/how-do-i-resolve-unmet-dependencies).

### Remove a package

```
sudo dpkg -r PACKAGE_NAME
```

For example if the package is called `askubuntu` then you should do `sudo dpkg -r askubuntu`.

### Reconfigure an existing package

```
sudo dpkg-reconfigure PACKAGE_NAME
```

This is useful when you need to reconfigure something related to said package. Some useful examples it the `keyboard-configuration` when you want to enable the Ctrl+Alt+Backspace in order to reset the X server, so you would the following:

```
sudo dpkg-reconfigure keyboard-configuration
```

Another great one is when you need to set the Timezone for a server or your local testing computer, so you use use the `tzdata` package:

```
sudo dpkg-reconfigure tzdata
```