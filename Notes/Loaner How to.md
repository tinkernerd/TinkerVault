1. Login to the Loaner under `.\Administrator`
2. Search and click on 'Dell Command: Update' in the Windows search bar (show how to)
	1. If Installed - Run without restarting
3. If the Dell Command window pulls up and immediately goes away, follow these steps:
	1. Search and click on 'Add or Remove Programs' in the Windows search bar
	2. Uninstall any instances of "Dell Command"
	3. Use the link in the OneNote to re-download Dell Command. Enter the make and model of the loaner laptop and download the compatible version of Dell Command that's provided
7. Run the Loaner Update Script - It will restart the Laptop
	1. Download Loaner.ps1 from the onenote to a flash drive. (Show that and adding to flash drive)
	2. Log in to the loaner computer with an Administrator account.
		1. Talk about plugin it into the loaner and show the drive
	3. Open Search Bar in Windows
	4. Search for Powershell and click to run
	5. Change directory to the flash drive:
		1. In PowerShell, use the command `cd DriveLetter` (e.g., `cd D:`).
		2. Navigate to the Drive (Explain)
	6. Run The script, .\loaner.ps1
	7. If you receive this error : “.ps1 is not digitally signed. The script will not execute on the system.”
		1. Run : Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass  
		    Type Y/A
		3. Re-run - It will reboot
10. After reboot, Log back in under `.\Administrator`
11. If you Re-installed Dell Command Update
	1. Run Dell command update and Restart the Computer
12. Login to the Loaner under `.\Administrator`
---
13. View Logs on another computer after resetting the computer
	1. View the log under the flash drive `D:/Loaner/Log/`
	2. This shows what programs are installed from the loanee
	3. This will also show if Filewave, Windows agent and Java are installed.
	4. If Filewave or Windows agent are not installed, notify a technician (China Bendiner)
	5. Uninstall any programs installed by loanee
	6. Uninstall 'Java' or 'GNU Octave' if present
15. Login with these credentials to verify that username and password reflect the paper slip