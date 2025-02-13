---
title: Loaner.ps1 PowerShell Script Overview
description: Detailed Walkthrough on how the PS Loaner Script works and how to use it.
type: Resource
tags:
  - smc
  - powershell
  - loaner
topic:
  - PowerShell
category: Info Tech
created_at: 2025-02-06T15:33:02-05:00
modified_at: 2025-02-06T15:33:43-05:00
---
# Loaner.ps1 PowerShell Script Overview

## Key Components and Their Functions

### 1. **User Account Management**
The script manages the loaner account `smcloaner` by either deleting and recreating it or updating its settings. This ensures the account is always configured with the correct expiration date and privileges.

```powershell
$LoanerUser = "smcloaner"
$LoanerPassword = "DoitLoan1@"
$LoanerUseByDate = Get-Date -Year 2024 -Month 12 -Day 20 -Hour 23 -Minute 59 -Second 00
```

- **LoanerUser**: The username of the loaner account.
- **LoanerPassword**: The password for the account, stored as a secure string.
- **LoanerUseByDate**: The expiration date for the account.

### 2. **Log Setup**
The script logs all activities and errors to a log file located on a removable flash drive. This is useful for auditing and troubleshooting.

```powershell
$logFile = GetLogFolder
```

- **GetLogFolder**: Determines the location of the log file on the flash drive. It ensures that logs are saved to the directory `Loaner/Log`.

### 3. **Software Verification**
The script checks for the presence of important software installed on the computer. It logs discrepancies if any programs are missing or if unauthorized programs are detected.

```powershell
$LoanerPrograms = @(
    "Microsoft Edge*",
    "FileWave Client*",
    "Java*"
)
```

- **LoanerPrograms**: A list of essential software that should be installed on the loaner computer.
- **ProgramCheck**: Compares installed programs with the list to ensure consistency.

### 4. **OOBE Bypass**
The script bypasses Windows’ Out of Box Experience (OOBE) and disables certain features like the first logon animation and privacy experience.

```powershell
Set-OOBEbypass
```

- **Set-OOBEbypass**: Updates registry settings to skip OOBE and other unnecessary first-time setup steps.

### 5. **User Creation**
The script ensures that the `smcloaner` account is recreated with the correct settings, such as password never expiring and membership in the Administrators group.

```powershell
New-LocalUser -Name "$LoanerUser" -Password $LoanerPass
Add-LocalGroupMember -Group "Administrators" -Member "$LoanerUser"
```

- **New-LocalUser**: Creates the new local user with the specified username and password.
- **Add-LocalGroupMember**: Adds the loaner user to the Administrators group for full system access.

### 6. **Expiration Date Setup**
The loaner account is set to expire on the specified date, ensuring that the account will be automatically disabled after the loaner period.

```powershell
$LoanerUser | Set-LocalUser -AccountExpires $LoanerUseByDate
```

- **Set-LocalUser -AccountExpires**: Sets the expiration date for the loaner account.

### 7. **Program Logging**
The script logs any new software installed that’s not part of the approved list. It also logs the status of the critical operations (like account creation and program checks) to help identify issues during setup.

```powershell
Write-Log -message "Loaner Login: $LoginMessage"
```

- **Write-Log**: Custom function that logs messages (with timestamps) to the log file on the flash drive.

### 8. **Restart Computer**
Once the script completes all tasks, it restarts the computer to apply any changes made during the script execution.

```powershell
shutdown /r /t 20 /c "Restarting computer to complete setup"
```

- **shutdown /r**: Restarts the computer with a 20-second delay and logs a restart message.

---

## Summary of Key Functions

- **UpdateFlashDriveLocation**: Locates the flash drive to store logs.
- **ProgramCheck**: Verifies if required programs are installed and flags unauthorized software.
- **LoanerUser_Make**: Deletes and recreates the loaner user with the correct configuration.
- **Set-OOBEbypass**: Skips OOBE and privacy setup steps.
- **Write-Log**: Logs actions and errors to a flash drive for later review.
- **RunForestRun**: Main function that orchestrates all tasks, from user creation to logging and system restart.
