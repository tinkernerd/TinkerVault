---
title: Untitled
dateCreated: 2024-01-03T10:53:44
type: Resource
category: SMC
---
type: Resource
category: SMC

# Loaner - Refresh Upon Return (w/o script)

Created: 2024-01-03 10:53:44 -0500

Modified: 2024-09-03 12:59:51 -0400

---

1.  Login to the Loaner under .Administrator
2.  Search and click on 'Add or Remove Programs' in the Windows search bar

    a.  Ensure that 'FileWave' is installed

        i.  If this is not installed or not up to the most current version (as of May 2024 - **15.2.0** ), notify a technician (most likely China Bendiner)

    b.  Ensure that 'Windows Agent' is installed

        i.  If this is not installed, notify a technician

3.  Uninstall any programs installed by loanee
4.  Uninstall 'Java' or 'GNU Octave' if present
5.  Search and click on 'Task Scheduler' in the Windows search bar

    a.  Click the down arrow to Task Scheduler Library

    b.  Highlight 'Loaner Timed Password Reset'

    c.  In the right pane, click 'Properties', select 'Triggers' tab, and select 'edit'

    d.  Ensure the task is set to 'One Time' and change the start date to one week after classes have ended: Summer 2024 semester shutdown time is Aug 16^th)^

6.  Search and click on 'Dell Command: Update' in the Windows search bar

    a.  Once downloaded and installed, run the Dell Command application and install any updates provided. Complete a restart if Dell Command instructs to do so

        i.  If the Dell Command window pulls up and immediately goes away, follow these steps:

            1.  Search and click on 'Add or Remove Programs' in the Windows search bar
            2.  Uninstall any instances of "Dell Command"
            3.  Use this [link](https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=8d5mc) to re-download Dell Command. Enter the make and model of the loaner laptop and download the compatible version of Dell Command that's provided
7.  Search and click on 'Computer Management' in the Windows search bar

    a.  Click on 'Local Users and Groups' in the left panel.

    b.  Click on 'Users'.

        i.  Delete user 'smcloaner'

        ii. Create user 'smcloaner'

            1.  Password : '**D**oit**L**oan1@'

                a.  Ensure that a username and password slip is taped below the keyboard. (These are located in the secondary office behind the Help Desk, taped inside the cabinet door labeled 'Loaners')

        iii. Login with these credentials to verify that username and password reflect the paper slip
