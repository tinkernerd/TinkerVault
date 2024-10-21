---
title: Untitled
dateCreated: 2024-02-07T10:46:20
type: Resource
category: SMC
---
type: Resource
category: SMC

# Name Change

Created: 2024-02-07 10:46:20 -0500

Modified: 2024-02-07 14:39:30 -0500

---

1) Search, highlight, and right-click the respective computer/laptop name within the FileWave application

-   Select 'Rename' and rename accordingly



2) Right-click the newly named computer/laptop and select 'Show Associated Imaging Filesets'

-   Once redirected to the Imaging tab- ensure that the image shown is associated with the correct computer/laptop
-   Right-click the image and select 'Enable Association'
-   Select "Update Model" located at the top left of the FileWave application



3) On the left panel of the FileWave application, select the 'Associations' tab

-   Once redirected to the Imaging tab- search, highlight, and right-click on the respective computer/laptop
-   Select 'Show Associated Filesets'
-   Ensure the correct O365 license fileset is applied (user-based or share-based)
-   For laptops, ensure the 'Bitlocker' fileset is applied
-   Select "Update Model" if any changes were made in this step



3) Consistently check for conflicts

-   Located on the top left of the FileWave application, select the 'New Client' icon and the 'Desktop Client' icon to see a list of conflicts.
-   If your computer name is in this list, highlight the device and select 'Resolve Conflict'. When prompted to a new dialog box, select 'Replace the old client(s) with the new client(s)'
-   Select "Update Model" if any changes were made in this step



4) Repeat the imaging process as normal, starting at step #20 in the UEFI Imaging instructions (IT Team Notebook > How-To-Instructions > Imaging / Provision > UEFI Imaging)

-   Wait 2 - 5 minutes to allow Filewave to Update the IVS
-   Reboot PC to Onboard NIC (IPV4) within BIOS
-   After PC finishes imaging, login as 'admin'
-   Activate and set password for administrator
-   Bind to domain
-   Disable domain firewall
-   Restart PC
-   Login as Administrator
-   Disable Admin account
-   Wait for filesets to install
-   Run Dell Command Updates
-   Install N-Central agent
-   Make sure the computer is in the right OU in AD (Ask Gatlin/Matt to move it)
-   Confirm Bitlocker key is in AD (Ask Gatlin/Matt to confirm)



5) Scan the asset tag barcode with the Asset Tiger application and ensure that the correct information has been updated




