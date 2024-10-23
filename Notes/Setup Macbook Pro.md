---
title: APPLE - How to Setup A MacBook Pro
dateCreated: 2021-11-17T13:59:40
type: Resource
topic: Apple
---
New Computer Name:		  
          *Old Computer Name:*		  
Inventory number(s):		  
Computer Serial \#:		  
FileVault Recovery Key: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

Installation Files Needed (T-Drive):  
	FileWave 14.10.2 Client \[Step 14\]	iMac PaperCut Printer Drivers \[Step 28\]  
	Alertus \[Step 26\]	PCClient for Mac \[Step 28\]  
		

1. Make sure computer and all relevant devices are in inventory.  
2. Charge wireless mouse (if relevant).  
3. Ensure that the macOS you want to use is installed; otherwise, install the correct macOS (**Option-Command-R** installs the latest version that computer will take).  
4. Reboot the computer.  
5. Use Faculty & Staff WiFi (user: smcpodium) if you do not have a hard-wired connection.  
6. Apple ID – Setup Later.  
7. Computer Account – Administrator. Eagle icon.  
8. Customize Settings  
   1. Enable Location Services.  
   2. Share Analytics, crash and usage data.  
   3. Setup Screen Time later.  
   4. Disable Siri.  
   5. Setup Touch ID later.  
   6. Choose Your Look – Automatic.  
   7. Keep True Tone Display.  
9. Connect Bluetooth mouse if possible.  
10. Run software update.  
11. Rename computer.   
12. Bind to network (swmich.local).  
13. Enable remote control for Administrator.  
14. Install FileWave Client.  
    1. If asked for permission, click, “Open System Preferences”, and “Allow”.  
15. Add computer to FileWave (use **Computer Serial Number**, not **MAC Address**).  
16. **MOVE** computer in FileWave to **/1 Computer Groups/Apple Computers/**.  
17. Update FileWave Model.  
18. Delete FileWave installation Files.  
19. Edit Hosts File to include new server. (172.16.45.77     d01filewave.swmich.edu)  
20. When computer shows up in FileWave, run Verify.  
21. Install Adobe Creative Cloud. Download from the Internet.  
22. Install Adobe Acrobat using Creative Cloud. (This is the PRO version, although it is not labeled as such).  
23. Install MS Office 365 from online.  
    1. Run Microsoft Updates.  
       1. Turn off AutoAudates.  
       2. Install the programs on the computer.  
24. Install Sophos AntiVirus Software.  
    1. Download installation file from the Sophos AntiMalware Central website.  
    2. Move Installation file to the Administrator root. Run from there.  
    3. Allow any security it requests. (Be patient – it may take awhile for all prompts to appear).  
    4. Be sure to run the Sophos Updates.  
25. Install OpenVPN. (https://smcvpn.swmich.edu).  
26. Install Alertus.  
    1. Download the folder **Alertus Mac Client 06-30-2021** from **T:\\IT\\SOFTWARE-ISO\\Alertus\\Alertus \- Mac**.  
    2. Install Alertus from the .pkg file. Keep the Config File \-KEEP folder and Alertus together until after the installation.  
27. Ensure that the ZOOM Client is installed.  
    1. Run Updates.  
28. Install PaperCut Client (PCClient.app).  
    1. Make sure you are hard wired or on Faculty & Staff wireless.  
    2. First install printer drivers from T-Drive.  
       1. **T:\\IT\\SOFTWARE-ISO\\Papercut\\PaperCut Install\\Mac Computers\\iMac PaperCut Printer Drivers and Information – February 2023\\**Ricoh\_IM\_C3000\_C3500\_LIO\_1.8.0.0.dmg”.  
    3. Setup an IP printer called, “smc\_campus\_printing”.  
       1. Go to System Preferences \-\> Printers & Scanners.  
       2. Click the “+” to add a new printer.  
       3. Change the **Protocol:** line to show **Line Printer Daemon – LPD**.  
       4. In the **Address** line enter “**d01pct.swmich.local**”.  
       5. In the **Queue:** line enter “ **smc\_campus\_printing**”.  
       6. In the **Name:** line enter “**smc\_campus\_printing**”.  
       7. Click on the **Use:** line and choose **Select Software…**.  
       8. In the **Filter** line type “c6000”. Do not hit **Enter**.  
       9. Click on the the first entry showing **RICOH MP C6000 PS**.  
       10. Click the **OK** button.  
       11. Click the **ADD** button.  
       12. The printer should now show up in the list on the left with a green dot.  
    4. Setup PCClient to work for all users on this computer.  
       1. Copy PCClient.app from **T:\\dept\\IT\\SOFTWARE-ISO\\Papercut\\PaperCut Install\\AA \- PaperCut Clients\\Mac Client – CURRENT** to the Applications folder.  
       2. Control-Click on PCCLient.app on the Mac and choose “Show Package Contents”.  
       3. Navigate to Contents 🡪 Resources.  
       4. Run the file labeled, “install-login-hook.command”.  
          1. Enter, “YES”.  
          2. Enter the Administrator password.  
          3. Close the window when finished.  
29. Copy Information from old computer to new (if applicable).  
30. Add the computer to the FileWave MDM.  
31. Ready to Deploy\!