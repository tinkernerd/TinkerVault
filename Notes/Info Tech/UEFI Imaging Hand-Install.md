---
title: UEFI Imaging Hand-Install
description: UEFI Imaging Hand-Install
type: Resource
topic:
  - Windows
  - Setup
category: Info Tech
created_at: 2025-02-06T13:35:51-05:00
modified_at: 2025-02-06T13:36:46-05:00
---
UEFI Imaging 2021
1.  Repeatedly press F12 upon startup to enter into the BIOS
2.  Select 'Bios Setup'
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
21. Ensure that PC is disconnected from ethernet
22. Insert Windows 10 Enterprise ISO USB drive (ask any technician)
23. Change boot order so that the PC boots to USB drive
24. Continue through the Windows OS install setup and delete any necessary partitions
25. It is safe to take out USB drive once you see the Windows 10 user setup language screen
26. Upon Windows 10 user setup, select "Continue with limited setup" instead of entering in a Microsoft account
27. Use "admin" as the username and the Super Secret admin password (ask any technician)
28. For security questions, use "SMC" as the answer
29. **Login as admin**
30. Activate and set password for administrator
31. Disable Admin account
32. Restart PC
33. Login as Administrator
34. Bind to domain
35. Disable domain firewall
36. Wait for filesets to install
37. Run Dell Command Updates
38. Install N-Central agent
39. Make sure the computer is in the right OU in AD (Ask Gatlin or Matt to move it)
40. Apply Bitlocker Fileset
41. Confirm Bitlocker key is in AD (Ask Gatlin or Matt to confirm)
42. Apply Office 365 Fileset



