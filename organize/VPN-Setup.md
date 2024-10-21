---
title: Untitled
dateCreated: 2023-04-10T12:34:35
type: Resource
category: SMC
---
type: Resource
category: SMC

# VPN Setup

Created: 2023-04-10 12:34:35 -0400

Modified: 2024-06-27 10:03:23 -0400

---

Person needing set up for VPN must be in correct OU in AD, and there are
limited licenses for OpenVPN. Contact Matt to make sure whoever is
needing it setup is in the correct spot in AD and that there is an open license.



1.  Have user log into the computer they are needing VPN set up on.
2.  Go to smcvpn.swmich.edu
3.  Have user log in to OpenVPN with their AD credentials.
4.  If not already set up, set up MFA using the QR code provided
5.  Click on the Windows logo to download OpenVPN Connect under the
    "OpenVPN Connect Recommended for your device" heading

6.  Under the "Available Connection Profiles" heading, there should be a link
    that says "Yourself (user-locked profile.)" Click on this to download the
    connection profile for the user (this will be a .ovpn file extension.)

7.  Install OpenVPN Connect
8.  There will be two tabs up at the top of OpenVPN, click on the one that says
    file, and drag the .ovpn file from step 6 into that.

9.  User will need to input AD password one more time, then they should be able
    to connect.


