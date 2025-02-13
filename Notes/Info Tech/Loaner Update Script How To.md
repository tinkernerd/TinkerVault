---
title: Loaner Update Script How To
description: The Loaner.ps1 PowerShell script is used to delete and recreate a user profile with an expiration date on loaner computers.
type: Resource
topic:
  - PowerShell
category: Info Tech
created_at: 2025-02-06T15:22:32-05:00
modified_at: 2025-02-06T15:24:24-05:00
Repo: TinkerNerd/Loaner-Updater
---
# Lower Update Script

> [!Github] [TinkerNerd/Loaner-Updater](https://github.com/tinkernerd/loaner-updater)
> The Loaner.ps1 PowerShell script is used to delete and recreate a user profile with an expiration date on loaner computers.
    

## How to Operate
1. Login to the Loaner under `.\Administrator`
2. Search and click on 'Dell Command: Update' in the Windows search bar (show how to)
	1. If Installed - Run without restarting
3. If the Dell Command window pulls up and immediately goes away, follow these steps:
	1. Search and click on 'Add or Remove Programs' in the Windows search bar
	2. Uninstall any instances of "Dell Command"
	3. Use the link in the OneNote to re-download Dell Command. Enter the make and model of the loaner laptop and download the compatible version of Dell Command that's provided
4. Run the Loaner Update Script - It will restart the Laptop
	4. Download Loaner.ps1 from the onenote to a flash drive. (Show that and adding to flash drive)
	5. Log in to the loaner computer with an Administrator account.
		1. Talk about plugin it into the loaner and show the drive
	6. Open Search Bar in Windows
	7. Search for Powershell and click to run
	8. Change directory to the flash drive:
		2. In PowerShell, use the command `cd DriveLetter` (e.g., `cd D:`).
		3. Navigate to the Drive (Explain)
	9. Run The script, .\loaner.ps1
	10. If you receive this error : “.ps1 is not digitally signed. The script will not execute on the system.”
		4. Run : Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass  
		    Type Y/A
		5. Re-run - It will reboot
5. After reboot, Log back in under `.\Administrator`
6. If you Re-installed Dell Command Update
	11. Run Dell command update and Restart the Computer
7. Login to the Loaner under `.\Administrator`
---
8. View Logs on another computer after resetting the computer
	1. View the log under the flash drive `D:/Loaner/Log/`
	2. This shows what programs are installed from the loanee
	3. This will also show if Filewave, Windows agent and Java are installed.
	4. If Filewave or Windows agent are not installed, notify a technician (China Bendiner)
	5. Uninstall any programs installed by loanee
	6. Uninstall 'Java' or 'GNU Octave' if present
9. Login with these credentials to verify that username and password reflect the paper slip