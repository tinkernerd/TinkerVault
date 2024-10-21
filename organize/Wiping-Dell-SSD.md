---
title: Untitled
dateCreated: 2022-02-09T15:19:12
type: Resource
category: SMC
---
type: Resource
category: SMC

# Wiping Dell SSD

Created: 2022-02-09 15:19:12 -0500

Modified: 2024-06-27 10:03:16 -0400

---

<<[How-To-Securely-Wipe-an-SSD-In-A-Dell-Computer.pdf](../../../Attachments/How-To-Securely-Wipe-an-SSD-In-A-Dell-Computer.pdf)>>

<<Dell Data Wipe _ Dell US.webloc>>



![How TO Securely Wipe An SSD In A Dell Computer Article Content Symptoms Dell Data Wipe is a feature in Dell Enterprise Client BIOS that gives Our customers the ability to invoke a data wipe Of the internal storage devices in their System, This allows efficient erasure for re-purpose Or redeployment using industry standard data Wipe capabilities already supported by Dell storage devices. Since customer data is a priority for Dell we designed this feature for maximum compatibility and minimal potential for unintentional data erase. Supports internal storage devices only: SATA HOD, SSD, and eMMC depending on the device types supported by the System, Uses industry standard approved methods for data Wipe such as Secure Erase for SATA and Sanitize for eMMC_ See NIST Special Publication 800-88 Guidelines for Media Sanitization for more details. Only accessible by a physically present user. User must be physically present until drive Wipe begins. (Customers can use Dell VPro Extensions for remote erase, see for more info on remote erase.) All internal drives in the system are Wiped, no option to Wipe only certain storage devices. The Data Wipe feature is invoked from Within BIOS Setup. At the Dell splash screen press F2 to enter BIOS Setup. ](../../../Attachments/General-Technician-Wiping-Dell-SSD-image1.png){width="6.375in" height="8.25in"}![How TO Securely Wipe An SSD In A Dell Computer Figure 1 : Data Lattitude E7470 Once in the BIOS Setup application the user can select •Wipe on Next Boot" from the Maintenance->Data Wipe option to invoke data Wipe for all internal drives after the reboot. The BIOS Will ask for user confirmation twice before allowing the user to exit setup With the •Wipe on Next BOOt• option selected to ensure that the user intends to erase all storage devices. ](../../../Attachments/General-Technician-Wiping-Dell-SSD-image2.png){width="6.375in" height="8.25in"}![How TO Securely Wipe An SSD In A Dell Computer to Data ALL y data storage Co to this Figure 2: Data Wipe operation As an added safety measure the BIOS Will adjust the default selection for the final prompt to further enforce direct user acceptance Of this operation. WARNING: this alt data ALL not be to this Figure 3: Internal storage devices Once the option is successfully selected and the prompts have been confirmed, the user will exit BIOS Setup to force a reboot Of the System and begin the data Wipe process. After the reboot the BIOS Will once again prompt for several confirmations before sending the data Wipe instructions to the customer storage devices. ](../../../Attachments/General-Technician-Wiping-Dell-SSD-image3.png){width="6.375in" height="8.25in"}![How TO Securely Wipe An SSD In A Dell Computer dev e 1 n Is operation data On these dev Ices be 00 to continue ion? 1 on opt Figure 4: Oell Security Manager The user can select to cancel the drive wipe procedure at either of these prompts and the data wipe trigger will be reset. The process must be re•lnitiated from BIOS Setup to restart the erase procedure, if desired. Manager S t.wage dev ices be e Vou able to this data' sure. WOu to ERASE deuces? E5z10 Figure 5: Lattltude E5270 Once the user acknowledges all prompts the BIOS Will begin to erase the internal drives. A progress bar is included since some drive technologies may take several minutes to hours to erase the drive. ](../../../Attachments/General-Technician-Wiping-Dell-SSD-image4.png){width="6.375in" height="8.25in"}![How TO Securely Wipe An SSD In A Dell Computer to erase devices esno Figure 6: Internal SATA devices oen A successful erase procedure will be reported by a green dialog and the 'Data Wipe Completed Successfully" message. If there are any failures they will be presented instead of the success dialog. to reboot tr• svstem. use to enter Figure 7: Reboot the System ](../../../Attachments/General-Technician-Wiping-Dell-SSD-image5.png){width="6.375in" height="8.25in"}





