# WinP - Easy Software Installation via PowerShell

## Overview
WinP is a lightweight PowerShell-based tool that simplifies the installation of software on Windows. With WinP, you can quickly install multiple applications without manually downloading and setting them up. This makes it ideal for setting up a new system or deploying software efficiently.

## Features
- **Easy Installation**: Install software with a simple command.
- **Automation**: Reduce manual effort when setting up a new system.
- **Customizable**: Add and manage software lists as needed.
- **PowerShell-Based**: No additional dependencies required.

## Prerequisites
- Windows 10 or later
- PowerShell (Admin Mode)

## Installation
1. Download the `WinP.ps1` script from the repository.
2. Open PowerShell as Administrator.
3. Navigate to the directory where `WinP.ps1` is located.
4. Run the script using:
   ```powershell
   Set-ExecutionPolicy Bypass -Scope Process -Force; .\WinP.ps1
   ```

## Usage
To install a specific program, run:
```powershell
WinP install <program-name>
```
Example:
```powershell
WinP install Chrome
```

You can also install multiple programs at once:
```powershell
WinP install Chrome Firefox VSCode
```

## Supported Programs
WinP supports a wide range of commonly used applications. You can view the full list by running:
```powershell
WinP list
```

## Customization
You can modify the `WinP.ps1` script to add more programs or adjust installation parameters according to your needs.

## License
This project is licensed under the MIT License.

## Contributions
Contributions are welcome! Feel free to submit a pull request or report issues.

## Contact
For questions or support, open an issue on the repository or reach out via email.

