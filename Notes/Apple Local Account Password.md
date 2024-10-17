---
title: APPLE - Local Accounts Password
dateCreated: 2023-10-26T08:09:39
type: Resource
topic:
  - Accounts
tags:
  - apple
  - localaccount
---

There are several mac users that have local accounts on their machines due to an issue where network profiles would take forever to log in. Because of this, these mac users have a total of three passwords to deal with instead of the usual two that most users have (AD+Wired vs. Local+AD+Wired.)



If a mac users locks their account due too many incorrect attempts, you have to reset their Local password on their machine by logging in as Administrator and accessing local accounts.



If they are trying to access server resources and it says they need to change their password, they cannot do it on their mac. Also, trying to change their AD password via the Account Unlock tool, or even in AD itself, the mac will not accept the new password.



The fix for this is when they need to reset their AD password due to not being able to access server resources, the user needs to log into a Windows machine in order to change their password. When they try to log in it will prompt them to change their password, and after it is changed, they should be able to access what they need to back on their mac.
