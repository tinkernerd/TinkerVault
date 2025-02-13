---
title: T-Drive/VPN Connection Workaround
description: Workaround for T-Drive/VPN Connection
type: Resource
topic:
  - Windows
  - Network Drive
  - VPN
category: Info Tech
created_at: 2025-02-06T12:55:55-05:00
modified_at: 2025-02-06T12:59:48-05:00
---
There is a workaround for those who have difficulties connecting to T drive, here are the steps on how to do it, in case you want me to walk you through it let me know and I can help you as well by phone/hangouts/zoom;
1.  Connect to the college's network via openvpn and remain connected throughout the active session.
2.  Launch Remote Desktop Connection. (Tip: If using Windows 10, they can go to the search field and type remote desktop connection and it should find it there.)
3.  In the Computer field, type in rdp.swmich.local
4.  When asked for the username and password, one of the following will need to be done:
    1.  From a college assigned laptop that is connected to the college's domain, they just need to type in their AD username and password
    2.  From a non college assigned laptop or one that is not connected to the college's domain, they may need to type in swmichAD username and then their AD password.
5.  Once they've successfully logged in, their initial Windows profile will be created and they should be presented with a desktop that has a link to the Chrome Browser and a link to the T drive.

*While people can technically download files from the T drive and work on them locally then upload them back to the T drive, please be aware that if there are multiple people doing this with the same files, there's a potential in which some people's work may get overwritten as only the last saved document and its contents will be available on that T drive location. Users who choose to do this may want to alert their coworkers that they're doing this in order to help minimize this occurrence.

