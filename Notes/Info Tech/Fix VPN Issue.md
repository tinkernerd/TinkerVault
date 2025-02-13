---
title: Fix VPN Issue
type: Resource
topic:
  - VPN
  - Networking
category: Info Tech
created_at: 2025-02-06T14:58:25-05:00
modified_at: 2025-02-06T14:59:39-05:00
---

1.  Turn off WIFI and turn on Airplane mode from the login screen.
2.  Login as .Administrator
3.  Uninstall OpenVPN
4.  Search for Registry in the Windows search bar and open Registry Editor
5.  Push Ctrl + F to search within Registry Editor
6.  Search for openvpn
7.  Delete anything to do with openvpn
8.  After you delete the openvpn registry search for openvpn again
9.  This will bring up more openvpn registry entries
10. Delete anything to do with openvpn. You will have to search for openvpn 5 to 6 times and delete everything it finds that says openvpn.
11. After the 5 or 6^th^ openvpn registry search it will say "Finished searching through the registry" (There may be one refence left that can't be deleted because it's "not found", ignore that)
12. Click OK
13. Next go to file explorer and go to Windowssystem32configsystemprofileAppDataLocal (make sure "Hidden items" is selected, under view menu)
14. Make a folder named TileDataLayer in the Local folder
15. Then make a folder named Database in the TileDataLayer folder
16. Done

## Resources:
- [Known and Resolved issues for Windows 10 May 2019 Update version 1903 - Page 2 - Windows 10 Forums](https://www.tenforums.com/windows-10-news/133041-known-resolved-issues-windows-10-may-2019-update-version-1903-a-2.html#post1638963)
- [Top 3 Ways to Fix edb.log on Windows 10/8.1/8/7](https://www.4winkey.com/windows-tips/top-3-ways-to-fix-edb-log-on-windows-10-8-1-8-7.html)