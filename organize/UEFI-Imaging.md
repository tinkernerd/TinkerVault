---
title: Untitled
dateCreated: 2021-11-12T10:07:26
type: Resource
category: SMC
---
type: Resource
category: SMC

# UEFI Imaging

Created: 2021-11-12 10:07:26 -0500

Modified: 2024-09-25 11:49:34 -0400

---

**[UEFI Imaging 2021]{.underline}**

1.  Press F12 when booting to open Boot Menu on PC needing imaged
2.  Go to Bios Settings
3.  Enable 'AHCI' in Storage
4.  Disable 'Secure Boot' in General Configuration
5.  Enable 'Primarily AC Use' in Power
6.  Click Apply
7.  Find MAC Address and write down along with what you want to name PC
8.  Log into Filewave
9.  Click on Clients
10. Click New Client at the top left of Filewave
11. Under Desktop Device Placeholders click Enter Name
12. Type in Name and Mac address ex. 01:02:03:04:05:06 (LOM MAC Address)
13. Next click Imaging tab
14. Find the client in the left panel by searching
15. Find the image you want to use "Windows22H2_2024Updated"
16. Click and Drag the Image on to the Client
17. If listed, select the Drivers for the laptop and Drag the Drivers on to the Client
18. Right click the Client in the left panel and click "Show Associated Imaging Filesets"
19. Next, right click on the association in the bottom panel and click enable
20. Now update the model and now you should see true to the right of the client in the associations panel at the bottom of filewave
21. Wait 2 - 5 minutes to allow Filewave to Update the IVS
22. Reboot Pc to Onboard NIC (IPV4)
23. After PC finishes imaging

<!-- -->

24. **Login as admin**

<!-- -->

25. Activate and set password for administrator
26. Disable Admin account
27. Restart PC
28. Login as Administrator
29. Bind to domain
30. Disable domain firewall
31. Wait for filesets to install
32. Turn off Fast Boot in Power & Sleep settings
33. Run Dell Command Updates
34. Install N-Central agent (only on laptops)
35. Make sure the computer is in the right OU in AD (Ask Gatlin or Matt to move it)
36. Apply Bitlocker Fileset
37. Confirm Bitlocker key is in AD (Ask Gatlin or Matt to confirm)
38. Apply Office 365 Fileset
39. Done



![](../../Attachments/General-Technician-UEFI-Imaging-image1.png){width="4.395833333333333in" height="2.59375in"}





