---
title: Untitled
dateCreated: 2021-09-23T10:10:41
type: Resource
category: SMC
---
type: Resource
category: SMC

# Harden Loaner Laptop (Change Password After Allotted Time)

Created: 2021-09-23 10:10:41 -0400

Modified: 2024-09-03 12:59:40 -0400

---

<<[Notebook.pdf](../../Attachments/Notebook.pdf)>>



Create a Hardened Loaner Laptop

1.Sign into Local Admin

-   Create local account for user (e.g. DOITLOAN01)



2. Open Notepad



3. Type into notepad the following code:

@echo off

net user "*DOITLOAN#*" "*Admin Pass*"

exit

**Exchange the "DOITLOAN#" with the account name you'll want to allow the student to use (i.e. DOITLOAN05) and "Admin Pass" with the current overall admin password.*



4. Save this to **Documents** with the file extension "**.bat**" to make this a batch file. (e.g. "Change Loan Password.bat")



5. Open **Task Scheduler.**



6. Click **Create Basic Task** in the **Actions** pane.



7. Set name to "Loaner Timed Password Reset".



8. Click **Next**.



9. Select **One Time** for when you want the task to start.



10. Set date and time you want the loaner password to be reset to lock out the student.



11. Click **Next**.



12. Make sure **Start a Program** is selected for what action you want to perform.



13. Click **Next**.



14. **Browse** for the batch file created in **Documents.**



15. Click **Next**.



16. Select **"Open the Properties Dialog for this task when I click finish."**



17. Click **Finish**.



18. Click **Change User or Group.**



19. Check the **administrators** name.



20. Click **OK.**



21. Check the **Run with Highest Privileges** box.



22. Check the **Hidden** box.



23. Configure for **Windows 10.**



24. Click the **Conditions** Tab.



25. Deselect **"Start the task only if the computer is on AC power."**



26. Select the **Settings** tab.



27. Select **"Run task as soon as possible..."**



28. Select **"If this task fails restart every:"** and set to 5 min. 3 times.



29. Deselect **"Stop the task..."**



30. Click **OK.**



Fin

![2. 3. 5. C ode echo usec OAM# acc.-Oon•ł van 4- 40 Ge. Cor-r-er4 o 15 Ele. " L mn Passwoc . ](../../Attachments/Help-Desk-Harden-Loaner-Laptop-(Change-Password-After-Allotted-Time)-image1.png){width="6.177083333333333in" height="8.239583333333334in"}![ー 0 つ い レ ノ り 0 r,'lD 丿 り ](../../Attachments/Help-Desk-Harden-Loaner-Laptop-(Change-Password-After-Allotted-Time)-image2.png){width="6.177083333333333in" height="8.25in"}![レ 0 ( フ -C " 0 , , 1 引 っ ・ 9 乙 」 っ JO 0 わ ー 引 フ ・ 引 わ 〕 ー プ 0 7 ア 。 H つ つ ](../../Attachments/Help-Desk-Harden-Loaner-Laptop-(Change-Password-After-Allotted-Time)-image3.png){width="6.177083333333333in" height="8.25in"}

***To Reuse this task just set the time on the task scheduled to the next term's end.***



![b1 - V 0 。 闩 。 D ](../../Attachments/Help-Desk-Harden-Loaner-Laptop-(Change-Password-After-Allotted-Time)-image4.png){width="6.177083333333333in" height="8.25in"}



Adding to instructions harden BIOS with password and User can change password.




