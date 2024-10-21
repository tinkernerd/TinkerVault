---
title: Untitled
dateCreated: 2022-02-09T14:38:27
type: Resource
category: SMC
---
type: Resource
category: SMC

# Wiping SSD Lenovo ThinkCentre

Created: 2022-02-09 14:38:27 -0500

Modified: 2024-06-27 10:03:20 -0400

---

<<[How-To-Wipe-An-SSD-In-A-Lenovo-ThinkCentre.pdf](../../../Attachments/How-To-Wipe-An-SSD-In-A-Lenovo-ThinkCentre.pdf)>>

<https://download.lenovo.com/pccbbs/thinkcentre_pdf/thinkstation_ssd_secure_erase_v1.0.pdf>



![ThinkStation SSD Secure Erase Version 1.0 ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image1.png){width="6.375in" height="8.25in"}![1. Introduction There is no doubt that State drive (SSD) technology has exploded in popularity in the computing world. SSDSOffer a lot of significant over traditional spinning hard drives such as increased bandwidth, smaller physical footprint, and lower power consumption, Couple that with irUeasing capacity points, and the ability to in traditional RAID arrays, and it's dear that SSD technology is becoming a dominant force in the PC market. With an of tyr benefits of one area that requires attention is that of data security. Because of the way SSDs actually store data on the drive, data is constantly mcwed and written to different blocks to achieve certain levels Of robustness and wear leveling. This creates the need for a users to securely erase data from their SSD, and do so Without causing unnecessary wasted writes to blocks that didn't actual* contain data (Which would theoretically shorten the life of the drive). Fortunately, ThinkStation BIOS comes With a built in secure erase feature to serve just this This document Will instruct users on how to take of this BIOS feature to securely erase all data on a SSD. ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image2.png){width="6.375in" height="8.25in"}![2. How to Securely Erase SSDs Using ThinkStation BIOS The instructions will cover the steps required to use ThinkStation BIOS to securely erase a SSD. I. In order for the integrated secure erase feature to function correctly, any SSO to be erased MUST be attached one ofthe system's onboard Intel SAM ports. The set to "ACH/" mode cannot be Set to "RAID" mode'. MS SSDS be secure erased using this method. It is recommended to remove any drives to be securely erased from the system this method. With the target drive connected to the system correctly, power on the system and press "FI to enter BIOS use the to highlight the "Securitv• tab ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image3.png){width="6.375in" height="8.25in"}![3. 4. S. use the dcn"n arrow to select the "Hard Disk Password" option, then press Enter. In order for BIOS to be able to securely erase the SSD, a password must be to the drive if one already exist. If a password is already assigned to the drive, skip to STEP #9. Otherwise, highlight "SATA Drive X Password" (Where X is the drive number to be erased) and press Enter. A "Setup Confirmation" box will appear. Select "User" and press Enter. Note: Selecting the user Master password option is also acceptable. At minirnum, a user password is required for the Secure erase feature to work. ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image4.png){width="6.375in" height="8.25in"}![6. 8. A "Set up user Password" box will appear. Choose a password and enter it on the first line, then press Enter. Re-enter the same password on the second line, press Enter again. The user password should now be set, and a "Setup Notice" box will ap*ar informing the user that the changes have been saved Press Enter to Continue. At this the system needs to be rebooted for the changes to take effect. Press FIO to save and exit setup. The System reboot. During the reboot, press FI to enter BIOS Setup again. use the arrow keys to selectthe "Security* tab. Then use the arrow keys to "Hard Disk password" and press Enter. ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image5.png){width="6.375in" height="8.25in"}![OOH u sud u neo x anuo vlvs asn OOH pars asn ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image6.png){width="6.375in" height="8.25in"}![11. A "Setup Warning' box Will appear warning the user that all HOD data Will be erased and the hard disk password will Ensure "Yes" is highlighted, then Enter to co 12, A box appear prompting for the user Enter the existing user password (or the one created earlier in this procedure) and press Enter • • •WARNING --- proceeding with this Step will erase all HDD data and cannot be undone." ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image7.png){width="6.375in" height="8.25in"}![13. After entering the user password, a box will open that will show the progress of the secure erase process. not unplug the system during this 14, Once secure erase process compQs, a new confirmation box will appear stating "System will reset to make changes take effect" Press Enter. and the system will rebCN)t ](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image8.png){width="6.375in" height="8.25in"}![](../../../Attachments/General-Technician-Wiping-SSD-Lenovo-ThinkCentre-image9.png){width="6.375in" height="8.25in"}









