# collect_evidence.ps1

$ErrorActionPreference = "Continue"

$hostname = $env:COMPUTERNAME
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$outputDir = ".\output"

if (!(Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir | Out-Null
}

$outputFile = "$outputDir\evidence_${hostname}_${timestamp}.txt"

function Write-Section {
    param(
        [string]$Title,
        [scriptblock]$Command
    )

    Add-Content $outputFile ""
    Add-Content $outputFile "=================================================="
    Add-Content $outputFile "[$Title]"
    Add-Content $outputFile "=================================================="

    try {
        & $Command | Out-String | Add-Content $outputFile
    }
    catch {
        Add-Content $outputFile "[ERROR] $($_.Exception.Message)"
    }
}

Add-Content $outputFile "Server Evidence Report"
Add-Content $outputFile "Hostname : $hostname"
Add-Content $outputFile "Date     : $(Get-Date)"
Add-Content $outputFile "User     : $env:USERNAME"

Write-Section "OS Information" {
    Get-ComputerInfo | Select-Object `
        CsName,
        WindowsProductName,
        WindowsVersion,
        OsBuildNumber,
        OsArchitecture,
        CsDomain,
        CsTotalPhysicalMemory,
        OsLastBootUpTime
}

Write-Section "Installed Software" {
    Get-ItemProperty `
      HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*,
      HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
    Where-Object { $_.DisplayName } |
    Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
    Sort-Object DisplayName
}

Write-Section "Hotfix" {
    Get-HotFix | Sort-Object InstalledOn -Descending
}

Write-Section "Disk Information" {
    Get-Disk | Select-Object Number, FriendlyName, SerialNumber, HealthStatus, OperationalStatus, PartitionStyle, Size
}

Write-Section "Volume Information" {
    Get-Volume | Select-Object DriveLetter, FileSystemLabel, FileSystem, DriveType, HealthStatus, Size, SizeRemaining
}

Write-Section "Network Configuration" {
    Get-NetIPConfiguration
}

Write-Section "Network Adapter" {
    Get-NetAdapter | Select-Object Name, InterfaceDescription, Status, MacAddress, LinkSpeed
}

Write-Section "DNS Server Address" {
    Get-DnsClientServerAddress
}

Write-Section "Firewall Profile" {
    Get-NetFirewallProfile | Select-Object Name, Enabled, DefaultInboundAction, DefaultOutboundAction, AllowInboundRules, AllowLocalFirewallRules
}

Write-Section "Local Users" {
    Get-LocalUser | Select-Object Name, Enabled, LastLogon, PasswordRequired, UserMayChangePassword
}

Write-Section "Services" {
    Get-Service | Sort-Object Status, Name | Select-Object Name, DisplayName, Status, StartType
}

Write-Section "Recent System Event Logs" {
    Get-WinEvent -LogName System -MaxEvents 50 |
    Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message
}

Write-Section "Recent Application Event Logs" {
    Get-WinEvent -LogName Application -MaxEvents 50 |
    Select-Object TimeCreated, Id, LevelDisplayName, ProviderName, Message
}

Write-Host "Evidence collected: $outputFile"