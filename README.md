## PowerShell Office 365 Management Scripts
This repository contains PowerShell scripts for managing Office 365 resources such as users, groups, and licenses. These scripts leverage the Microsoft Online Services Sign-in Assistant Module for PowerShell to connect to Office 365 and perform management tasks.

## Prerequisites
Before running the scripts in this repository, you must have the following prerequisites installed on your computer:

**Microsoft Online Services Sign-in Assistant**
**Azure Active Directory (AD) Module for PowerShell**
<br>You can download and install these modules from the following links:
**Microsoft Online Services Sign-in Assistant Azure Active Directory (AD) Module for PowerShell**

### Getting Started
To get started with using these scripts, follow these steps:
<br>Clone this repository to your local computer:
```
git clone https://github.com/BrayanDsouza/ms365-powershell.git
```
Open PowerShell ISE or any other PowerShell editor that you prefer.
<br>Navigate to the directory where you cloned the repository:
```
cd powershell-office365-scripts
```
<br>Connect to Office 365 using PowerShell by running the following cmdlet:
```
Connect-MsolService
```
This cmdlet will prompt you to enter your Office 365 administrator credentials. Once you have entered your credentials, you will be connected to Office 365.

Once connected, you can start running the scripts in this repository by using the PowerShell . (dot) operator to "dot-source" the script file. For example:
```
.\create-user.ps1
```
This will run the create-user.ps1 script, which creates a new user in Office 365.

This repository contains the following scripts:

1. **create-user.ps1**: Creates a new user in Office 365.
2. **add-user-to-group.ps1**: Adds a user to an Office 365 group.
3. **remove-user-from-group.ps1**: Removes a user from an Office 365 group.
4. **assign-license.ps1**: Assigns an Office 365 license to a user.
5. **remove-license.ps1**: Removes an Office 365 license from a user. I'll try to add comments to the scripts explaining what the script does and how to use it.<br>
Contributing If you have any suggestions or improvements for these scripts, feel free to submit a pull request or open an issue. All contributions are welcome!

