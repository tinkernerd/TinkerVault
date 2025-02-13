---
title: Prevent Win11 installation if it has already started downloading it
description: 
type: Resource
topic:
  - Windows
  - Update
category: Info Tech
created_at: 2025-02-06T12:55:55-05:00
modified_at: 2025-02-06T12:56:56-05:00
---
# How to Prevent Windows 11 from installing if it started downloading it
1.  Sign into the computer as Administrator.
2.  Open Registry Editor.
3.  Open this folder path: **HKEY_LOCAL_MACHINE > SOFTWARE > Policies > Microsoft > Windows >** Then click on the **WindowsUpdate** folder.
4.  Right click on the ProductVersion value, and select **Modify...**
5.  Change the value from Windows 11 to Windows 10.
6.  Restart the computer.






