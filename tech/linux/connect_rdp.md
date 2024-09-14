---
title: How to Connect to a Windows PC from Ubuntu using RDP
---

# How to Connect to a Windows PC from Ubuntu using RDP

> ## Excerpt
> Learn how to connect to a Windows PC from Ubuntu using RDP and discover tips and best practices to ensure a seamless and secure connection.

---
Introduction

The Remote Desktop Protocol (RDP) allows users to connect to another computer across a network and assume remote control over the [host](https://phoenixnap.com/glossary/what-is-a-host) machine. The [remote desktop](https://phoenixnap.com/glossary/what-is-remote-desktop) connection can be established between different platforms, e.g., [Linux](https://phoenixnap.com/kb/what-is-linux) users can RDP into a Windows system and vice versa.

[System administrators](https://phoenixnap.com/glossary/system-administrator-sysadmin) working in Linux often use RDP to configure, manage, and troubleshoot Windows workstations and servers.

**Learn how to RDP to a Windows PC from your Ubuntu system in minutes.**

![how to connect to a windows pc from ubuntu using rdp](https://phoenixnap.com/kb/wp-content/uploads/2023/10/windows-ubuntu-rdp.png)

Prerequisites

-   [Ubuntu 22.04](https://phoenixnap.com/kb/ubuntu-22-04-lts) or [Ubuntu 20.04](https://phoenixnap.com/kb/install-ubuntu-20-04) installed.
-   [Sudo](https://phoenixnap.com/kb/how-to-create-sudo-user-on-ubuntu) or root privileges.
-   A remote Windows machine with network connectivity.
-   Windows firewall set to allow incoming RDP connections.
-   The user account intended for the RDP session must have RDP permissions on the Windows system.

The Ubuntu (client) and Windows (host) systems need to be configured before establishing an RDP connection.

### Enable Remote Desktop Connection on the Windows Computer

Incoming RDP connections must be enabled on the Windows system. There are two ways to enable RDP in Windows.

#### Option 1: Enable RDP in Settings

1\. Open the Windows Start menu and select **Settings**.

![Access Settings App in Windows.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/open-settings-app-windows.png)

**Note:** Alternatively, press **`Winkey+I`** to access the _Settings_ app.

2\. Select **System**.

![The System option in the Windows Settings App.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/select-system-windows-settings.png)

3\. Choose **Remote Desktop** in the menu on the left side of the screen.

![The Remote Desktop option in Windows Settings.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/remote-desktop-system-settings-windows.png)

4\. Toggle the _Enable Remote Desktop_ switch **On**.

5\. Click **Confirm**.

![Enable RDP on Windows.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/enable-rdp-windows.png)

6\. Close the **Settings** menu.

**Note:** When enabling RDP, ensure the user account initiating the connection has RDP permissions and the firewall allows RDP connections.

The Windows PC can now accept RDP connections.

#### Option 2: Enable RDP from Windows CMD

Activating RDP via the Windows [CMD](https://phoenixnap.com/kb/cmd-commands) (Command Prompt) is useful when automating RDP setups across multiple Windows machines or creating scripts to streamline the configuration process.

1\. Type **cmd** in the Windows search box.

2\. Select **Run as administrator** to open the Command Prompt with administrative privileges.

![Run Windows CMD as administrator.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/run-cmd-admin-windows.png)

3\. The **`reg`** command is used to modify the Windows Registry. Enter the following command to enable RDP:

```
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
```

![Reg command to enable RDP in Windows CMD.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/enable-rdp-cmd-windows.png)

**Warning:** Exercise caution when making changes to the Windows Registry. Incorrect modifications can harm your system.

4\. (Optional) If the Windows Firewall is activated, use the following command to enable RDP connections:

```
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
```

**Note:** The user account used to establish the connection must have RDP permissions on the Windows machine, and the Windows firewall must allow RDP connections.

The Windows system is ready to accept RDP connections.

### Install Desktop/GUI Environment on Ubuntu (Optional)

Users running Ubuntu Server or a minimal installation of Ubuntu without a [graphical user interface (GUI)](https://phoenixnap.com/glossary/what-is-gui) can use command-line-based RDP clients, such as FreeRDP. However, some RDP clients like Remmina do not work without a GUI.

[Installing a GUI on Ubuntu](https://phoenixnap.com/kb/how-to-install-a-gui-on-ubuntu), such as Ubuntu GNOME, KDE Plasma, LXDE, or XFCE, can provide a more intuitive and user-friendly environment for establishing RDP connections.

To install the GNOME desktop environment:

1\. Update the Ubuntu packages list:

```
sudo apt update
```

2\. Enter the following command to install GNOME:

```
sudo apt install ubuntu-desktop -y
```

3\. Reboot the system:

```
sudo reboot
```

You are presented with a desktop environment once you log in to the Ubuntu system.

![Ubuntu 22.04 GNOME desktop.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/ubuntu-gnome-desktop.png)

Next, install and launch your preferred RDP client to connect to the Windows system.

### Install Remote Desktop Client Software on Ubuntu

Linux users utilize RDP clients such as Remmina, FreeRDP, or rdesktop to facilitate an RDP connection.

#### Option 1: Install Remmina client on Ubuntu

Remmina is the default RDP client on Ubuntu 20.04  and 22.04. To check if the Remmina client is installed, access the command line and enter the following command:

```
dpkg -l | grep remmina
```

The system displays a list of installed Remmina packages and plugins.

![Installed Remmina packages in Ubuntu 22.04.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/remmina-installed-ubuntu.png)

1\. If the Remmina client is not installed, update the Ubuntu packages list:

```
sudo apt update
```

2\. Install Remmina and the necessary plugins:

```
sudo apt install remmina remmina-plugin-rdp -y
```

3\. Launch the RDP client by entering the following command:

```
sudo remmina
```

4\. Click the top left **`+`** icon to add a new connection profile.

![Add new RDP connection profile in Remmina.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/add-connection-profile-remmina.png)

5\. Enter a connection profile **Name**.

6\. Select **RDP - Remote Desktop Protocol** from the _Protocol_ dropdown menu.

![Enter connection profile name in Remmina.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/set-up-remmina-rdp.png)

7\. Enter the IP address or hostname of the Windows machine in the _Server_ field.

8\. Define the username and password for the user account you plan to use to log into the Windows machine.

**Note:** This user should be granted RDP permissions on the Windows host.

![Enter RDP credentials in Remmina.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/remmina-rdp-user-credentials.png)

9\. Select **Use client resolution** or define a custom resolution in the _Resolution_ field.

10\. _Colour depth_ is set to **Automatic** by default. This preference allows the server to choose the best format based on network speed.

These are the mandatory options for initiating a standard RDP session. The Remmina client has numerous advanced settings to customize how the RDP connection is established.

11\. Click **Save and Connect** to save the profile and connect to the Windows machine using the profile details.

![Connect to Windows machine from Ubuntu via Remmina RDP.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/connect-windows-linux-remmina.png)

**Note:** If you receive a certificate warning, opt to trust the (legitimate) certificate to continue with the connection.

The remote Windows desktop is available in the Remmina dashboard.

![Access to a Windows machine from Ubuntu via RDP.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/remmina-rdp-ubuntu.png)

The next time you want to RDP into the Windows system, launch Remmina and double-click on the saved profile.

#### Option 2:  Install FreeRDP client on Ubuntu

To install the FreeRDP client on Ubuntu:

1\. Update the Ubuntu packages list:

```
sudo apt update
```

2\. Install the FreeRDP client using the following command:

```
sudo apt install freerdp2-x11 -y
```

3\. Establish the RDP connection using the following syntax:

```
sudo xfreerdp /v:windows_machine_ip /u:username
```

Replace _windows\_machine\_ip_ and _username_ with valid connection details.

If the password **`/p:`** option is not included in the command, **xfreerdp** will prompt for the RDP user password. This practice is more secure than entering the password within the command.

The **xfreerdp** command-line tool is part of the FreeRDP project and offers multiple options for connecting to RDP servers:

| OPTION | DESCRIPTION |
| --- | --- |
| /p:\[password\] | Enter the user password. |
| /domain:\[yourdomain\] | Specify the domain to authenticate against. |
| /f | Enable fullscreen mode. |
| /size:\[1366x768\] | Specify a custom screen resolution. |
| /port:\[4309\] | Specify a port number other than the default 3389 value. |

Once connected via FreeRDP, the user gains access to the remote Windows system in a graphical interface, including the Start menu, taskbar, desktop icons, and any running applications or windows.

## Ubuntu RDP to Windows: Extra Tips + Best Practices

The sections below offer advice on how to achieve optimal results when connecting to Windows using RDP on Ubuntu.

### Minimum vs. Optimal Hardware Requirements

The RDP experience depends on [bandwidth](https://phoenixnap.com/glossary/what-is-bandwidth), [network latency](https://phoenixnap.com/blog/network-latency), and the capabilities of the Windows host machine. The table below outlines the minimal and optimal requirements for the Ubuntu and Windows systems:

|  | Ubuntu Client  
**Minimal** / **Optimal** | Windows Host  
**Minimal** / **Optimal** |
| --- | --- | --- |
| **[CPU](https://phoenixnap.com/glossary/cpu-definition)** | Single-core processor / Multi-core processor | 1.4 GHz+ / 2.4 GHz+ |
| **RAM** | 1GB / 2GB+ | 4 GB for 64-bit / 8 GB+ for 64-bit |
| **Graphics** | Integrated graphics or basic GPU / GPU | DirectX 9 or later / Dedicated GPU for graphics-intensive tasks.  
DirectX 12 or later |
| **Network** | 2 Mbps / 10 Mbps+ | 2 Mbps+ / 10 Mbps+ |
| **Disk** | Sufficient memory for RDP client software / [SSD](https://phoenixnap.com/glossary/what-is-ssd) | N/A |

Use the information in the table as a broad guideline. Actual requirements depend on the specific tasks performed during the RDP session.

### Implement Security Measures

To enhance the security of an RDP session from Linux to Windows, you can implement security measures on the Windows side, Linux side, and on the network. The lists below offer useful tips for each security segment.

**Secure Windows**

-   Limit the number of user accounts that can establish an RDP connection.
-   Create dedicated accounts for RDP to restrict access to critical systems or data.
-   Enforce strong password policies for RDP user accounts.
-   Implement [two-factor authentication](https://phoenixnap.com/glossary/two-factor-authentication) for RDP sessions.
-   Activate Network Level Authentication (NLA) to require authentication before establishing a session.
-   Temporarily lockout user accounts after multiple unsuccessful login attempts.

**Secure the network**

-   Use a firewall to restrict RDP access to specific IP addresses.
-   Change the default RDP port (3389) to a non-standard port number to mitigate [brute-force attacks](https://phoenixnap.com/blog/brute-force-attack).
-   Use a VPN to encrypt the data transfer between client and host machines.
-   Alternatively, use [SSH port forwarding](https://phoenixnap.com/kb/ssh-port-forwarding) to create an encrypted tunnel for the RDP session if a VPN is not an option.

**Secure Linux**

-   Regularly update the RDP Client to the latest version to benefit from security patches and improvements.
-   Disconnect from an RDP session when it is not being used and set timeouts for idle sessions.
-   Limit the number of simultaneous active sessions.

### Ideal Internet Speed for RDP Connections

RDP can be efficient even over slower connections. However, specific tasks require a minimal level of visual quality and responsiveness. The table offers an overview of minimal and recommended bandwidth for general RDP tasks:

| Task | Minimum Bandwidth | Recommended Bandwidth |
| --- | --- | --- |
| **Text-based tasks** | 512 Kbps - 1 Mbps | 1 - 2 Mbps |
| **MS Office and Web browsing** | 2 - 4 Mbps | 5 - 10 Mbps |
| **Design, images, and video** | 5 - 10 Mbps | 10 - 25 Mbps+ |
| **Concurrent RDP Sessions** | Allocate bandwidth for each concurrent session. | Allocate bandwidth for each concurrent session. |

Keep in mind that apart from bandwidth, server loads, network latency, and stability affect RDP performance.

Test the RDP performance under typical work conditions and adjust RDP and network settings to balance responsiveness and quality.

### Reduce Resolution & Color Depth for Performance Boost

Controlling the amount of detail that a RDP client transfers over the network can produce significant performance gains. Read the sections below to learn how to adjust resolution and color depth in your RDP session.

**Resolution**

Lowering the screen resolution or window size in RDP sessions means fewer pixels are transferred over the network. This strategy can improve responsiveness and speed when bandwidth is limited.

RDP clients enable users to set the screen resolution when initiating an RDP session. For instance, with FreeRDP, you can use the following command to set a **1280x720** resolution:

```
sudo xfreerdp /v:windows_machine_ip /u:username /size:1280x720
```

Reducing the resolution can enhance speed but may also compromise visual quality, making items appear pixelated.

**Color Depth**

Color depth defines how sharply a system can represent or distinguish unique colors.

Lowering the color depth reduces the amount of data transmitted for each pixel. The session will be more responsive, but colors may seem off, and gradients might lose their smoothness.

In the Remmina client, the _Color depth_ option lets users define the color depth for the RDP session.

![Setting Color depth in Remmina.](https://phoenixnap.com/kb/wp-content/uploads/2023/10/color-depth-remmina.png)

A low depth may work for simple tasks like text editing, but the **True color** setting, with 32 bits per pixel, provides the high-quality visuals required for video playback or graphic design.

Conclusion

You have successfully used an RDP client to connect to a remote Windows PC from your Ubuntu system. Use this connection to administer remote Windows systems, provide technical support to Windows users, and operate Windows-specific tools and applications.

Next, learn how to access an [Ubuntu PC via Remote Desktop from Windows](https://phoenixnap.com/kb/ubuntu-remote-desktop-from-windows).
