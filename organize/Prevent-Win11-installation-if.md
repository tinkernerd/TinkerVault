---
title: Untitled
dateCreated: 2023-06-29T14:53:20
type: Resource
category: SMC
---
type: Resource
category: SMC

# Prevent Win11 installation if it has already started downloading it

Created: 2023-06-29 14:53:20 -0400

Modified: 2024-06-27 09:47:40 -0400

---

How to Prevent Windows 11 from installing if it started downloading it



1.  Sign into the computer as Administrator.
2.  Open Registry Editor.
3.  Open this folder path: **HKEY_LOCAL_MACHINE > SOFTWARE > Policies > Microsoft > Windows >** Then click on the **WindowsUpdate** folder.
4.  Right click on the ProductVersion value, and select **Modify...**
5.  Change the value from Windows 11 to Windows 10.
6.  Restart the computer.














