# Connect to Exchange Online
# Connect-ExchangeOnline

# Define the user information
$UserPrincipalName = Read-Host "Enter User Principle Name"
$AliasToRemove = Read-Host "Enter alias to be removed"

# Get the user's mailbox
$Mailbox = Get-Mailbox -Identity $UserPrincipalName

# Remove the alias
$NewEmailAddresses = $Mailbox.EmailAddresses | Where-Object { $_ -ne "smtp:$AliasToRemove" }
Set-Mailbox -Identity $UserPrincipalName -EmailAddresses $NewEmailAddresses
