---
title: Untitled
dateCreated: 2021-04-10T22:17:44
type: Resource
category: SMC
---
type: Resource
category: SMC

# Slides from Training Video

Created: 2021-04-10 22:17:44 -0400

Modified: 2023-10-18 13:11:52 -0400

---

![Raspberry Pi Guide Raspbemy Pi of SMC ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image1.png){width="4.729166666666667in" height="2.6875in"}![Raspberry Pi Models Pi Models SMC Utilizes: RaspberyPi RaspberyPi 4 a ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image2.png){width="4.729166666666667in" height="2.6875in"}![SMC Models and The Specs/Parts Rss 4 ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image3.png){width="4.729166666666667in" height="2.6875in"}![](../../Attachments/Digital-Signage-Slides-from-Training-Video-image4.png){width="4.729166666666667in" height="2.6875in"}



![Basics Mode OS Initial Con@uztm AltemäE OS C SudO ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image5.png){width="4.729166666666667in" height="2.6875in"}![Raspberry Pi OS I nstallation pi ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image6.png){width="4.729166666666667in" height="2.6875in"}![Headless Setup (No Monitor/Remote Control) it SD sy a ifs VN•c pc D Gu in ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image7.png){width="4.729166666666667in" height="2.6875in"}![Raspberry Pi I nitial Setup/Sudo This ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image8.png){width="4.729166666666667in" height="2.6875in"}![Atternate OS I nstallation Sim ilartothe previous, RaspberryPi OS installaton, however you mustdownload the image you'll be using (m aking sure its ableto be run on RaspberryPi) and seledäl_lsecustom•, nextseleding the arrea jmg fle or zip file, lastlycli&.ing pen' ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image9.png){width="4.729166666666667in" height="2.6875in"}![Digital Sign Locations ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image10.png){width="4.729166666666667in" height="2.6875in"}![Editing Signs fa *gry Pi to Will Neu'ER CELErE -ræ SLOES. zcGLE SLOES CR OR YOU'LL HAVE TO REASSIGN THE SEN IN EC4T -ræ SFCIFIC S.. SLIDES ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image11.png){width="4.729166666666667in" height="2.6875in"}!["6deck com ](../../Attachments/Digital-Signage-Slides-from-Training-Video-image12.png){width="4.729166666666667in" height="2.6875in"}



Links:



To Main Slides: <https://docs.google.com/presentation/d/1i13tynIudJwifjRywCTWJqcltaPRDJ7rFiuJrvcFLbo/edit?usp=sharing>



-   Digital Signage (Yodeck)
    -   [Instruction](https://www.yodeck.com/docs/display/YO/Creating+a+Yodeck+Player)
-   Wireless Access Point
    -   [Instruction](https://thepi.io/how-to-use-your-raspberry-pi-as-a-wireless-access-point/)
-   UPS Monitor
    -   [Instruction](https://www.youtube.com/watch?v=p2CXhV-UZHU)
-   Google Meet (Versatile Meeting Device)
    -   There is not really much in the way of installation as you will basically just be using Chromium (Chrome for raspberry pi) to just login to a meeting, however here is something to make the raspberry pi a kiosk for it when it powers on automatically if only to be used for a Google Meet Kiosk (Utilizes Webcam as the camera). [Instruction](https://www.raspberrypi.org/forums/viewtopic.php?t=233502)

Other Possible Use Cases:

-   KVM
    -   [Instruction](https://www.youtube.com/watch?v=CyEpshm16HY)
-   IP Camera
    -   [Instruction](https://www.youtube.com/watch?v=Lr2dOBRVqec)
-   AI Automation
    -   [Instruction](https://www.youtube.com/watch?v=4luTnRpfgbs)
-   NAS
    -   [Instruction](https://www.youtube.com/watch?v=8kHg17oDt-E)



[Raspberry Pi Imager](https://www.raspberrypi.org/software/)



-   After setup of the SD Card, unplug the SD Card from the computer and plug it back in as to see the filesets of the SD Card.
-   Once there in the files add a text file called "ssh" and remove the .txt file extension to make it an orphan file.
-   Next add a file called wpa_supplicant.txt with this code inside [here](https://www.raspberrypi.org/documentation/configuration/wireless/headless.md), replacing the country code for US and the SSID to the wifi/psk to the wifi password (leave blank if no password) (Step 3 is not needed if wired to ethernet).
-   This enables SSH services that you can remotely access the Terminal of the Raspberry Pi
-   Use [Putty](https://www.putty.org/) to SSH into the Raspberry Pi from a Windows Machine or from an SSH command on Mac, after finding it's IP address through [Advanced IP Scanner](https://www.advanced-ip-scanner.com/).
-   From here you can then enable VNC remote connections via the terminal command:

*sudo raspi-config*

-   You then go to interfaces and enable VNC, using VNC on your main PC to access the GUI Desktop of the Raspberry Pi.
















