# CredentialAdder

## Overview
The CredentialAdder script is a PowerShell utility designed to securely add terminal service credentials on a Windows system. It prompts the user for necessary details such as domain name, username, computer name, and password, and then uses the `cmdkey` command to add these credentials securely.

## Features
- **Secure Input Handling**: Ensures that all credential inputs are handled securely.
- **User-Friendly Prompts**: Easy-to-follow prompts guide the user through the credential input process.
- **Success Notification**: Displays a success message in green upon successful addition of credentials.

## Prerequisites
- Windows Operating System
- PowerShell with administrative privileges

## Usage
To use the CredentialAdder script, follow these steps:
1. Download the script to your local machine.
2. Open a PowerShell window as an administrator.
3. Navigate to the directory where the script is located.
4. Execute the script:
   ```powershell
   .\AddTerminalCredentials.ps1
   ```
5. Follow the on-screen prompts to enter the domain name, username, computer name, and password.

**Example:**
Running the script in a PowerShell window:

```powershell
Enter your domain name: exampledomain
Enter your username: exampleuser
Enter your computer name: examplePC
Enter your password: 
Credential added successfully.
```

## Author
This script was authored by aviado1.

## Contributing
Contributions to the CredentialAdder are welcome. Please feel free to fork the repository, make changes, and submit a pull request. If you have any suggestions or feedback, please open an issue in the repository.

## Support
If you encounter any issues or have questions about using the script, please open an issue in the GitHub repository for assistance.
