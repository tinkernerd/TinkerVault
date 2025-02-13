---
title: Google Meet Boom Camera
description: 
type: Resource
topic:
  - Raspberry Pi
category: Info Tech
created_at: 2025-02-06T15:05:09-05:00
modified_at: 2025-02-06T15:06:00-05:00
tags:
  - raspberry-pi
  - meetings
---
1.  Flip power switch on surge suppressor at the bottom of the boom, after plugging it in (Ethernet to the Raspberry Pi Single Board Computer on the boom is optional as it has WiFi, however connection will be stronger and more reliable).
2.  Turn on Podium PC with VNC Viewer Installed.
3.  Kairis 461's podium computer has it installed under the "smcpodium" account.
	1. User: smcpodium
	2. Pass: smcpodium
4.  Open VNC Viewer
5.  Click on "Boom Camera" to remote into the boom's Raspberry Pi Computer.
	1. If Boom Camera is not seen and a login is required the credentials are as follows:
		1. User: smcraspberrypi@gmail.com
		2. Pass: SMCRaspberryPi999*
6. Screen of Google Meets will appear (this is the google meets for the boom itself), once here click "Sign In" (If already signed in, sign out, and log back in again).
7.  Please proceed to login with cached credentials (click the input box and an email should appear, click that email and continue, then continue again on the next screen).
8.  Enter meeting code or random nickname to either create or join meeting.
9.  When prompted to join click "Join Now" (Reminder an audio feedback loop can happen so either turn off audio from the main Podium PC or, more likely, turn off the boom's microphone if someone is not speaking by the boom)
10. Raspberry Pi should now be connected to the meeting and VNC Viewer can be exited.
11. Now that the boom is set up in the meeting have everyone join the meeting with the boom as normal.
	1. Sign into Google Meets as yourself (SMC Email)
	2. Use the meeting code/nickname to connect to the boom you used in setup of the boom
	3. Depending on what you want shown click "Join Now" to show your webcam, or "Present" to show PC screen.
	4. Now you should be in the meeting. (If there is feedback screeching, again turn off boom mic or turn off the source of the audio that is feeding back into the boom mic.)
	5. To record the meeting/boom cam click the three dots on the lower right of the meeting screen, then hit "Record Meeting".
	6.  To end the recording please follow step 'e.' again, this time clicking "Stop Recording" and this recording will save to the signed in user's google drive.
	7. To close out just end the meeting, sign out, and switch off the boom's surge protector.
