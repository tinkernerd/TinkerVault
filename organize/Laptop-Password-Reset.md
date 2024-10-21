---
title: Untitled
dateCreated: 2023-01-13T15:23:31
type: Resource
category: SMC
---
type: Resource
category: SMC

# Laptop Password Reset

Created: 2023-01-13 15:23:31 -0500

Modified: 2024-01-23 10:22:27 -0500

---

<<[Loaner-Timed-Password-Reset.xml](../../Attachments/Loaner-Timed-Password-Reset.xml)>>

<<[Loaner-Password-Timeout.bat](../../Attachments/Loaner-Password-Timeout.bat)>>



The .xml file is the Task scheduler task that needs to be imported on the loaner laptops. The .bat file should be placed in the Documents folder for the task to work. When importing the task, make sure that the date is changed to when you want the task to start. This task will start the batch file, which will change the password for the smcloaner user to the admin password, which will lock the student out of the laptop at the end of the semester.



Laptop Loaner End Date for Spring, 2024: 5/17/2024
