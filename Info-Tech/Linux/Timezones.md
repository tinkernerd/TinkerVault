---
created: 2024-07-14T21:52:18 (UTC -04:00)
tags: []
source: https://phoenixnap.com/kb/how-to-set-or-change-timezone-date-time-ubuntu
author: Vladimir Kaplarevic
---

# How To Set or Change Timezone/Date/Time

> ## Excerpt
> Learn how to check, change the time, date, and time zone in Ubuntu using the timedatectl command or command line. We also cover synching.

---
Introduction

Modern operating systems detect and synchronize time using NIST (National Institute of Standards and Technology) time servers. NIST operates an atomic clock that neither gains nor loses a second in 300 million years.

However, you may find that your system needs to be synchronized with NIST time servers properly.

****This guide shows you how to check and change Ubuntu's time, date, and timezone.****


-   Some operations may require **sudo** or root privileges
-   The command line/terminal window (Ctrl-Alt-T)

## Using timedatectl to Control the System Time and Date

Most modern [Linux distributions](https://phoenixnap.com/glossary/what-is-a-linux-distribution) such as Fedora, Debian, Ubuntu, [Arch](https://phoenixnap.com/kb/arch-linux-install), CentOS v.7.x+, and other Unix-based systems provide the **`timedatectl`** utility. This command allows you to control and edit time and date settings using the command line.

### Display Current Date and Time with timedatectl

To display the current time and date information, use the command:

```
timedatectl
```

![current time and date in Ubuntu](https://phoenixnap.com/kb/wp-content/uploads/2021/04/timedatectl-check-date-time-timezone-linux.png)

The output provides local time, universal time, and the timezone and informs you if the synchronization process is enabled.

### Sync Time to NIST Atomic Clock

Set the Ubuntu system to synchronize to the NIST atomic clock with the following command:

```
timedatectl set-ntp yes
```

To adjust the time and date manually, turn off NTP synchronizing with:

```
timedatectl set-ntp no
```

**Note:** NTP stands for Network Time Protocol.

### How to Change the Time

To set the time to your specifications, use the following command:

```
timedatectl set-time 21:45:53
```

The time format is **`HH:MM:SS`** (Hours, Minutes, Seconds). Ensure the automatic time synchronization is off to enable changes.

### How to Change the Date

Use the same command to define the date on the system:

```
timedatectl set-time 2019-04-10
```

The date format is **`YYYY-MM-DD`** (Year, Month, and Day).

### How to Set a Timezone in Ubuntu

The **`timedatectl`** command additionally allows you to synchronize your systems with a time zone of your choosing. To change the time zone, follow the steps below:

1\. To list the names of the time zones, use:

```
timedatectl list-timezones
```

![list of all the timezones available for date and time](https://phoenixnap.com/kb/wp-content/uploads/2021/04/timedatectl-list-timezones.png)

2\. Find the location closest to you, then enter the following:

```
timedatectl set-timezone Region/Location
```

3\. Replace **`Region/Location`** with a name from the time zone list.

The time zone list is extensive. Filter the list by keyword by piping the [grep command](https://phoenixnap.com/kb/grep-command-linux-unix-examples):

```
timedatectl list-timezones | grep keyword
```

![setting time zone using grep](https://phoenixnap.com/kb/wp-content/uploads/2021/04/timedatectl-list-timezone-grep.png)

Substitute **`keyword`** for any keyword you wish, such as **`America`**, **`Asia`**, or **`New_York`**.  If you get an error, double-check your spelling and make sure that you are using capital letters correctly.

### How to Set Universal Time (UTC) in Ubuntu

UTC stands for Coordinated Universal Time and appears in scientific calculations and synchronizing between time zones across the globe. Synchronize your system with the following command:

```
timedatectl set-timezone UTC
```

There is no immediate output; however, you can check the applied settings with **`timedatectl`**.

**Note:** GMT and Zulu Time are often used to refer to UTC. They are equivalent terms when fractions of a second are not relevant.

## How to Sync Hardware Clock

RTC stands for Real-Time Clock, another name for the hardware clock the computer. The system has a tiny quartz crystal and a battery that keeps time when the system disconnects from a network.

### Set Hardware Clock to Sync to Local Timezone

To have the Real-Time Clock synchronize to your local time zone, enter:

```
timedatectl set-local-rtc 1
```

You may get an error in this mode, since updating the hardware clock to the local time zone is unsupported.

### Set the Hardware Clock to Sync with UTC

Set the hardware clock to synchronize with UTC by entering the following command:

```
timedatectl set-local-rtc 0
```

As with the previous command, there is no confirmation that the change has applied. Verify the change manually with the **`timedatectl`** command.

## Set Time, Date Timezone in Ubuntu Older Versions From Command Line

Older Ubuntu versions may not support the **`timedatectl`** command. Find out [how to check the Ubuntu version](https://phoenixnap.com/kb/how-to-check-ubuntu-version).

There are alternative commands to display and adjust system time setting from a command line. Use the commands listed below:

-   To display the date and time of the operating system, use:

```
date
```

-   Change the date of the operating system by typing:

```
sudo date -s "YY-MM-DD HH:MM:SS"
```

Replace **`YY-MM-DD`** with Year-Month-Day, and **`HH:MM:SS`** with Hour:Minute:Second. You can set just the date or only the time, depending on your needs.

-   Display the time kept by the hardware clock (RTC) with any of the following commands:

```
sudo hwclock -r
```

or

```
sudo hwclock --show
```

or

```
sudo hwclock --show --verbose
```

**Note:** Some versions may not support the **`--verbose`** option, and it may not work on a virtual machine. The hardware clock may not hold the same time as the operating system.

-   Display the RTC time in UTC format:

```
sudo hwclock --show --utc
```

-   Change the time kept by the RTC:

```
sudo hwclock --set --date "MM/DD/YY HH:MM:SS"
```

-   Set OS time based on the hardware clock (RTC):

```
sudo hwclock --hctosys
```

This command tells the system to set the HC (hardware clock) to SYS (system):

-   Set the RTC based on the operating system time:

```
sudo hwclock --systohc
```

Use this command to reverse the previous process.

Conclusion

This guide showed you how to set the time,  date, and time zone on your Ubuntu system. Setting the system to synchronize with NTP is typically the best course of action.

Next, learn how to [set up time synchronization on Debian](https://phoenixnap.com/kb/debian-time-sync).
