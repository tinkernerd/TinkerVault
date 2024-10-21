---
title: Untitled
dateCreated: 2024-02-01T08:54:29
type: Resource
category: SMC
---
type: Resource
category: SMC

# How to Enable Auto Login in Windows 10

Created: 2024-02-01 08:54:29 -0500

Modified: 2024-10-02 09:19:17 -0400

---



To use Registry Editor to turn on automatic logon, follow these steps:

1.  Click **Start**, and then click **Run**.
2.  In the **Open** box, type *Regedit.exe*, and then press Enter.
3.  Locate the HKEY_LOCAL_MACHINESOFTWAREMicrosoftWindows NTCurrentVersionWinlogon subkey in the registry.
4.  On the **Edit** menu, click **New**, and then point to **String Value**.
5.  Type *AutoAdminLogon*, and then press Enter.
6.  Double-click **AutoAdminLogon**.
7.  In the **Edit String** dialog box, type **1** and then click **OK**.
8.  Double-click the **DefaultUserName** entry, type your user name, and then click **OK**.
9.  Double-click the **DefaultPassword** entry, type your password, and then click **OK**.

If the **DefaultPassword** value does not exist, it must be added. To add the value, follow these steps:

1.  On the **Edit** menu, click **New**, and then point to **String Value**.
2.  Type *DefaultPassword*, and then press Enter.
3.  Double-click **DefaultPassword**.
4.  In the **Edit String** dialog, type your password and then click **OK**.

    a.  [***Note*** If no DefaultPassword string is specified, Windows automatically changes the value of the AutoAdminLogon key from 1 (true) to 0 (false), disabling the AutoAdminLogon feature.]{.mark}

<!-- -->

10. If you have joined the computer to a domain, you should add the **DefaultDomainName** value, and the data for the value should be set as the fully qualified domain name (FQDN) of the domain, for example contoso.com..
11. Exit Registry Editor.
12. Click **Start**, click **Shutdown**, and then type a reason in the **Comment** text box.
13. Click **OK** to turn off your computer.
14. Restart your computer. You can now log on automatically.



-   ***Note*** To bypass the AutoAdminLogon process and to log on as a different user, press and hold the Shift key after you log off or after Windows restarts.







<https://learn.microsoft.com/en-us/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon>






