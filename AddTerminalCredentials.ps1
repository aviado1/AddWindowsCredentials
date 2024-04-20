<#
.SYNOPSIS
Adds terminal service credentials on a Windows system.

.DESCRIPTION
This script prompts the user to input domain name, username, computer name, and password. It then constructs a command to use cmdkey for adding the specified credentials securely. The script is designed to be user-friendly, providing clear prompts and a success message in green upon successful credential addition.

.AUTHOR
Aviad Ofek

.EXAMPLE
Run the script in a PowerShell window with administrative privileges:
.\AddTerminalCredentials.ps1

Follow the on-screen prompts to enter the required information. The script ensures secure handling of the password and provides feedback upon successful execution.

.NOTES
The password is temporarily converted to plain text to construct the necessary cmdkey command. Ensure the script is used in a secure environment to prevent exposure of sensitive information.

#>

# Script to add credentials using cmdkey
# Ask user for input
$domainName = Read-Host "Enter your domain name"
$username = Read-Host "Enter your username"
$computerName = Read-Host "Enter your computer name"
$password = Read-Host "Enter your password" -AsSecureString
$BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password)
$UnsecurePassword = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)

# Build the cmdkey command
$cmd = "cmdkey /generic:`"TERMSRV/$computerName`" /user:`"$domainName\$username`" /pass:`"$UnsecurePassword`""

# Execute the command
Invoke-Expression $cmd

# Output success message
Write-Host "Credential added successfully." -ForegroundColor Green
