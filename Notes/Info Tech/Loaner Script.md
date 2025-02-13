---
title: Loaner Update Script
type: Resource
topic:
  - PowerShell
Repo: TinkerNerd/Loaner-Updater
description: The Loaner.ps1 PowerShell script is used to delete and recreate a user profile with an expiration date on loaner computers.
category: Info Tech
created_at: 2025-02-06T15:32:27-05:00
modified_at: 2025-02-06T15:34:54-05:00
---

> [!Github] [TinkerNerd/Loaner-Updater](https://github.com/tinkernerd/loaner-updater)
> The Loaner.ps1 PowerShell script is used to delete and recreate a user profile with an expiration date on loaner computers.


**If the Loaner was not used for the semester period, the Loaner can be extended to the next semester instead of being completely re-provisioned.**

**Extending the borrowing period:**

1. Download the Extender.ps1 file from OneNote or GitHub.

2. Run PowerShell as an Administrator.

3. Run the script: `.Extender.ps1`

4. To change the expiration date, modify the `ExtendDate` variable in the script.



**Password:**

Password for the script: DoitLoan1@



**Re-enabling the account:**

To re-enable the account, use the following command: `net user smcloaner /expires:never`



> [!todo]+ Instructions:
1.  Download Loaner.ps1 to a flash drive.
2.  Log in to the loaner computer with an Administrator account.
    a.  .administrator
    b.  Admin Password
3.  Insert the flash drive into the loaner computer.
    a.  Open Search Bar in Windows
    b.  Search for Powershell and click to run
4.  Change directory to the flash drive:
    a.  In PowerShell, use the command `cd DriveLetter` (e.g., `cd D:`).
    b.  To navigate to the Administrator's Download Folder - 'cd C:/users/administrator/downloads'
5.  .loaner_fall.ps1 [it is .filename.ps1]
    a.  If you receive this error : ".ps1 is not digitally signed. The script will not execute on the system."
    b.  Run : Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    c.  Re-run
6.  After reboot, check the log for any unwanted programs or wanted programs not installed.
7.  Walk through the Loaner Refresh Upon Return Guide

> [!todo]+ Program Duties:
8. Checks if Java, Filewave, and Windows agent are installed.
9. Compares the "LoanerPrograms" list with installed programs.
10. Deletes the old user and recreates a new user with an expiration date.
11. Bypasses the OOBE (Out of Box Experience).
12. Logs errors and other information to the flash drive.
13. Reboots the computer after the script fini shes.

> [!note]+ Notes:
> - Ensure to replace `DriveLetter` with the actual drive letter where the script is saved.
> - **Running PowerShell as an Administrator*** Right-click on the PowerShell icon and select "Run as Administrator."

