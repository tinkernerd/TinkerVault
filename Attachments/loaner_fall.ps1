$VerbosePreference = "Continue"
$LoanerUseByDate = Get-Date -Year 2024 -Month 12 -Day 20 -Hour 23 -Minute 59 -Second 00
$script:flashDriveLetter = ""

# log messages
$LogBreakMessage = "---------------------------------------"

function UpdateFlashDriveLocation {
    # Save the current verbose preference

    # Disable verbose output
    $VerbosePreference = 'SilentlyContinue'

    # Get the list of removable drives
    $removableDrives = Get-CimInstance -Query "SELECT * FROM Win32_DiskDrive WHERE MediaType='Removable Media'"

    if ($removableDrives) {
        foreach ($drive in $removableDrives) {
            $partitions = Get-CimAssociatedInstance -InputObject $drive -ResultClassName Win32_DiskPartition
            foreach ($partition in $partitions) {
                $logicalDisks = Get-CimAssociatedInstance -InputObject $partition -ResultClassName Win32_LogicalDisk
                foreach ($logicalDisk in $logicalDisks) {
                    $driveLetter = $logicalDisk.DeviceID
                    if ($driveLetter) {
                        $script:flashDriveLetter = "$driveLetter\"
                        #break 3 # Exit all loops once a drive is found
                    }
                }
            }
        }
    }
    else {
        Write-Verbose "No removable drive found."
    }

    # Restore the original verbose preference
    $VerbosePreference = $oldVerbosePreference
    return $script:flashDriveLetter
}

function makefolder {
    param (
        [Parameter(Mandatory = $true)]
        [string]$foldername
    )
    if (!(Test-Path $foldername)) {
        New-Item -ItemType Directory -Force -Path $foldername
    }
}
$StandardDate = "MM-dd-yyyy_HH-mm-ss"
$LongDate = "dddd, MMMM dd'th', yyyy HH:mm:ss"
$ExpireDate = "MM-dd-yyyy HH:mm:ss"
$TimeStampDate = "MM-dd-yyyy HH:mm:ss.fff"
$ExpireDate = (Get-Date).ToString($ExpireDate)
$FancyDate = (Get-Date).ToString($LongDate)

$ComputerLogName = $env:COMPUTERNAME.ToLower()
function GetLogFolder {
    $driveLetter = UpdateFlashDriveLocation
    if (!$driveLetter) {
        Write-Host "No flash drive found. Exiting function."
        return
    }
    $LoanerDir = Join-Path "Loaner" "Log"
    $logDir = Join-Path $script:flashDriveLetter $LoanerDir
    makefolder $logDir
    $CompNameUnderScore = "$env:COMPUTERNAME" + "_" 
    $LogFileNamePrefix = "$CompNameUnderScore"
    $LogFileExtension = ".log"
    $LogFileName = $LogFileNamePrefix + (Get-Date).ToString($StandardDate) + $LogFileExtension
    $logFile = Join-Path $logDir $LogFileName
    return $logFile
    return $ComputerLogName
    return $logDir

}
$logFile = GetLogFolder
$LogDir = GetLogFolder

if (-not $logFile) {
    Write-Host "Log file could not be initialized because no valid drive was found."
    return
}


# Loaner User Variables
$LoanerUser = "smcloaner"
$LoanerPassword = "DoitLoan1@"
$LoanerPass = ConvertTo-SecureString $LoanerPassword -AsPlainText -Force  # Super strong plain text password here (yes this isn't secure at all)
    
$LoanerName = "SMC Loaner"
$LoanerDesc = "Local Account for the SMC loaner's" # Description of the account    
$LoanerExpireDate = $LoanerUseByDate.ToString("MM-dd-yyyy HH:mm:ss")
$LoginMessage = "Loaner Login: Username : .\$LoanerUser | Loaner Password : $LoanerPassword"

function Write-Log {
    param(
        [Parameter(Mandatory = $true)][string] $message,
        [Parameter(Mandatory = $false)]
        [ValidateSet("INFO", "WARN", "ERROR")]
        [string] $level = "INFO"
    )   
    $timestamp = (Get-Date).ToString($TimeStampDate)
    $logMessage = "[$timestamp] [$level] - $message"
    
    # Retry mechanism for writing to the log file
    $maxRetries = 5
    $retryCount = 0
    $success = $false
    
    while (-not $success -and $retryCount -lt $maxRetries) {
        try {
            if ($logFile) {
                Add-Content -Path $logFile -Value $logMessage
                $success = $true
            }
        }
        catch {
            # Increment retry count and wait for a short time before retrying
            $retryCount++
            Start-Sleep -Milliseconds 200
        }
    }
    
    if (-not $success) {
        Write-Host "Failed to write to the log after $retryCount attempts."
    }
}


function Write-Verbose {
    param([string]$message,
        [ValidateSet("INFO", "WARN", "ERROR")]
        [string] $level = "INFO"
    )

    Microsoft.PowerShell.Utility\Write-Verbose $message
    Write-Log -message $message -level "INFO"
}
$LoanerPrograms = @(
    "Statdisk 13 version *.*.*",
    "Microsoft Edge*",
    "Microsoft Edge Update*",
    "Microsoft Edge WebView2 Runtime*",
    "PaperCut MF Client*",
    "Request Handler Agent*",
    "Realtek USB Audio*",
    "Patch Management Service Controller*",
    "Intel*Software Installer*",
    "FileWave Client*",
    "Dell Command | Update*",
    "Adobe Refresh Manager*",
    "Adobe Acrobat Reader DC*",
    "Microsoft Visual C++ 2019 X86 Additional Runtime - *.*.*",
    "Dell SupportAssist OS Recovery Plugin for Dell Update*",
    "Windows Agent*",
    "Windows 10 Update Assistant*",
    "Microsoft Visual C++ 2015-2019 Redistributable (x86) - *.*.*",
    "File Cache Service Agent*",
    "Microsoft Visual C++ 2019 X86 Minimum Runtime - *.*.*",
    "Realtek Audio Driver*",
    "MSP Core Agent*",
    "Alertus Desktop*"
)
function SoftwareInstalled {
    param (
        [string]$softwareName,
        [string]$vendorName
    )

    $softwareInstalled = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like $softwareName -and $_.Vendor -eq $vendorName }

    if ($softwareInstalled) {
        Write-Verbose "$softwareName is installed."
    }
    else {
        Write-Verbose "$softwareName is not installed."
    }
}
function ProgramCheck {
    # Get list of installed programs
    $installedPrograms = Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName | Where-Object { $null -ne $_.DisplayName } | Select-Object -ExpandProperty DisplayName
    # Compare lists and find the difference
    $notOnLoanerList = @()
    foreach ($program in $installedPrograms) {
        $matched = $false
        foreach ($LoanerProgram in $LoanerPrograms) {
            if ($program -like $LoanerProgram) {
                $matched = $true
                break
            }
        }
        if (-not $matched) {
            $notOnLoanerList += $program
        }
    }
    # Check if there is a difference
    if ($notOnLoanerList.Count -eq 0) {
        Write-Verbose "All Good! No new programs installed."
    }
    else {
        # Output programs not on the original list
        Write-Verbose "Programs installed that are not on the original list:"
        Write-Verbose "$notOnLoanerList"
    }
}

function Remove_LoanerUser {
    process {
        try {
            #removes smcloaner user from computer cleaning files up
            Remove-LocalUser $LoanerUser
            Write-Verbose "$LoanerUser deleted"
        }
        catch {
            Write-Verbose "Deleting local account failed" -level "ERROR"
        }
    }
}
function LoanerUser_Make {
    <# If you want to re-enable it use the following commands: net user username /expires:never #>

    try {
        # Create new local user
        New-LocalUser -Name "$LoanerUser" -Password $LoanerPass -FullName "$LoanerName" -Description "$LoanerDesc" -ErrorAction SilentlyContinue -ErrorVariable userError
        if ($userError) {
            Write-Verbose "Failed to create user: $userError" -level "ERROR"
        }
        Write-Verbose "$LoanerUser local user created" -level "ERROR"
        Write-Verbose "Loaner Login: $LoginMessage"

        # Add new user to Administrators group
        Add-LocalGroupMember -Group "Administrators" -Member "$LoanerUser" -ErrorAction SilentlyContinue -ErrorVariable groupError
        if ($groupError) {
            Write-Verbose "Failed to add user to Administrators group: $groupError" -level "ERROR"
        }
        Write-Verbose "$LoanerUser added to the Administrators group" 

        # Set account expiration date
        $LoanerUser | Set-LocalUser -AccountExpires $LoanerUseByDate -ErrorAction SilentlyContinue -ErrorVariable expireError
        if ($expireError) {
            Write-Verbose "Failed to set account expiration: $expireError" -level "ERROR"
        }
        Write-Verbose "$LoanerUser account set to expire on $LoanerExpireDate"

        # Set password to never expire
        $LoanerUser | Set-LocalUser -PasswordNeverExpires $true -ErrorAction SilentlyContinue -ErrorVariable neverExpireError
        if ($neverExpireError) {
            Write-Verbose "Failed to set password to never expire: $neverExpireError" -level "ERROR"
        }
        Write-Verbose "$LoanerUser password set to never expire"

    }
    catch {
        Write-Verbose "Error occurred: $_" -level "ERROR"
    }
}
##--Bypass OOBE + Privacy Experience
function Set-OOBEbypass {
    Write-Verbose $LogBreakMessage
    Write-Verbose "Setting OOBE Bypass..."
    ###---Declare RegKey variables
    $RegKey = @{
        Path         = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"
        Name         = "EnableFirstLogonAnimation"
        Value        = 0
        PropertyType = "DWORD"
    }
    
    if (-not (Test-Path $RegKey.Path)) {
        Write-Verbose "$($RegKey.Path) does not exist. Creating path."
        New-Item -Path $RegKey.Path -Force
        Write-Verbose "$($RegKey.Path) path has been created."
    }
    
    New-ItemProperty @RegKey -Force
    Write-Verbose "Disable First Logon Animation"
    
    ###---Clear and redeclare RegKey variables
    $RegKey = @{ }
    $RegKey = @{
        Path         = "HKLM:\Software\Policies\Microsoft\Windows\OOBE"
        Name         = "DisablePrivacyExperience"
        Value        = 1
        PropertyType = "DWORD"
    }
    
    if (-not (Test-Path $RegKey.Path)) {
        Write-Verbose "$($RegKey.Path) does not exist. Creating path." 
        New-Item -Path $RegKey.Path -Force
        Write-Verbose "$($RegKey.Path) path has been created."
    }
    
    New-ItemProperty @RegKey -Force
    Write-Verbose "Disable Privacy Experience"
}
function Test-LocalUserExists {
    param($LoanerUser)
    $user = Get-LocalUser -Name $LoanerUser -ErrorAction SilentlyContinue
    return $null -ne $user
}

function RunForestRun {
    Write-Verbose "Computer : $ComputerLogName"
    Write-Verbose "Log File : $LogDir"
    Write-Verbose "Time/Date : $FancyDate"
    Write-Verbose $LogBreakMessage
    Write-Verbose "Initialization in Progress..."
    Write-Verbose "System configuration underway..."
    Write-Verbose "The user will be locked out of the loaner on $LoanerUseByDate"
    Write-Verbose $LogBreakMessage
    Write-Verbose "Program Check"
    Write-Verbose "Checking for installed software..."
    $softwareList = @(
        @{ Name = "Java"; Vendor = "Oracle Corporation" },
        @{ Name = "FileWave Client"; Vendor = "FileWave" },
        @{ Name = "Windows Agent"; Vendor = "N-able Technologies" }
    )

    foreach ($software in $softwareList) {
        SoftwareInstalled -softwareName $software.Name -vendorName $software.Vendor
    }
    ProgramCheck

    Write-Verbose $LogBreakMessage
    Write-Verbose "Setting up loaner user..."
    if (Test-LocalUserExists -LoanerUser $LoanerUser) {
        Remove_LoanerUser 
        LoanerUser_Make
    }
    else {
        LoanerUser_Make  
    }

    Set-OOBEbypass

    Write-Verbose "Restarting computer"
    shutdown /r /t  20 /c "Restarting computer to complete setup"
}
try {
    RunForestRun
}
catch {
    Write-Verbose "An error occurred: $_" -level "ERROR"
}
