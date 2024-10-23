---
title: VPN Setup
dateCreated: 2023-04-10T12:34:35
type: Resource
topic:
  - VPN
  - Openvpn
---
# VPN Setup
1. Have user log into the computer they are needing VPN set up on.
2. Go to smcvpn.swmich.edu
3. Have user log in to OpenVPN with their AD credentials.
4. If not already set up, set up MFA using the QR code provided
5. Click on the Windows logo to download OpenVPN Connect under the "OpenVPN Connect Recommended for your device" heading
7.  Under the "Available Connection Profiles" heading, there should be a link that says "Yourself (user-locked profile.)" Click on this to download the connection profile for the user (this will be a .ovpn file extension.)
8. Install OpenVPN Connect
9. There will be two tabs up at the top of OpenVPN, click on the one that says file, and drag the .ovpn file from step 6 into that.
10. User will need to input AD password one more time, then they should be able to connect.


