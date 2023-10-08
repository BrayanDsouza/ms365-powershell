## PowerShell Microsoft 365 Management Scripts
This repository contains PowerShell scripts for managing Microsoft 365 resources such as users, groups, and licenses. These scripts leverage the Microsoft Online Services Sign-in Assistant Module for PowerShell to connect to Microsoft 365 and perform management tasks.

## Prerequisites
Before running the scripts in this repository, you must have the following prerequisites installed on your computer:<br>
* [Microsoft Online Services Sign-in Assistant](https://learn.microsoft.com/en-us/microsoft-365/enterprise/connect-to-microsoft-365-powershell?view=o365-worldwide)

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
<br>Connect to Microsoft 365 using PowerShell by running the following cmdlet:
```
Connect-MsolService
```
<br>This cmdlet will prompt you to enter your Microsoft 365 administrator credentials. Once you have entered your credentials, you will be connected to Office 365.

<br>Once connected, you can start running the scripts in this repository by using the PowerShell . (dot) operator to "dot-source" the script file. For example:
```
.\create-user.ps1
```
This will run the **create-user.ps1** script, which creates a new user in Microsoft 365.
<br>
This repository contains the following scripts:

1. **README.md**: About page.
2. **remove-alias**: Removes the alias for the Emails. 
3. **add-user-to-distribution.ps1**: Adds a user to an Microsoft 365 group.
4. **add-user-to-group.ps1**: Adds a user to an Microsoft 365 group.
5. **create-distribution-list.ps1**: Creates a new distribution list on the tenant.
6. **create-user.ps1**: Creates a new user in Microsoft 365.
7. **list-distribution-list.ps1**: Lists all the Distribution groups on the tenant.
8. **list-groups.ps1**: List groups on the tenant.
9. **list-users.ps1**: Lists the Users on the tenant.
10. **remove-user-from-group.ps1**: Removes a user from an Microsoft 365 group.
11. **remove-license.ps1**: Removes an Microsoft 365 license from a user. I'll try to add comments to the scripts explaining what the script does and how to use it.<br>
12. **update-first-last.ps1**: Updates the first and last name for the users.
13. **assign-license.ps1**: Assigns an Microsoft 365 license to a user.
14. **set-email-forward.ps1**: Set email forwarder.
15. **update-first-and-last.ps1**: Update first and last name of the email user.
