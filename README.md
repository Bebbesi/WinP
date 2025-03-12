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




# How to Enable Script Execution in PowerShell to Run The Script

PowerShell has security measures in place that prevent the execution of scripts by default. To run this script, you need to modify the Execution Policy.

---
## Step 1: Open PowerShell as Administrator
1. Press `Win + S` and type **PowerShell**.
2. Right-click on **Windows PowerShell** and select **Run as administrator**.
3. A PowerShell window will open with elevated privileges.

---
## Step 2: Enable Script Execution
Run the following command to allow scripts to run:
```powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser
```
When prompted, type `Y` and press **Enter** to confirm the change.

---
## Step 3: Run the Script
Navigate to the directory where your script is located using:
```powershell
cd "C:\path\to\your\script"
```
Then, execute your script with:
```powershell
.\your-script.ps1
```

---
## Step 4: Restore the Default Execution Policy (Optional)
For security reasons, you may want to restore the default Execution Policy after running your script:
```powershell
Set-ExecutionPolicy Restricted -Scope CurrentUser
```

---
## Troubleshooting
- If you receive a **“Permission denied”** error, ensure you are running PowerShell as an administrator.
- If the script was downloaded from the internet, unblock it by right-clicking the file, selecting **Properties**, and checking **Unblock** under Security.

By following these steps, you will be able to run the script without restrictions. 🚀



