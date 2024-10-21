---
title: APPLE - How To Setup an iMac
dateCreated: 2021-11-17T14:01:00
type: Resource
category: Apple
topic: IMAC
---
New Computer Name:		  
Inventory number(s):		  
Computer Serial \#:		

Installation Files Needed (T-Drive):  
	FileWave14.1.2 Client	Alertus  
	Adobe 2021	Zoom  
	MS Office 365	iMac PaperCut Printer Drivers  
	Mac Serializer	PCClient for Mac  
	OpenVPN

1. Make sure computer and all relevant devices are in inventory.  
2. Charge wireless mouse.  
3. Plug computer into a computer port.  
4. Ensure that the macOS you want to use is installed; otherwise, install the correct macOS (**Option-Command-R** installs the latest version that computer will take).  
5. Apple ID – Setup Later.  
6. Computer Account – Administrator. Eagle icon.  
7. Customize Settings  
   1. Enable Location Services.  
   2. Share Analytics, crash and usage data.  
   3. Setup Screen Time later.  
   4. Disable Siri.  
   5. Setup Touch ID later.  
   6. Choose Your Look – Light.  
   7. Keep True Tone Display.  
8. Connect Bluetooth mouse if possible.  
9. Run software update.  
10. Rename computer.  
11. Bind to network.  
12. Enable remote control for Administrator.  
13. Install FileWave Client.  
    1. If it asks for permission, click, “Open System Preferences”, and “Allow”.  
14. Add computer to FileWave (use **Computer Serial Number**, not **MAC Address**).  
15. **MOVE** computer in FileWave to **/1 Computer Groups/Apple Computers/**.  
16. Update FileWave Model.  
17. Delete FileWave installation Files.  
18. Edit Hosts File to include new server.  
19. When computer shows up in FileWave, run Verify.  
20. Install Adobe Creative Cloud.  
21. Install Adobe Acrobat DC using Creative Cloud.  
22. Install MS Office 365.  
    1. Customize. Do not install:  
       1. Outlook  
    2. Run Microsoft Updates.  
       1. Turn off AutoUpdates.  
    3. Run Mac Serializer  
       1. **SWDVD5\_Office\_Mac\_Serializer\_2019\_MLF\_X21\_88135 (16).iso**  
23. \#\# Install ESET AntiVirus Software *(not available yet)*.  
24. Install OpenVPN (https://OpenVPNsmc.swmich.edu).  
25. Install Alertus.  
26. Install the ZOOM Client.  
    1. Run Updates.  
27. Install PaperCut Client.  
    1. Make sure you are hard wired or on Faculty & Staff wireless.  
    2. First install printer drivers from T-Drive.  
       1. **T:\\IT\\SOFTWARE-ISO\\Papercut\\PaperCut Install\\Mac Computers\\iMac PaperCut Printer Drivers and Information – December 2019\\**Ricoh\_PS\_Printers\_Vol3\_EXP\_LIO\_3.8.0.0.dmg”.  
    3. Setup an IP printer called, “smc\_campus\_printing”.  
       1. Go to System Preferences \-\> Printers & Scanners.  
       2. Click the “+” to add a new printer.  
       3. Change the **Protocol:** line to show **Line Printer Daemon – LPD**.  
       4. In the **Address** line enter “**d01pct.swmich.local**”.  
       5. In the **Queue:** line enter “ **smc\_campus\_printing**”.  
       6. In the **Name:** line enter “**smc\_campus\_printing**”.  
       7. Click on the **Use:** line and choose **Select Software…**.  
       8. In the **Filter** line type “c5503”. Do not hit **Enter**.  
       9. Click on the the first entry showing **RICOH MP C5503 PS**.  
       10. Click the **OK** button.  
       11. Click the **ADD** button.  
       12. The printer should now show up in the list on the left with a green dot.  
    4. Copy PCClient.app from **T:\\dept\\IT\\SOFTWARE-ISO\\Papercut\\PaperCut Install\\Clients 07-07-2021\\client\\mac** to the Applications folder.  
       1. Control-Click on PCCLient.app and choose “Show Package Contents”.  
       2. Navigate to Contents 🡪 Resources.  
       3. Run the file labeled, “install-login-hook.command”.  
          1. Enter, “YES”.  
          2. Enter the Administrator password.  
          3. Close the window when finished.  
28. Copy Information from old computer to new (if applicable).  
29. Ensure the user is setup as a Mobile Account; if not, change it to one.  
30. \#\# Add to MDM.  
31. Ready to Deploy\!

